#!/usr/bin/env bash
# scripts/core/module.sh
# Module creation functions


create_kaorios_module() {
    # shellcheck disable=SC2034
    local device_name="Generic"
    local version_name="1.0"
    local template_url="https://github.com/Zackptg5/MMT-Extended/archive/refs/heads/master.zip"
    local template_zip="templates/mmt_extended_template.zip"

    log "Creating Kaorios Framework module..."

    local build_dir="build_kaorios_module"
    rm -rf "$build_dir"
    
    # Ensure templates directory exists
    mkdir -p "templates"

    if [ ! -f "$template_zip" ]; then
        log "Downloading MMT-Extended template..."
        if command -v curl >/dev/null 2>&1; then
            curl -L -o "$template_zip" "$template_url" || {
                err "Failed to download template with curl"
                return 1
            }
        elif command -v wget >/dev/null 2>&1; then
            wget -O "$template_zip" "$template_url" || {
                err "Failed to download template with wget"
                return 1
            }
        else
            err "No download tool found (curl or wget)"
            return 1
        fi
    fi

    log "Extracting template..."
    unzip -q "$template_zip" -d "templates_extract_temp"
    
    
    # Move extracted contents to build_dir
    local extracted_root
    extracted_root=$(find "templates_extract_temp" -maxdepth 1 -mindepth 1 -type d | head -n 1)
    
    if [ -n "$extracted_root" ]; then
        mv "$extracted_root" "$build_dir"
    else
        err "Failed to find extracted template root"
        rm -rf "templates_extract_temp"
        return 1
    fi
    rm -rf "templates_extract_temp"

    # Manual Cleanup
    rm -f "$build_dir/README.md" "$build_dir/changelog.md" "$build_dir/LICENSE"
    rm -rf "$build_dir/.git" "$build_dir/.github"
    
    rm -f "$build_dir/config.sh" "$build_dir/customize.sh" "$build_dir/module.prop"
    rm -f "$build_dir/service.sh" "$build_dir/post-fs-data.sh" "$build_dir/system.prop"
    rm -f "$build_dir/sepolicy.rule" "$build_dir/uninstall.sh" "$build_dir/update.json"
    rm -f "$build_dir/install.zip" "$build_dir/.gitattributes" "$build_dir/.gitignore"
    
    rm -rf "$build_dir/common" "$build_dir/system" "$build_dir/zygisk"
    
    
    mkdir -p "$build_dir/system/framework"
    mkdir -p "$build_dir/system/product/priv-app/KaoriosToolbox/lib"
    mkdir -p "$build_dir/system/product/etc/permissions"

    cat > "$build_dir/module.prop" <<EOF
id=kaorios_framework
name=Kaorios Framework Patch
version=v${version_name}
versionCode=1
author=Kousei
description=Patched framework.jar with Kaorios Toolbox integration.
minMagisk=20400
EOF

    cat > "$build_dir/customize.sh" <<EOF
SKIPUNZIP=1

# Extract module files
ui_print "- Extracting module files"
unzip -o "\$ZIPFILE" -x 'META-INF/*' -d "\$MODPATH" >&2

# Set permissions
set_perm_recursive "\$MODPATH" 0 0 0755 0644

# Install KaoriosToolbox as user app
if [ -f "\$MODPATH/service.sh" ]; then
  chmod +x "\$MODPATH/service.sh"
fi
EOF

    cat > "$build_dir/system.prop" <<EOF
# Kaorios Toolbox
persist.sys.kaorios=kousei
# Leave the value after the = sign blank.
ro.control_privapp_permissions=
EOF

    cat > "$build_dir/service.sh" <<EOF
#!/system/bin/sh
MODDIR=\${0%/*}

# Wait for boot to complete
while [ "\$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# Install Kaorios Toolbox as user app (update) if present
if [ -f "\$MODDIR/system/product/priv-app/KaoriosToolbox/KaoriosToolbox.apk" ]; then
  pm install -r "\$MODDIR/system/product/priv-app/KaoriosToolbox/KaoriosToolbox.apk" >/dev/null 2>&1
fi
EOF
    chmod +x "$build_dir/service.sh"

    mkdir -p "$build_dir/system/framework"
    mkdir -p "$build_dir/system/product/priv-app/KaoriosToolbox/lib"
    mkdir -p "$build_dir/system/product/etc/permissions"

    if [ -f "framework_patched.jar" ]; then
        cp "framework_patched.jar" "$build_dir/system/framework/framework.jar"
        log "✓ Added framework_patched.jar"
    else
        warn "framework_patched.jar not found!"
    fi

    local apk_source="kaorios_toolbox/KaoriosToolbox.apk"
    if [ -f "$apk_source" ]; then
        cp "$apk_source" "$build_dir/system/product/priv-app/KaoriosToolbox/"
        log "✓ Added KaoriosToolbox.apk"

        # Extract libs
        # We need to determine the architecture or just extract all supported ones
        # For simplicity, let's extract arm64-v8a and armeabi-v7a if present
        
        local temp_extract="temp_apk_extract"
        mkdir -p "$temp_extract"
        unzip -q "$apk_source" "lib/*" -d "$temp_extract" 2>/dev/null
        
        if [ -d "$temp_extract/lib" ]; then
             # Extract and rename libraries to simplified names
             [ -d "$temp_extract/lib/armeabi-v7a" ] && cp -r "$temp_extract/lib/armeabi-v7a" "$build_dir/system/product/priv-app/KaoriosToolbox/lib/arm"
             [ -d "$temp_extract/lib/arm64-v8a" ] && cp -r "$temp_extract/lib/arm64-v8a" "$build_dir/system/product/priv-app/KaoriosToolbox/lib/arm64"
             [ -d "$temp_extract/lib/x86" ] && cp -r "$temp_extract/lib/x86" "$build_dir/system/product/priv-app/KaoriosToolbox/lib/x86"
             [ -d "$temp_extract/lib/x86_64" ] && cp -r "$temp_extract/lib/x86_64" "$build_dir/system/product/priv-app/KaoriosToolbox/lib/x86_64"
             
             log "✓ Extracted and renamed native libraries from APK"
        else
             warn "No native libraries found in APK or extraction failed"
        fi
        rm -rf "$temp_extract"
    else
        warn "KaoriosToolbox.apk not found at $apk_source"
    fi

    local perm_source="kaorios_toolbox/privapp_whitelist_com.kousei.kaorios.xml"
    if [ -f "$perm_source" ]; then
        cp "$perm_source" "$build_dir/system/product/etc/permissions/"
        log "✓ Added permission XML"
    else
        warn "Permission XML not found at $perm_source"
    fi

    local zip_name="kaoriosFramework.zip"
    rm -f "$zip_name"
    
    if command -v 7z >/dev/null 2>&1; then
        (cd "$build_dir" && 7z a -tzip "../$zip_name" "*" >/dev/null)
    elif command -v zip >/dev/null 2>&1; then
        (cd "$build_dir" && zip -r "../$zip_name" . >/dev/null)
    else
        err "No archiver found (7z or zip)"
        return 1
    fi

    log "Created module: $zip_name"
    echo "$zip_name"
}
