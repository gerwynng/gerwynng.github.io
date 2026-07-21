#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

rm -rf dist && mkdir dist
pandoc resume.md --from markdown-native_divs --section-divs --template template.html \
  --metadata title="Gerwyn Ng" \
  --metadata description="Resume of Gerwyn Ng — LLM applications, agents & evaluation, search systems." \
  --metadata date="$(date '+%B %Y')" \
  -o dist/index.html
cp -R styles assets dist/
