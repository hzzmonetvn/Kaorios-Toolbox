#!/bin/sh
# KaoriHelper (resetprop-rs) Binary Installer for Android ROMs
set -eu

TARGET_DIR="${1:-/system/bin}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_SOURCE="$SCRIPT_DIR/kaorihelper"

if [ ! -f "$BIN_SOURCE" ]; then
    echo "Error: Binary not found at $BIN_SOURCE" >&2
    exit 1
fi

echo "Installing kaorihelper to $TARGET_DIR..."
mkdir -p "$TARGET_DIR"
cp "$BIN_SOURCE" "$TARGET_DIR/kaorihelper"
chmod 0755 "$TARGET_DIR/kaorihelper"
chown 0:2000 "$TARGET_DIR/kaorihelper" 2>/dev/null || chown root:shell "$TARGET_DIR/kaorihelper" 2>/dev/null || true

# Set SELinux context if setfiles or chcon is available
if command -v chcon >/dev/null 2>&1; then
    chcon u:object_r:system_file:s0 "$TARGET_DIR/kaorihelper" 2>/dev/null || true
fi

echo "Successfully installed kaorihelper to $TARGET_DIR/kaorihelper"
