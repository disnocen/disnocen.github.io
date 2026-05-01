#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE="$ROOT/site"
BUILD="$SITE/public"

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
