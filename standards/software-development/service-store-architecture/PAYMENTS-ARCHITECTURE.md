# Payments Architecture

## Required capability

The Colombia storefront must support a payment gateway with:

- cards;
- PSE;
- and, when supported by the selected provider, Nequi or Daviplata.

## Provider decision

The provider is not selected by this document.

A dedicated ADR must compare at least:

- supported payment methods;
- fees;
- settlement;
- refunds;
- webhook quality;
- sandbox;
- documentation;
- fraud controls;
- Bagisto or Laravel integration effort;
- legal and operational requirements.

## International payments

Stripe and PayPal remain candidate adapters for international or alternative payments.

They are not automatically enabled in the first release.

## Architecture

Define a project payment contract around:

- payment creation;
- redirect or client token;
- status lookup;
- webhook verification;
- refund;
- transaction metadata.

The contract must not hide provider-specific capabilities that are operationally important.

## Security

- Verify webhook signatures.
- Store provider references, not sensitive card data.
- Use idempotency for payment creation and webhooks.
- Never trust the browser payment result as final.
- Reconcile order state from verified server-side events.
- Log safely without exposing credentials or personal financial data.
