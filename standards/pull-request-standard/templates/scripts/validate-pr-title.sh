#!/usr/bin/env sh
set -eu

title="${1:-}"
pattern='^(feat|fix|docs|refactor|test|build|ci|chore|perf|style|revert|security)\([a-z0-9]+(?:-[a-z0-9]+)*\): [a-z].{0,71}$'

if [ -z "${title}" ]; then
  echo "Pull Request title is required." >&2
  exit 1
fi

if [ "${#title}" -gt 72 ]; then
  echo "Pull Request title exceeds 72 characters." >&2
  exit 1
fi

if printf '%s' "${title}" | grep -q '\.$'; then
  echo "Pull Request title must not end with a period." >&2
  exit 1
fi

if ! printf '%s' "${title}" | grep -Eq "${pattern}"; then
  echo "Invalid Pull Request title: ${title}" >&2
  exit 1
fi

echo "Valid Pull Request title: ${title}"
