# ADR-0001: Modular Bagisto Service Store

## Status

Proposed

## Context

The project needs Bagisto commerce capabilities and a Vue 3/Inertia storefront while preserving upgradeability and avoiding core modifications.

## Decision

Use:

- Laravel 11;
- Bagisto 2.x;
- modular monolith;
- one custom package at `packages/JPEF/ServiceStore`;
- Inertia/Vue public storefront;
- Bagisto administration;
- MySQL;
- Docker-only development and build;
- Colombia-first channel with future channel readiness.

## Validation

Sprint 6 must prove:

- Bagisto installation;
- Inertia storefront route;
- Bagisto admin isolation;
- catalog access;
- quotation-request persistence;
- production build.

## Consequences

### Positive

- Fast delivery.
- Upgradeable core.
- Clear custom-code boundary.
- Real commerce features.

### Negative

- Inertia and Bagisto compatibility requires an explicit spike.
- Custom service workflows require package development.
- Payment integration remains a dedicated decision.
