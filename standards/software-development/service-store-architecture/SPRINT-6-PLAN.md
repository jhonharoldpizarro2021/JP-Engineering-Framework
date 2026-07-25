# Sprint 6 - Service Store Bootstrap and Architecture Spike

## Objective

Create the independent application repository, install Bagisto inside Docker, prove the Inertia/Vue integration strategy, and deliver the first thin commercial flow.

## Proposed deliverables

1. Final product and repository name.
2. Independent GitHub repository.
3. Vision and MVP documents.
4. ADR-0001 architecture.
5. Docker development and production configuration.
6. Bagisto installation.
7. Inertia/Vue compatibility spike.
8. Custom `JPEF/ServiceStore` package skeleton.
9. One service seeded in COP.
10. Public service detail page.
11. Initial intake form.
12. Feature tests.
13. CI baseline.
14. Evidence and Sprint act.

## First vertical slice

Candidate:

A customer can open a service page, complete a short requirements form, and submit a quotation request that appears in the administration interface.

## Why this slice

It validates:

- Bagisto catalog;
- Inertia and Vue storefront;
- custom package;
- form validation;
- persistence;
- customer data;
- admin extension;
- tests;
- Docker;
- CI.

It avoids blocking on the final payment-provider selection.

## Sprint exit criteria

- Clean clone starts through Docker.
- Bagisto admin works.
- Inertia storefront route works.
- One service is visible.
- Quotation request is stored.
- Admin can review it.
- Tests pass.
- Production image builds.
