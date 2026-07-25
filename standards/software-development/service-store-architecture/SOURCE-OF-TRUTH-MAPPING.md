# Source of Truth Mapping

## Source adopted

The uploaded project specification is treated as the infrastructure and stack reference for this architecture.

## Directly adopted

### Frontend

- Vue 3
- Inertia.js
- Vite
- Tailwind CSS
- Pinia

### Backend

- PHP 8.2
- Laravel 11
- Bagisto 2.x
- MySQL

### Payments

- Stripe
- PayPal
- A Colombian gateway capable of supporting cards and local methods such as PSE, Nequi, or Daviplata

### Observability and analytics

- Sentry
- PostHog
- Google Tag Manager

### Architectural principles

- Multi-channel readiness
- Do not modify framework or vendor core
- Preserve documented architectural decisions
- Explicit consent before analytics and advertising tracking
- Full QA for mobile, tablet, and desktop
- Localization for Colombia

## Adapted to the new product

The source project is a pet-commerce platform. This project sells professional services.

Therefore:

- physical shipping is not part of the initial MVP;
- service delivery replaces product fulfillment;
- service intake forms replace pet-device onboarding;
- availability or waiting-list flows replace out-of-stock chip flows;
- Colombia is the initial market;
- additional channels and currencies remain architecturally possible;
- the mobile API, Laravel Passport, and FCM are deferred until a mobile application or external API becomes a real requirement.

## Not copied blindly

The following source-specific decisions are not imported without a new ADR:

- pet monitoring;
- lost-and-found domain architecture;
- global pet-customer identity;
- chip inventory workflows;
- Spain-specific storefront behavior;
- existing proprietary CSP rules.

Equivalent decisions for the service store must be documented before implementation.

## Segunda fuente de verdad: proyecto del SENA

El archivo `proyecto_tps.zip` se incorpora como fuente secundaria y limitada a patrones de infraestructura Docker.

Se recuperan selectivamente:

- Dev Container conectado al servicio `app`;
- workspace `/var/www/html`;
- cierre mediante `stopCompose`;
- servicios de aplicación, base de datos y administración opcional;
- volúmenes nombrados para dependencias y datos;
- automatización de instalación e inicialización.

No se recuperan secretos, `.env`, `.dockerrc`, identificadores locales, código funcional, Laravel 8, PHP 8.0, Node 18, Apache monolítico, `network: host`, migraciones tolerantes a fallos ni seeders automáticos.

La adaptación completa está documentada en `SENA-DOCKER-RECOVERY.md`.
