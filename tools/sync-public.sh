#!/usr/bin/env bash
# Publish a tagged release of this (private) repository to the public repository.
#
#   tools/sync-public.sh v1.0.0
#
# The public repository contains released states only: no drafting history, and
# none of the removed `papers/` PDFs that remain in this repository's history.
# Each release adds one commit there, so the public history stays a clean list
# of releases.

set -euo pipefail

TAG="${1:?usage: tools/sync-public.sh <tag>}"
PUBLIC_REMOTE="git@github.com:RodMarsh/show-your-working.git"

git rev-parse -q --verify "refs/tags/${TAG}" >/dev/null \
  || { echo "error: no such tag in this repository: ${TAG}" >&2; exit 1; }

WORK="$(mktemp -d)"
trap 'rm -rf "${WORK}"' EXIT

git clone --quiet "${PUBLIC_REMOTE}" "${WORK}/public"
mkdir -p "${WORK}/release"
git archive "${TAG}" | tar -x -C "${WORK}/release"

# Replace the public tree with the released tree, preserving its .git directory.
rsync -a --delete --exclude '.git/' "${WORK}/release/" "${WORK}/public/"

cd "${WORK}/public"
if git diff --quiet && git diff --cached --quiet && [ -z "$(git status --porcelain)" ]; then
  echo "public repository already matches ${TAG}; nothing to do"
  exit 0
fi

git add -A
git commit --quiet -m "Release ${TAG}"
git tag "${TAG}"
git push --quiet origin main
git push --quiet origin "${TAG}"
echo "published ${TAG} to ${PUBLIC_REMOTE}"
