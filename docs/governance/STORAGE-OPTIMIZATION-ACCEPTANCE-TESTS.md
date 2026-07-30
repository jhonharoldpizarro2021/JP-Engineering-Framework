# Storage Optimization Acceptance Tests

## ST-01 Exact duplicate detection

Given two files with identical size and SHA-256, the audit reports one duplicate group and performs no deletion.

## ST-02 Near-duplicate protection

Given files with similar names but different hashes, the system does not classify them as exact duplicates.

## ST-03 Unique source protection

A file without a verified retained copy remains HOLD and cannot become SAFE TO DELETE.

## ST-04 Review Candidate protection

An active or USER TEST PASSED Review Candidate remains DO NOT DELETE while approval, integration or backup verification is pending.

## ST-05 Temporary output cleanup

A reconstructible render may become a deletion candidate only after the final artifact opens correctly.

## ST-06 ChatGPT Library control

The system generates a manual deletion recommendation only; it never claims automatic Library deletion.

## ST-07 CEO authorization

No file reaches SAFE TO DELETE without explicit approval for the exact file.

## ST-08 Recovery verification

Critical information requires a successful backup open or extraction test and matching checksum before source deletion is considered.
