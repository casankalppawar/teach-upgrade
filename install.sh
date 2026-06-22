#!/usr/bin/env bash
# Install the /teach skill into Claude Code's global skills directory.
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/teach"
DST="$HOME/.claude/skills/teach"

if [ ! -d "$SRC" ]; then
  echo "error: teach/ not found next to this script ($SRC)" >&2
  exit 1
fi

echo "Removing any existing install at $DST ..."
rm -rf "$DST"

echo "Copying $SRC -> $DST ..."
mkdir -p "$HOME/.claude/skills"
cp -R "$SRC" "$DST"

echo "Done. Restart Claude Code, then run:  /teach <topic>"
