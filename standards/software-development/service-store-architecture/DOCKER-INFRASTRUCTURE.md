# Docker Infrastructure

## Principle

Every runtime, dependency, service, quality tool, and build command must run inside Docker.

The host requires only:

- Docker Desktop;
- Git;
- Visual Studio Code.

## Services

### Required in development

- `app`: PHP 8.2, Composer, Laravel and Bagisto
- `web`: Nginx
- `node`: Node.js 20, Vite and frontend tooling
- `db`: MySQL
- `mailpit`: local email testing

### Available when justified

- `redis`
- queue worker
- scheduler
- Sentry relay or other local observability components

## Files

- `compose.yml`
- `compose.dev.yml`
- `compose.prod.yml`
- `Dockerfile`
- `.dockerignore`
- `.env.example`
- `.devcontainer/devcontainer.json`
- `Makefile`
- `docker/nginx/default.conf`
- `docker/php/php.ini`
- `scripts/install.sh`
- `scripts/start.sh`
- `scripts/test.sh`

## Development

- source mounted as a bind volume;
- Node Vite server inside Docker;
- Mailpit;
- debug tools allowed;
- database volume isolated from production;
- no global PHP, Composer, Node, npm, or MySQL.

## Production

- source copied into immutable images;
- frontend assets built in a Node stage;
- Composer dependencies installed without dev packages;
- no bind mounts;
- debug disabled;
- non-root execution when technically viable;
- secrets injected at runtime;
- database and Redis preferably managed externally.

## Validation

The project must prove:

- clean clone installation;
- development build;
- production build;
- database migration;
- frontend build;
- tests;
- healthchecks;
- no hidden host dependency.

## Patrones recuperados del proyecto del SENA

La plantilla revisada conserva:

- Dev Container conectado al servicio `app`;
- workspace `/var/www/html`;
- `shutdownAction: stopCompose`;
- volúmenes nombrados para `vendor`, `node_modules`, `storage` y `bootstrap/cache`;
- phpMyAdmin como herramienta opcional mediante perfil;
- entrypoint para espera de base de datos e inicialización controlada.

La adaptación elimina secretos inline, usuario root, `network: host`, versiones obsoletas y migraciones o seeders que ignoren errores.
