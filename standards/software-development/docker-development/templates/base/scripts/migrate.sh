#!/bin/sh
set -eu

if [ -n "${MIGRATION_COMMAND:-}" ]; then
  echo "[migrate] Running configured migration command..."
  sh -c "${MIGRATION_COMMAND}"
elif [ -f artisan ] && command -v php >/dev/null 2>&1; then
  echo "[migrate] Laravel detected."
  php artisan migrate --force
else
  echo "[migrate] No migration command configured. Nothing to do."
fi
