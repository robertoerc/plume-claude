#!/bin/sh
# Rebuilds the two standalone server binaries from plume's connector source
# (plume-ios/connector/server/index.js) with bun. Usage: scripts/build.sh [path/to/connector]
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
connector=${1:-"$HOME/Developer/plume-ios/connector"}
command -v bun >/dev/null || { echo "bun is missing: brew install oven-sh/bun/bun" >&2; exit 1; }
(cd "$connector" && npm ci --omit=dev >/dev/null)
for t in arm64 x64; do
  bun build --compile --minify --target="bun-darwin-$t" "$connector/server/index.js" \
    --outfile "$here/plugins/plume/bin/plume-mcp-darwin-$t"
done
chmod +x "$here/plugins/plume/bin/"*
