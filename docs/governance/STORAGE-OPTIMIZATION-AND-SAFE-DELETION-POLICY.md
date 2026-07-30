# Storage Optimization and Safe Deletion Policy

Version: 1.2.0
Decision: CEO APPROVED
Execution model: LOCAL FIRST - MANUAL DELETION ONLY

## Purpose

Optimize storage across the user's local computer, downloads, ChatGPT Library, local backups, Review Candidates, evidence packages and future repository archives without losing unique information, active work, recovery capacity or traceability.

The governing principle is:

**Information safety comes before space recovery. Space is recovered through classification, consolidation, verified backup and controlled manual deletion.**

## Scope

This policy applies to:

- source documents and templates;
- ZIP packages and Review Candidates;
- personal PDF manuals;
- generated reports, renders and extracts;
- screenshots and evidence;
- local repository clones and exported project files;
- files stored in ChatGPT Library;
- manifests and checksum files;
- rejected or historical specialist artifacts.

It does not authorize deletion of operating-system files, application data, repository history, remote branches, cloud files or ChatGPT Library items automatically.

## Separation of state and recommendation

Lifecycle state and storage recommendation are separate fields.

Lifecycle states include:

- WORKING;
- REVIEW CANDIDATE;
- APPROVED;
- INTEGRATED;
- ARCHIVED;
- HOLD;
- OBSOLETE;
- SAFE TO DELETE.

Storage recommendations include:

- KEEP;
- CONSOLIDATE;
- BACK UP;
- ARCHIVE;
- REPLACE AFTER VERIFICATION;
- PROPOSE FOR DELETION;
- DO NOT DELETE.

A file is not SAFE TO DELETE merely because it is old, duplicated by name, rejected, archived or present in Git.

## Storage tiers

### Tier 0 - Active Working Set

Only files required by the current project, Sprint, review or recovery action remain in the active working area.

### Tier 1 - Current Local Baseline

Contains the current approved package, current personal manual, current manifests and the last known-good recovery package.

### Tier 2 - Verified Backup

Contains an independent copy in another authorized local device or storage location. Critical unique information requires at least two verified copies in different locations before deletion is considered.

### Tier 3 - Historical Archive

Contains compressed historical material that still has audit, legal, learning or recovery value but is not part of active work.

### Tier 4 - Reconstructible and Temporary Output

Contains renders, extracted copies, intermediate conversions, caches and generated outputs that can be rebuilt from a verified source. These are the first candidates for cleanup after their final deliverable is verified.

## Canonical copy rule

For each logical artifact, identify one canonical copy and its approved backup. Do not keep uncontrolled copies with ambiguous names such as final, final2, latest-new or copy.

A canonical copy must have:

- a stable name and version;
- lifecycle state;
- project or scope;
- SHA-256 when it is a packaged artifact;
- manifest when it contains multiple files;
- known storage location;
- clear relationship to predecessor and successor versions.

## Duplicate detection

Exact duplicates require matching file size and SHA-256. Similar names, dates or versions do not prove equality.

Exact duplicates may be consolidated after the canonical copy and backup are verified. Near-duplicates require content review and must never be deleted automatically.

## Retention rules

- Keep the current approved baseline and one previous known-good baseline until recovery is tested.
- Keep the active Review Candidate and the last USER TEST PASSED candidate until approval, integration and backup verification are complete.
- Keep manifests and checksum files with the artifact they verify.
- Keep unique evidence while the related project, claim, audit, decision or recovery need remains open.
- Keep rejected specialist artifacts only while they contain unique evidence or lessons not preserved elsewhere. Otherwise move them through the deletion gate.
- Delete temporary renders, duplicate extracts and conversion intermediates only after the final artifact opens correctly and its checksum is recorded when applicable.
- Do not keep several identical ZIP copies in Downloads, Desktop and ChatGPT Library without a documented reason.
- The personal PDF manual keeps the current version locally. A previous major or known-good version may remain as recovery. Older superseded copies become candidates after backup verification.

## ChatGPT Library rule

Chat 0 may inventory and classify files but cannot guarantee automatic deletion from ChatGPT Library. Library deletion is performed manually by the user only after:

- the exact file is identified;
- a verified local copy exists;
- the local copy opens successfully;
- the hash matches when available;
- the file is not the only copy;
- no active workflow depends on it;
- the CEO approves deletion.

## Safe deletion gate

A file reaches SAFE TO DELETE only when all applicable checks pass:

1. The exact file and location are identified.
2. Its project, lifecycle state and recommendation are recorded.
3. The canonical successor or retained copy is identified.
4. Required backup copies exist in authorized locations.
5. The retained copy opens or extracts successfully.
6. SHA-256 matches the recorded value when applicable.
7. The file is not the only copy of unique information.
8. No active Sprint, chat, Pull Request, legal matter, test or recovery workflow depends on it.
9. Required manifests, evidence and recovery instructions remain available.
10. The technical recommendation is documented.
11. The CEO gives explicit deletion approval.
12. The user performs the deletion manually.
13. The deletion is logged with date, location, reason and space reclaimed.
14. A post-deletion recovery spot-check succeeds for critical information.

Failure of one required check results in HOLD or DO NOT DELETE.

## Special categories

### Critical unique information

Requires two verified copies in different authorized locations before deletion of any source copy.

### Reconstructible information

May be deleted after the source, reconstruction instructions and final output are verified.

### Temporary information

May be deleted after the current operation finishes and no evidence or dependency remains.

### Sensitive information or exposed secrets

Do not archive exposed credentials. Recommend immediate manual removal and credential rotation. The assistant does not delete or rotate credentials automatically.

## End-of-materialization storage disposition

Every significant artifact delivery must state:

- canonical artifact;
- local destination;
- backup requirement;
- predecessor status;
- temporary files that may be cleaned;
- files on HOLD;
- deletion candidates;
- whether any deletion was actually performed.

## Non-destructive default

All audits are dry-run by default. No script, prompt, specialist or chat may delete, rename, move or overwrite a file unless the CEO explicitly authorizes the exact operation and the safe deletion gate is satisfied.
