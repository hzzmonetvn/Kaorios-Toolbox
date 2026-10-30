#!/bin/sh
# Kaorios PIF Native Property Bridge Installer for Android ROMs
set -eu

ROM_ROOT="${1:-/}"
SYSTEM_DIR="$ROM_ROOT/system"
if [ ! -d "$SYSTEM_DIR" ] && [ -d "$ROM_ROOT/system/system" ]; then
    SYSTEM_DIR="$ROM_ROOT/system/system"
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Kaorios PIF native libraries to $SYSTEM_DIR..."

# 64-bit libraries
if [ -d "$SYSTEM_DIR/lib64" ]; then
    echo "Installing arm64-v8a to $SYSTEM_DIR/lib64..."
    for lib in libkaoripif.so libkaoriospif.so libshadowhook_kaorios.so; do
        cp -f "$SCRIPT_DIR/arm64-v8a/$lib" "$SYSTEM_DIR/lib64/$lib"
        chmod 0644 "$SYSTEM_DIR/lib64/$lib"
        chown 0:0 "$SYSTEM_DIR/lib64/$lib" 2>/dev/null || true
        if command -v chcon >/dev/null 2>&1; then
            chcon u:object_r:system_lib_file:s0 "$SYSTEM_DIR/lib64/$lib" 2>/dev/null || true
        fi
    done
fi

# 32-bit libraries
if [ -d "$SYSTEM_DIR/lib" ]; then
    echo "Installing armeabi-v7a to $SYSTEM_DIR/lib..."
    for lib in libkaoripif.so libkaoriospif.so libshadowhook_kaorios.so; do
        cp -f "$SCRIPT_DIR/armeabi-v7a/$lib" "$SYSTEM_DIR/lib/$lib"
        chmod 0644 "$SYSTEM_DIR/lib/$lib"
        chown 0:0 "$SYSTEM_DIR/lib/$lib" 2>/dev/null || true
        if command -v chcon >/dev/null 2>&1; then
            chcon u:object_r:system_lib_file:s0 "$SYSTEM_DIR/lib/$lib" 2>/dev/null || true
        fi
    done
fi

echo "Kaorios PIF native libraries installed successfully."
