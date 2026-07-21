#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

./build.sh

# Port 0 lets the OS pick a free one and http.server prints it; pass a port
# explicitly if you want a stable URL to bookmark.
python3 -m http.server "${1:-0}" -d dist
