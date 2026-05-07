#!/usr/bin/env bash
set -euo pipefail

# Sync latest upstream changes into current branch.
# Expected remotes:
# origin   -> however-yir/howeverandroid-architecture-lab
# upstream -> android/architecture-samples

if ! git remote get-url upstream >/dev/null 2>&1; then
  git remote add upstream https://github.com/android/architecture-samples.git
fi

git fetch upstream main
git merge --no-ff upstream/main -m "chore: sync upstream main"
