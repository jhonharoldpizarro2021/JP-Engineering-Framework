#!/bin/sh
set -eu

echo "[install] Installing project dependencies inside Docker..."

if [ -f composer.json ] && command -v composer >/dev/null 2>&1; then
  composer install --no-interaction
fi

if [ -f package-lock.json ] && command -v npm >/dev/null 2>&1; then
  npm ci
elif [ -f pnpm-lock.yaml ] && command -v pnpm >/dev/null 2>&1; then
  pnpm install --frozen-lockfile
elif [ -f yarn.lock ] && command -v yarn >/dev/null 2>&1; then
  yarn install --frozen-lockfile
fi

if [ -f go.mod ] && command -v go >/dev/null 2>&1; then
  go mod download
fi

echo "[install] Completed."
