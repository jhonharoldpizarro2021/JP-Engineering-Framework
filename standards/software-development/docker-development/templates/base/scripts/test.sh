#!/bin/sh
set -eu

echo "[test] Running project tests inside Docker..."

if [ -f artisan ] && command -v php >/dev/null 2>&1; then
  php artisan test
elif [ -x vendor/bin/phpunit ]; then
  vendor/bin/phpunit
elif [ -f package.json ] && command -v npm >/dev/null 2>&1; then
  npm test
elif [ -f go.mod ] && command -v go >/dev/null 2>&1; then
  go test ./...
else
  echo "[test] No supported test command detected." >&2
  exit 1
fi
