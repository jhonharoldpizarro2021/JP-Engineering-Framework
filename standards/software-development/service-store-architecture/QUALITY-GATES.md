# Quality Gates

## Gate 1 - Standards

- Branch name valid.
- Commit message valid.
- Pull Request complete.
- Code Review approved.

## Gate 2 - Backend

- Laravel Pint passes.
- Static analysis passes at the approved level.
- Feature tests pass.
- Unit tests pass when present.

## Gate 3 - Frontend

- ESLint passes.
- Prettier check passes.
- Vite build succeeds.
- Critical component and E2E tests pass.

## Gate 4 - Docker

- Development build succeeds.
- Production build succeeds.
- Healthchecks pass.
- Clean installation succeeds.

## Gate 5 - Database

- Migrations run from zero.
- Seed data contains no real personal data.
- Rollback documented for risky changes.

## Gate 6 - Security

- No secrets.
- Authorization reviewed.
- Inputs validated.
- Dependencies reviewed.
- Payment webhooks verified.
- Production debug disabled.

## Gate 7 - UX and compliance

- Mobile, tablet, and desktop reviewed.
- Legal consent is explicit.
- No preselected consent checkbox.
- Tracking respects consent.
- Accessibility basics validated.

## Gate 8 - Evidence

- Commands recorded.
- Screenshots or video where useful.
- Risks documented.
- Pull Request linked.
