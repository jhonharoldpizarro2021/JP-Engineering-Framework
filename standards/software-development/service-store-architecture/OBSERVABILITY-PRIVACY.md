# Observability, Analytics, and Privacy

## Sentry

Sentry is included in the MVP for:

- backend exceptions;
- frontend exceptions;
- release identification;
- environment separation.

Sensitive data must be filtered before transmission.

## PostHog

PostHog may capture product analytics only after the user grants the required consent.

## Google Tag Manager

GTM may load marketing and analytics tags only after consent.

No tag may bypass the project's consent state.

## Consent architecture

The system must record:

- legal-document version;
- consent category;
- accepted or rejected state;
- timestamp;
- session or customer reference;
- withdrawal or update.

## Categories

Candidate categories:

- necessary;
- preferences;
- analytics;
- marketing.

Necessary technologies must be documented and minimized.

## Rule

Tracking integrations must be evaluated for:

- consent;
- personal data;
- build size;
- runtime performance;
- environment separation;
- duplicate events;
- data retention.
