#!/usr/bin/env sh
set -eu

if [ ! -f .env ]; then
  cp .env.example .env
fi

composer install --no-interaction --prefer-dist

if [ -f artisan ]; then
  php artisan key:generate --force
  php artisan migrate --force
  php artisan storage:link || true
fi

echo "Backend dependencies and database initialization completed."
