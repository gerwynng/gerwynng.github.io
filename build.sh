#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

rm -rf dist && mkdir dist
pandoc resume.md --from markdown-native_divs --template template.html \
  --metadata title="Gerwyn Ng — Resume" -o dist/index.html
cp -R styles assets dist/
