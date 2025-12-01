#!/bin/bash

# Set up environment variables
TOOLS_DIR="$(pwd)/tools"
WORK_DIR="$(pwd)"
BACKUP_DIR="$WORK_DIR/backup"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source helper functions
source "$SCRIPT_DIR/core/logging.sh"
source "$SCRIPT_DIR/core/tools.sh"
source "$SCRIPT_DIR/core/apk_ops.sh"
source "$SCRIPT_DIR/core/kaorios_patches.sh"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Function to decompile JAR file
decompile_jar() {
    local jar_file="$1"
    local base_name
    base_name="$(basename "$jar_file" .jar)"
    local output_dir="$WORK_DIR/${base_name}_decompile"

    echo "Decompiling $jar_file with apktool..."

    if [ ! -f "$jar_file" ]; then
        echo "❌ Error: JAR file $jar_file not found!"
        exit 1
    fi

    rm -rf "$output_dir" "$base_name"
    mkdir -p "$output_dir"

    mkdir -p "$BACKUP_DIR/$base_name"
    unzip -o "$jar_file" "META-INF/*" "res/*" -d "$BACKUP_DIR/$base_name" >/dev/null 2>&1

    if ! java -jar "$TOOLS_DIR/apktool.jar" d -q -f "$jar_file" -o "$output_dir"; then
        echo "❌ Error: Failed to decompile $jar_file with apktool"
        exit 1
    fi

    mkdir -p "$output_dir/unknown"
    cp -r "$BACKUP_DIR/$base_name/res" "$output_dir/unknown/" 2>/dev/null
    cp -r "$BACKUP_DIR/$base_name/META-INF" "$output_dir/unknown/" 2>/dev/null
}

# Function to recompile JAR file
recompile_jar() {
    local jar_file="$1"
    local base_name
    base_name="$(basename "$jar_file" .jar)"
    local output_dir="$WORK_DIR/${base_name}_decompile"
    local patched_jar="${base_name}_patched.jar"

    echo "Recompiling $jar_file with apktool..."

    if ! java -jar "$TOOLS_DIR/apktool.jar" b -q -f "$output_dir" -o "$patched_jar"; then
        echo "❌ Error: Failed to recompile $output_dir with apktool"
        exit 1
    fi

    echo "Created patched JAR: $patched_jar"
}

# Main function
main() {
    local framework_path="$1"

    if [ -z "$framework_path" ]; then
        framework_path="$WORK_DIR/framework.jar"
    fi

    echo "Starting framework patch..."
    
    # Decompile framework.jar
    decompile_jar "$framework_path"
    local decompile_dir="$WORK_DIR/framework_decompile"

    # Apply Kaorios Toolbox patches
    apply_kaorios_toolbox_patches "$decompile_dir"

    # Recompile framework.jar
    recompile_jar "$framework_path"

    # Optimize with D8
    # Ensure tools are available (including D8)
    ensure_tools

    local base_name
    base_name="$(basename "$framework_path" .jar)"
    local patched_jar="${base_name}_patched.jar"
    if [ -f "$patched_jar" ]; then
        d8_optimize_jar "$patched_jar"
    else
        echo "❌ Error: Patched JAR not found at $patched_jar"
    fi

    # Create Kaorios Module
    source "$SCRIPT_DIR/core/module.sh"
    create_kaorios_module

    # Clean up
    rm -rf "$decompile_dir"

    echo "Framework patching completed."
}

main "$@"
