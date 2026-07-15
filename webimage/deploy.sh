#!/usr/bin/env bash
#
# Publish the built Lama sandbox (webimage/dist) to GitHub Pages.
#
# The `dist` output is gitignored on the source branches, so the `gh-pages`
# branch is the only place these artifacts live. This script pushes the current
# contents of dist there via a throwaway detached worktree, leaving your working
# tree and current branch untouched.
#
# Run `build.sh` first to (re)generate dist. One-time setup: enable Pages at
#   Settings -> Pages -> Deploy from a branch -> gh-pages / (root)
# After that the site is live at https://enotvtapke.github.io/lama-truffle/
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
DIST="$HERE/dist"
BRANCH="gh-pages"
WORK="$(mktemp -d)"

[ -f "$DIST/index.html" ] || { echo "No dist found at $DIST — run build.sh first" >&2; exit 1; }

cleanup() { git worktree remove --force "$WORK" 2>/dev/null || true; }
trap cleanup EXIT

# Attach a detached worktree, then base a fresh commit on the existing gh-pages
# branch (or an orphan branch if it does not exist yet).
git worktree add --detach "$WORK" HEAD >/dev/null
(
  cd "$WORK"
  if git show-ref --verify --quiet "refs/remotes/origin/$BRANCH"; then
    git checkout -B "$BRANCH" "origin/$BRANCH" >/dev/null
  else
    git checkout --orphan "$BRANCH" >/dev/null
  fi
  git rm -rf --quiet . 2>/dev/null || true
  cp -r "$DIST/." .
  touch .nojekyll
  git add -A
  if git diff --cached --quiet; then
    echo "dist is unchanged — nothing to deploy."
  else
    git commit --quiet -m "Deploy webimage Lama sandbox"
    git push origin "$BRANCH"
    echo "Deployed. Live at https://enotvtapke.github.io/lama-truffle/"
  fi
)
