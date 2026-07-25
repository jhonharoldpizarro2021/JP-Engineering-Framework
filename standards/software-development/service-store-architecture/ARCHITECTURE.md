# Architecture

## Style

Modular monolith built on Laravel and Bagisto.

## Core rule

Bagisto remains the commerce core.

The project must not modify:

- `vendor/`;
- Bagisto framework core;
- published package files that should instead be extended;
- upstream migrations without an approved migration strategy.

## Storefront

The customer-facing storefront will use Inertia.js and Vue 3.

Bagisto administration remains the administrative commerce interface unless a specific extension requires a custom admin screen.

## Extension strategy

Custom behavior must live in a project package:

`packages/JPEF/ServiceStore/`

The package may contain:

- service product behavior;
- intake forms;
- service-order workflow;
- payment adapters;
- consent management;
- waiting-list management;
- customer portal extensions;
- admin extensions.

The package starts as one bounded package to avoid premature fragmentation.

It may be split later through ADRs when module boundaries become stable.

## Proposed layers inside the package

- `Domain/`
- `Application/`
- `Infrastructure/`
- `Http/`
- `Providers/`
- `Resources/`
- `Database/`

Laravel and Bagisto conventions take priority when a custom layer would add no real value.

## Key boundaries

### Commerce core

Bagisto owns:

- channels;
- currencies;
- catalog;
- product pricing;
- cart;
- checkout;
- customers;
- orders;
- invoices;
- refunds where supported.

### Service Store package

The custom package owns:

- service-specific metadata;
- requirements forms;
- responses to requirements;
- service-delivery states;
- custom quotation requests;
- customer-service workspace;
- consent records;
- local payment adapters not provided by Bagisto;
- service availability and waiting lists.

## Transaction rule

Operations that create an order and service-specific records must be transactionally consistent.

## Integration rule

External services must be accessed through adapters and configuration, not directly from controllers or Vue components.
