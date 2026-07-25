# Testing Strategy

## Backend

- Feature tests for storefront, cart, checkout, intake, orders, authorization, and payments.
- Unit tests for isolated domain rules.
- Integration tests for payment and observability adapters.
- Regression test for each corrected defect.

## Frontend

- component tests for critical Vue components;
- end-to-end tests for primary commercial flows;
- mobile, tablet, and desktop viewport coverage.

## Critical MVP flows

1. Browse service.
2. Add directly purchasable service to cart.
3. Complete intake requirements.
4. Accept legal consent.
5. Complete sandbox payment.
6. Verify webhook.
7. Create service-order record.
8. View order in customer portal.
9. Update service status in admin.
10. Receive transactional email.

## Payment tests

- successful payment;
- rejected payment;
- duplicate webhook;
- invalid signature;
- timeout;
- refund;
- late webhook;
- idempotent processing.

## Commands

All testing commands must run through Docker and be exposed through the Makefile.
