#!/bin/bash
set -e
SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
MOD_DIR="$HOME/Documents/SauceMods/RiderFeedHUD"
rm -rf "$HOME/Documents/SauceMods/WOW_0_100_Ribbon" 2>/dev/null || true
mkdir -p "$MOD_DIR/pages"
if [ -f "$SRC_DIR/manifest.json" ]; then BASE="$SRC_DIR"; else BASE="$SRC_DIR/RiderFeedHUD"; fi
cp -f "$BASE/manifest.json" "$MOD_DIR/manifest.json"
[ -f "$BASE/README.md" ] && cp -f "$BASE/README.md" "$MOD_DIR/README.md"
[ -f "$BASE/HELP.md" ] && cp -f "$BASE/HELP.md" "$MOD_DIR/HELP.md"
[ -f "$BASE/RiderFeedHUD_Visual_Callout_Guide.png" ] && cp -f "$BASE/RiderFeedHUD_Visual_Callout_Guide.png" "$MOD_DIR/RiderFeedHUD_Visual_Callout_Guide.png"
cp -Rf "$BASE/pages/"* "$MOD_DIR/pages/"
xattr -cr "$MOD_DIR" 2>/dev/null || true
echo "[SUCCESS] Installed RiderFeedHUD v22.1 to: $MOD_DIR"
read -n 1 -s -r -p "Press any key to close..."
echo ""
