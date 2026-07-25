# Bagisto Extension Strategy

## Rule

Extend Bagisto through packages, service providers, events, repositories, contracts, themes, and documented extension points.

Never solve a customization by editing vendor code.

## Product representation

Initial recommendation:

- represent a purchasable service as a Bagisto product;
- store service-specific metadata in custom tables linked to the Bagisto product;
- use attributes only for simple catalog-filtering information;
- keep intake-form definitions outside the standard product attribute model when they require conditional or structured questions.

## Service price modes

Candidate modes:

- fixed price;
- starting price;
- quotation required.

A quotation-required service must not create a paid order until the final commercial terms are accepted.

## Checkout adaptation

The checkout must determine whether the cart contains:

- directly purchasable services;
- quotation-required services;
- incompatible combinations.

The exact mixed-cart policy must be approved.

## Administration

Use Bagisto admin screens where existing behavior is sufficient.

Add custom admin screens only for:

- intake form builders;
- requirement responses;
- custom quotation management;
- service-delivery workflow;
- waiting lists;
- specialized reports.

## Compatibility

Every Bagisto extension must include:

- automated tests;
- installation and migration instructions;
- upgrade notes;
- documented events or overridden behavior;
- a compatibility review before Bagisto upgrades.
