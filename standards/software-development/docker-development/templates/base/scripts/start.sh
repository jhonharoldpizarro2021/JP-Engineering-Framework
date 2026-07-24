#!/bin/sh
set -eu

if [ -z "${APP_START_COMMAND:-}" ] || [ "${APP_START_COMMAND}" = "xxxxxxxx" ]; then
  echo "APP_START_COMMAND must be configured for production." >&2
  exit 1
fi

exec sh -c "${APP_START_COMMAND}"
