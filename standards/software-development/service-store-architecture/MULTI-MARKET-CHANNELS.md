# Multi-market and Channel Strategy

## Initial channel

- Code: `co`
- Market: Colombia
- Language: Spanish - Colombia
- Currency: COP
- Taxes and legal content: Colombia
- Support: Colombian contact channels

## Future-ready channel

The architecture must allow an international channel later without hard-coding Colombian behavior into shared domain logic.

Potential future differences:

- currency;
- tax configuration;
- legal documents;
- payment gateways;
- copy;
- analytics segmentation;
- service availability;
- pricing;
- support hours.

## Rule

Use Bagisto channels for market-level commerce configuration.

Do not duplicate customer identities or service definitions unless a documented business requirement requires it.

## Pending decision

Choose whether international clients initially:

- use the Colombia channel with an international payment method; or
- wait for a dedicated international channel.
