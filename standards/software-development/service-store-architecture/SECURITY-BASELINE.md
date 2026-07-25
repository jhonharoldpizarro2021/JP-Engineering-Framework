# Security Baseline

## Mandatory

- `.env` and secrets never versioned.
- `APP_DEBUG=false` in production.
- Server-side validation.
- Policies and Gates for authorization.
- Mass-assignment protection.
- Parameterized database access.
- Webhook signature validation.
- Payment idempotency.
- File allowlists and size limits.
- Secure cookies and HTTPS in production.
- No stack traces exposed to users.
- Dependency audit.
- Consent-controlled tracking.
- Data minimization.
- Personal information excluded from logs when not necessary.

## Service intake attachments

When attachments are supported:

- validate MIME type and extension;
- limit size;
- rename safely;
- store outside public paths when appropriate;
- authorize every download;
- evaluate malware scanning;
- define retention and deletion policies.

## Admin

- strong authentication;
- least privilege;
- role-based permissions;
- audit critical administrative changes;
- protect production access.
