# Review Checklist

## Source of truth

- [ ] The adopted stack matches the uploaded specification.
- [ ] MiPerrito-specific business rules were not copied blindly.
- [ ] Docker remains mandatory.

## Product

- [ ] The product is a professional-services store.
- [ ] The MVP scope is realistic.
- [ ] The first service is selected.
- [ ] The first vertical slice is accepted.

## Architecture

- [ ] Bagisto remains the commerce core.
- [ ] No vendor or core modifications are allowed.
- [ ] One custom package is acceptable.
- [ ] Modular monolith is acceptable.
- [ ] Inertia/Vue spike is required before broad implementation.

## Infrastructure

- [ ] PHP 8.2.
- [ ] Laravel 11.
- [ ] Bagisto 2.x.
- [ ] Vue 3, Inertia, Vite, Tailwind, Pinia.
- [ ] MySQL.
- [ ] Docker development and production separation.
- [ ] Node runs inside Docker.
- [ ] Mailpit is acceptable.
- [ ] Redis is optional.

## Payments and compliance

- [ ] Colombian gateway is selected through an ADR.
- [ ] PSE and cards are mandatory capabilities.
- [ ] Consent controls PostHog and GTM.
- [ ] Legal content for Colombia is required.

## Sprint 6

- [ ] Independent repository.
- [ ] Docker bootstrap.
- [ ] Bagisto installation.
- [ ] Inertia compatibility spike.
- [ ] Quotation-request vertical slice.
- [ ] Tests and CI.

## Recuperación del proyecto del SENA

- [ ] Dev Container sobre Compose es aceptable.
- [ ] Workspace `/var/www/html` es aceptable.
- [ ] Volúmenes nombrados para dependencias y datos locales son aceptables.
- [ ] phpMyAdmin queda como perfil opcional.
- [ ] El entrypoint solo ejecuta migraciones y seeders mediante flags explícitos.
- [ ] No se recuperan secretos, `.dockerrc`, `network: host`, usuario root ni versiones obsoletas.
