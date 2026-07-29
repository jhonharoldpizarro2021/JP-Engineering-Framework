# File Lifecycle Policy

**Version:** 1.0.0  
**Status:** Review Candidate  
**Date:** 2026-07-29

## Operating model

The JP Engineering Framework continues using:

1. Chat 0 as CEO and Brain Hub.
2. Chat 1 as Project Director and Software Architect.
3. Specialized chats.
4. Progressive handoffs.
5. Physical and versioned sources of truth.
6. Downloadable Review Candidates.
7. User testing and approval.

ChatGPT Projects are not part of the approved workflow.

## Lifecycle states

Every governed artifact must have exactly one state:

- WORKING
- REVIEW CANDIDATE
- APPROVED
- INTEGRATED
- ARCHIVED
- SAFE TO DELETE
- HOLD
- OBSOLETE

## Technical recommendations

Recommendations must be recorded separately from lifecycle states:

- CONSERVAR
- CONSOLIDAR
- RESPALDAR
- ARCHIVAR
- REVISAR
- PROPONER PARA ELIMINACIÓN
- NO ELIMINAR

A recommendation does not automatically change the lifecycle state.

## Safe deletion gate

An artifact may only become SAFE TO DELETE when:

1. A newer official or equivalent version exists.
2. An authorized backup exists.
3. The backup can be opened and recovered.
4. Integrity has been verified.
5. A manifest or registry identifies the content.
6. It is not the only copy.
7. It is no longer required by an active workflow.
8. Chat 1 recommends deletion.
9. Chat 0, as CEO, approves deletion.
10. The manual deletion is recorded.

Uploading an artifact to GitHub does not automatically authorize deletion from the ChatGPT Library.

## Responsibilities

### Chat 0 — CEO and Brain Hub

- Approves the policy.
- Approves exceptions.
- Approves deletion batches.
- Retains final decision authority.

### Chat 1 — Project Director and Software Architect

- Maintains the master inventory.
- Identifies official sources.
- Verifies backups and integrity.
- Issues technical recommendations.
- Prepares deletion batches.
- Records confirmed deletions.

### Specialized chats

- List files created and replaced.
- Generate manifests and checksums.
- Identify temporary and active artifacts.
- Never declare an artifact safe to delete without evidence.

## Security

Never delete:

- the only available copy;
- active Review Candidates;
- current official sources;
- legal, medical or evidentiary material without secure backup;
- artifacts whose integrity has not been verified;
- files merely because they appear duplicated.
