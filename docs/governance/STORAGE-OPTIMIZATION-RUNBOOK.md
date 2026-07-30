# Storage Optimization Runbook

## Trigger phrases

Natural phrases include:

- "Optimiza el espacio."
- "Revisa que archivos puedo borrar."
- "Consolida los duplicados."
- "Prepara candidatos para eliminacion."
- "No borres nada todavia."
- "Solo haz el inventario."

These phrases do not authorize deletion unless the CEO explicitly approves the exact files after review.

## Procedure

1. Freeze destructive actions.
2. Define the directory, Library scope or project being reviewed.
3. Generate a storage inventory.
4. Calculate SHA-256 for candidate files.
5. Group exact duplicates.
6. Identify the canonical copy for every group.
7. Classify critical, reconstructible, temporary and historical information.
8. Verify backup and recovery requirements.
9. Produce a deletion-candidate register.
10. Present reclaimed-space estimates.
11. Obtain explicit CEO approval for exact files.
12. The user deletes manually.
13. Record the result and perform recovery checks.

## Priority order for reclaiming space

1. Temporary renders and conversions.
2. Exact duplicate extracts and unpacked trees.
3. Duplicate downloaded ZIPs whose canonical copy and backup are verified.
4. Superseded personal manuals and reports.
5. Rejected or obsolete artifacts after evidence review.
6. Historical archives only when their retention value has expired.

Critical unique sources, active Review Candidates and unfinished Git work are never first-line cleanup targets.
