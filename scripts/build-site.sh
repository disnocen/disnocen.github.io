#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE="$ROOT/site"
BUILD="$SITE/public"
THEME_SUBMODULE="site/themes/PaperMod"
THEME="$ROOT/$THEME_SUBMODULE"

if ! command -v hugo >/dev/null 2>&1; then
  echo "error: hugo is not installed or not on PATH" >&2
  exit 1
fi

if ! command -v rsync >/dev/null 2>&1; then
  echo "error: rsync is not installed or not on PATH" >&2
  exit 1
fi

if [[ ! -d "$THEME/layouts" ]]; then
  git -C "$ROOT" submodule update --init --recursive -- "$THEME_SUBMODULE"
fi

hugo --source "$SITE" --destination "$BUILD" --minify --cleanDestinationDir

rm -rf \
  "$ROOT/404.html" \
  "$ROOT/about" \
  "$ROOT/archives" \
  "$ROOT/assets" \
  "$ROOT/categories" \
  "$ROOT/index.html" \
  "$ROOT/index.json" \
  "$ROOT/index.xml" \
  "$ROOT/llms.txt" \
  "$ROOT/page" \
  "$ROOT/posts" \
  "$ROOT/robots.txt" \
  "$ROOT/search" \
  "$ROOT/sitemap.xml" \
  "$ROOT/tags"

rsync -a "$BUILD"/ "$ROOT"/
