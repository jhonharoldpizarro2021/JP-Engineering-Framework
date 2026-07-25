# Technology Stack

## Required

### Backend

- PHP 8.2
- Laravel 11
- Bagisto 2.x
- Composer
- MySQL

### Frontend

- Vue 3
- Inertia.js
- Vite
- Tailwind CSS
- Pinia

### Infrastructure

- Docker
- Docker Compose
- Dev Containers
- Nginx
- PHP-FPM
- Node.js 20 container
- Mailpit for local email
- Redis available but disabled unless justified

### Quality

- Laravel Pint
- PHPStan or Larastan
- PHPUnit through `php artisan test`
- ESLint
- Prettier
- Commitlint
- Branch-name validation
- GitHub Actions or equivalent CI

### Observability

- Sentry in the MVP
- PostHog behind explicit consent
- Google Tag Manager behind explicit consent

## Deferred until justified

- Laravel Passport
- FCM
- Queue workers backed by Redis
- Horizon
- Elasticsearch or OpenSearch
- Kubernetes
- Microservices
