#!/usr/bin/env sh
set -eu

wait_for_database() {
  if [ "${DB_CONNECTION:-}" != "mysql" ]; then
    return 0
  fi

  echo "[entrypoint] Waiting for MySQL at ${DB_HOST:-db}:${DB_PORT:-3306}..."

  attempts=0
  until mysqladmin ping       --host="${DB_HOST:-db}"       --port="${DB_PORT:-3306}"       --user="${DB_USERNAME:-root}"       --password="${DB_PASSWORD:-}"       --silent; do
    attempts=$((attempts + 1))

    if [ "${attempts}" -ge 30 ]; then
      echo "[entrypoint] MySQL did not become ready." >&2
      exit 1
    fi

    sleep 2
  done
}

prepare_directories() {
  mkdir -p     storage/framework/cache     storage/framework/sessions     storage/framework/views     storage/logs     bootstrap/cache
}

install_dependencies_if_requested() {
  if [ "${INSTALL_DEPENDENCIES:-false}" = "true" ] && [ ! -f vendor/autoload.php ]; then
    echo "[entrypoint] Installing Composer dependencies..."
    composer install --no-interaction --prefer-dist
  fi
}

run_migrations_if_requested() {
  if [ "${RUN_MIGRATIONS:-false}" = "true" ]; then
    echo "[entrypoint] Running migrations..."
    php artisan migrate --force
  fi
}

run_seeders_if_requested() {
  if [ "${RUN_SEEDERS:-false}" = "true" ]; then
    echo "[entrypoint] Running seeders..."
    php artisan db:seed --force
  fi
}

prepare_directories
wait_for_database
install_dependencies_if_requested
run_migrations_if_requested
run_seeders_if_requested

exec "$@"
