# Local-First Backup and Deferred Git Integration

## Decision

Version 1.1.0 is materialized as a local backup package. It is not integrated into the JP Engineering Framework repository now, so the WordPress MVP pilot is not delayed.

## Integration trigger

After the WordPress MVP reaches USER TEST PASSED and CEO APPROVED:

1. review this package and its SHA-256;
2. create a separate authorized branch;
3. integrate the governance and templates;
4. run acceptance tests;
5. create a separate commit and Pull Request;
6. merge only after CEO approval.

## Personal PDF

The personal PDF manual is excluded from the repository package and remains local-only.

## No false integration

A local ZIP is MATERIALIZED, not INTEGRATED. Git state remains unchanged until a future manual implementation produces evidence.
