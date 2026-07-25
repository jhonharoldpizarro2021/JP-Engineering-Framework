# Frontend Architecture

## Stack

- Vue 3
- Inertia.js
- Vite
- Tailwind CSS
- Pinia

## Scope

Inertia and Vue power the public storefront and customer portal.

Bagisto admin remains separate unless a custom screen is required.

## Proposed organization

- `resources/js/app.js`
- `resources/js/Pages/`
- `resources/js/Layouts/`
- `resources/js/Components/`
- `resources/js/Stores/`
- `resources/js/Composables/`
- `resources/js/Services/`
- `resources/js/Types/`

## Pinia

Pinia may manage:

- cart user experience;
- checkout state;
- intake-form drafts;
- consent preferences;
- interface-only state.

The server remains the source of truth for:

- prices;
- discounts;
- taxes;
- authorization;
- orders;
- payment status;
- service status.

## Rules

- Never trust client-calculated prices.
- Never perform authorization only in Vue.
- Avoid duplicating server business rules in Pinia.
- Use Inertia shared data only for information required across pages.
- Keep page payloads small.
- Use lazy or partial reloads when appropriate.
- Evaluate build impact before adding tracking libraries.

## Compatibility spike

Sprint 6 must include a technical spike proving that Inertia can coexist with Bagisto 2.x without modifying core files.

The spike must validate:

- storefront routing;
- authentication;
- cart access;
- checkout access;
- session behavior;
- Vite build;
- Bagisto admin isolation.
