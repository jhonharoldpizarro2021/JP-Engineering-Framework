#!/usr/bin/env sh
set -eu

branch_name="${1:-$(git branch --show-current)}"
max_length="${JPEF_BRANCH_MAX_LENGTH:-80}"
pattern='^(main|release/v[0-9]+\.[0-9]+\.[0-9]+|(?:feature|fix|hotfix|docs|refactor|test|build|ci|chore|security)/(?:[0-9]+-)?[a-z0-9]+(?:-[a-z0-9]+)*)$'

if [ -z "${branch_name}" ]; then
  echo "Unable to determine the current branch." >&2
  exit 1
fi

if [ "${#branch_name}" -gt "${max_length}" ]; then
  echo "Invalid branch name: exceeds ${max_length} characters." >&2
  exit 1
fi

if ! printf '%s' "${branch_name}" | grep -Eq "${pattern}"; then
  echo "Invalid branch name: ${branch_name}" >&2
  echo "Expected: <type>/<description>, <type>/<issue-id>-<description>, release/vX.Y.Z, or an approved protected branch." >&2
  exit 1
fi

echo "Valid branch name: ${branch_name}"
