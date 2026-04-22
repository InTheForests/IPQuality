#!/bin/bash
set -e

SCRIPT_URL="https://raw.githubusercontent.com/InTheForests/IPQuality/refs/heads/main/ip.sh"
SCRIPT_PATH="/tmp/ip.sh"

curl -fsSL "$SCRIPT_URL" -o "$SCRIPT_PATH"
chmod +x "$SCRIPT_PATH"

exec /bin/bash "$SCRIPT_PATH" "$@"
