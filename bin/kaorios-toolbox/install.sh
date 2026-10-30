#!/bin/sh
# Kaorios Toolbox Standalone Binary Installer for Android ROMs
set -eu

TARGET_DIR="${1:-/system/bin}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_SOURCE="$SCRIPT_DIR/kaorios-toolbox"

if [ ! -f "$BIN_SOURCE" ]; then
    echo "Error: Binary not found at $BIN_SOURCE" >&2
    exit 1
fi

echo "Installing kaorios-toolbox to $TARGET_DIR..."
mkdir -p "$TARGET_DIR"
cp "$BIN_SOURCE" "$TARGET_DIR/kaorios-toolbox"
chmod 0755 "$TARGET_DIR/kaorios-toolbox"
chown 0:2000 "$TARGET_DIR/kaorios-toolbox" 2>/dev/null || chown root:shell "$TARGET_DIR/kaorios-toolbox" 2>/dev/null || true

# Set SELinux context if setfiles or chcon is available
if command -v chcon >/dev/null 2>&1; then
    chcon u:object_r:system_file:s0 "$TARGET_DIR/kaorios-toolbox" 2>/dev/null || true
fi

echo "Successfully installed kaorios-toolbox to $TARGET_DIR/kaorios-toolbox"
