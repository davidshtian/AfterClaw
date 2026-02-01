#!/bin/bash
# Install AfterClaw skill locally
# Usage: curl -s https://raw.githubusercontent.com/davidshtian/AfterClaw/main/scripts/install.sh | bash

set -e

REPO="https://raw.githubusercontent.com/davidshtian/AfterClaw/main"
DEST="${1:-$HOME/.openclaw/skills/afterclaw}"

echo "🍵 Installing AfterClaw to $DEST ..."

mkdir -p "$DEST/references" "$DEST/templates" "$DEST/assets"

curl -sf "$REPO/SKILL.md" -o "$DEST/SKILL.md"
curl -sf "$REPO/templates/memory.md" -o "$DEST/templates/memory.md"
curl -sf "$REPO/templates/farewell.md" -o "$DEST/templates/farewell.md"
curl -sf "$REPO/references/observations.md" -o "$DEST/references/observations.md"

echo "✅ Done! Installed to $DEST"
echo ""
echo "Next: Create memory/afterclaw/ directory in your workspace for storing moments."
