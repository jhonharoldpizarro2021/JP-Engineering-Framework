#!/bin/sh
set -eu

echo "[init] Preparing project directories and initialization..."

mkdir -p tmp logs

if [ -x ./scripts/migrate.sh ]; then
  ./scripts/migrate.sh
else
  sh ./scripts/migrate.sh
fi

echo "[init] Completed."
