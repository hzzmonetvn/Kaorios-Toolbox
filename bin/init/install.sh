#!/bin/sh
# Kaorios Init RC Installer for Android ROMs
set -eu

ROM_ROOT="${1:-/}"
TARGET_DIR="$ROM_ROOT/system/etc/init"
if [ ! -d "$TARGET_DIR" ] && [ -d "$ROM_ROOT/system/system/etc/init" ]; then
    TARGET_DIR="$ROM_ROOT/system/system/etc/init"
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
RC_SOURCE="$SCRIPT_DIR/init.kaorios.rc"

if [ ! -f "$RC_SOURCE" ]; then
    echo "Error: init.kaorios.rc not found at $RC_SOURCE" >&2
    exit 1
fi

echo "Installing init.kaorios.rc to $TARGET_DIR..."
mkdir -p "$TARGET_DIR"
cp "$RC_SOURCE" "$TARGET_DIR/init.kaorios.rc"
chmod 0644 "$TARGET_DIR/init.kaorios.rc"
chown 0:0 "$TARGET_DIR/init.kaorios.rc" 2>/dev/null || true

if command -v chcon >/dev/null 2>&1; then
    chcon u:object_r:system_file:s0 "$TARGET_DIR/init.kaorios.rc" 2>/dev/null || true
fi

echo "Successfully installed init.kaorios.rc to $TARGET_DIR/init.kaorios.rc"
