#!/bin/sh
# Wraps the artifact page into a standalone document for GitHub Pages (docs/index.html).
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html><html lang="ja"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '<style>[hidden]{display:none!important}img{max-width:100%%}</style></head><body>\n'
  cat shogi.html
  printf '\n</body></html>\n'
} > docs/index.html
touch docs/.nojekyll
echo "built docs/index.html"
