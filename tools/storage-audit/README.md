# Non-Destructive Storage Audit Tool

This Python tool inventories a directory and reports exact duplicates using file size and SHA-256.

It never deletes, renames, moves or overwrites scanned files.

Usage:

`python storage-audit.py /path/to/scan --output-dir /path/to/report`

Review the report, select canonical copies, verify backups and complete the Safe Deletion Gate before any manual deletion.
