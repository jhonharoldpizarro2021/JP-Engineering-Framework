#!/usr/bin/env python3
"""Non-destructive storage inventory and exact-duplicate audit.

This tool never deletes, renames, moves or overwrites scanned files.
It writes reports only into the requested output directory.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from collections import defaultdict
from pathlib import Path

CHUNK = 1024 * 1024


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(CHUNK), b''):
            h.update(chunk)
    return h.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('scan_root', type=Path)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--include-hidden', action='store_true')
    args = parser.parse_args()

    scan_root = args.scan_root.expanduser().resolve()
    output_dir = args.output_dir.expanduser().resolve()
    if not scan_root.is_dir():
        parser.error(f'Not a directory: {scan_root}')
    output_dir.mkdir(parents=True, exist_ok=True)

    files = []
    errors = []
    for path in sorted(scan_root.rglob('*')):
        if not path.is_file():
            continue
        rel = path.relative_to(scan_root)
        if not args.include_hidden and any(part.startswith('.') for part in rel.parts):
            continue
        try:
            size = path.stat().st_size
            digest = sha256_file(path)
            files.append({'path': rel.as_posix(), 'bytes': size, 'sha256': digest})
        except (OSError, PermissionError) as exc:
            errors.append({'path': rel.as_posix(), 'error': str(exc)})

    groups = defaultdict(list)
    for item in files:
        groups[(item['bytes'], item['sha256'])].append(item['path'])
    duplicates = [
        {'bytes_each': size, 'sha256': digest, 'files': paths, 'potential_reclaim_bytes': size * (len(paths) - 1)}
        for (size, digest), paths in groups.items() if len(paths) > 1
    ]
    duplicates.sort(key=lambda item: item['potential_reclaim_bytes'], reverse=True)

    inventory = {
        'scan_root': str(scan_root),
        'file_count': len(files),
        'total_bytes': sum(item['bytes'] for item in files),
        'exact_duplicate_groups': len(duplicates),
        'potential_reclaim_bytes': sum(item['potential_reclaim_bytes'] for item in duplicates),
        'files': files,
        'errors': errors,
        'deletion_performed': False,
    }
    (output_dir / 'storage-inventory.json').write_text(json.dumps(inventory, indent=2) + '\n', encoding='utf-8')

    with (output_dir / 'exact-duplicates.csv').open('w', encoding='utf-8', newline='') as stream:
        writer = csv.writer(stream)
        writer.writerow(['group', 'bytes_each', 'sha256', 'potential_reclaim_bytes', 'file'])
        for index, group in enumerate(duplicates, 1):
            for file_path in group['files']:
                writer.writerow([index, group['bytes_each'], group['sha256'], group['potential_reclaim_bytes'], file_path])

    summary = [
        '# Storage Audit Summary', '',
        f'- Scan root: `{scan_root}`',
        f'- Files scanned: `{len(files)}`',
        f'- Total bytes: `{inventory["total_bytes"]}`',
        f'- Exact duplicate groups: `{len(duplicates)}`',
        f'- Potential reclaim bytes: `{inventory["potential_reclaim_bytes"]}`',
        f'- Read errors: `{len(errors)}`',
        '- Deletion performed: `NO`', '',
        'Exact duplicates are candidates for review, not automatic deletion. Select a canonical copy, verify backup and complete the safe deletion gate first.',
    ]
    (output_dir / 'storage-audit-summary.md').write_text('\n'.join(summary) + '\n', encoding='utf-8')
    print(output_dir / 'storage-audit-summary.md')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
