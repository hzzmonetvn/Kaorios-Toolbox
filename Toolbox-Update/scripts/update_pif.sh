#!/bin/bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TARGET_FILE="$REPO_ROOT/Toolbox-data/Pif-props.json"
WORKDIR="$REPO_ROOT/work/pif_update"

cleanup() {
  rm -rf "$WORKDIR"
}
trap cleanup EXIT

echo "Using working directory: $WORKDIR"
rm -rf "$WORKDIR"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

echo "Fetching Android versions index..."
wget -q -O versions.html "https://developer.android.com/about/versions"

mapfile -t ANDROID_VERSIONS < <(
  grep -oE '/about/versions/[0-9]+' versions.html     | sed -E 's#.*/about/versions/([0-9]+).*#\1#'     | sort -rn -u
)

if [ "${#ANDROID_VERSIONS[@]}" -eq 0 ]; then
  echo "Failed to detect Android versions from developer.android.com."
  exit 1
fi

ANDROID_VERSION="${ANDROID_VERSIONS[0]}"
VERSION_URL="https://developer.android.com/about/versions/$ANDROID_VERSION"

echo "Detected latest Android major: $ANDROID_VERSION"
echo "Version URL: $VERSION_URL"

wget -q -O version.html "$VERSION_URL"

# Preserve the old behavior: do not use a brand-new Developer Preview major.
# When the newest major is still in Developer Preview, use the previous major.
if grep -qiE 'Developer Preview|tooltip>.*preview program' version.html; then
  if [ "${#ANDROID_VERSIONS[@]}" -lt 2 ]; then
    echo "Latest Android version is a Developer Preview and no previous version was found."
    exit 1
  fi

  ANDROID_VERSION="${ANDROID_VERSIONS[1]}"
  VERSION_URL="https://developer.android.com/about/versions/$ANDROID_VERSION"
  echo "Latest major is a Developer Preview. Falling back to Android $ANDROID_VERSION."
  wget -q -O version.html "$VERSION_URL"
fi

CURRENT_DEVICE=""
CURRENT_MODEL=""
if [ -f "$TARGET_FILE" ]; then
  CURRENT_DEVICE="$(jq -r '.DEVICE // empty' "$TARGET_FILE" 2>/dev/null || true)"
  CURRENT_MODEL="$(jq -r '.MODEL // empty' "$TARGET_FILE" 2>/dev/null || true)"
fi

# Historical fallback: the old updater always selected the first Pixel OTA,
# which was Pixel 6 / oriole.
TARGET_DEVICE="${CURRENT_DEVICE:-oriole}"
TARGET_MODEL="${CURRENT_MODEL:-Pixel 6}"

echo "Target PIF device: $TARGET_DEVICE ($TARGET_MODEL)"

normalize_ota_link() {
  local link="$1"
  if [[ "$link" == http://* || "$link" == https://* ]]; then
    printf '%s\n' "$link"
  elif [[ "$link" == //* ]]; then
    printf 'https:%s\n' "$link"
  else
    printf 'https://developer.android.com%s\n' "$link"
  fi
}

find_device_ota() {
  local page="$1"
  local link

  link="$(
    grep -oE 'href="[^"]+\.zip"' "$page"       | cut -d'"' -f2       | grep -E "/${TARGET_DEVICE}(_beta)?-ota-"       | head -n1       || true
  )"

  if [ -n "$link" ]; then
    normalize_ota_link "$link"
  fi
}

# Prefer the newest QPR page that still publishes an OTA for the selected
# device. This matters for older Pixels: a newer QPR can drop the device
# while the previous QPR still has a newer usable image than the base page.
OTA_LINK=""
OTA_PAGE=""
for qpr in 4 3 2 1; do
  candidate_url="https://developer.android.com/about/versions/$ANDROID_VERSION/qpr$qpr/download-ota"
  candidate_file="ota-qpr$qpr.html"

  if wget -q -O "$candidate_file" "$candidate_url"; then
    candidate_link="$(find_device_ota "$candidate_file")"
    if [ -n "$candidate_link" ]; then
      OTA_PAGE="$candidate_url"
      OTA_LINK="$candidate_link"
      break
    fi
  fi
done

if [ -z "$OTA_LINK" ]; then
  candidate_url="https://developer.android.com/about/versions/$ANDROID_VERSION/download-ota"
  candidate_file="ota-base.html"

  if wget -q -O "$candidate_file" "$candidate_url"; then
    candidate_link="$(find_device_ota "$candidate_file")"
    if [ -n "$candidate_link" ]; then
      OTA_PAGE="$candidate_url"
      OTA_LINK="$candidate_link"
    fi
  fi
fi

if [ -z "$OTA_LINK" ]; then
  echo "Failed to find an Android $ANDROID_VERSION OTA for device '$TARGET_DEVICE'."
  exit 1
fi

echo "Selected OTA page: $OTA_PAGE"
echo "Found OTA link: $OTA_LINK"

FILENAME="$(basename "${OTA_LINK%%\?*}")"
OTA_ID="$(printf '%s' "$FILENAME" | sed -E 's/.*-ota-([^-]+)-[^/]*\.zip/\1/i')"

if [ -z "$OTA_ID" ] || [ "$OTA_ID" = "$FILENAME" ]; then
  echo "Failed to extract OTA build identifier from: $FILENAME"
  exit 1
fi

echo "Extracted OTA identifier: $OTA_ID"

if [ -f "$TARGET_FILE" ]; then
  EXISTING_FP="$(jq -r '.FINGERPRINT // empty' "$TARGET_FILE" 2>/dev/null || true)"
  if [ -n "$EXISTING_FP" ] && printf '%s\n' "$EXISTING_FP" | grep -Fqi "$OTA_ID"; then
    echo "PIF is already up to date ($OTA_ID). Skipping update."
    exit 0
  fi
fi

echo "Downloading OTA metadata prefix..."

FINGERPRINT=""
SECURITY_PATCH=""

# META-INF/com/android/metadata is normally near the beginning of Pixel OTA
# packages. Grow the range progressively instead of assuming it is always
# within the first 20 KiB.
for RANGE_END in 65535 262143 1048575 4194303; do
  echo "Trying byte range 0-$RANGE_END..."

  rm -f metadata.bin
  if ! curl -fsSL --retry 3 --range "0-$RANGE_END" --max-filesize 8388608       -o metadata.bin "$OTA_LINK"; then
    continue
  fi

  FINGERPRINT="$(
    grep -aom1 'post-build=[^[:space:]]*' metadata.bin       | sed 's/^post-build=//'       | tr -d '\r'       || true
  )"
  SECURITY_PATCH="$(
    grep -aom1 'security-patch-level=[^[:space:]]*' metadata.bin       | sed 's/^security-patch-level=//'       | tr -d '\r'       || true
  )"

  if [ -n "$FINGERPRINT" ] && [ -n "$SECURITY_PATCH" ]; then
    break
  fi
done

if [ -z "$FINGERPRINT" ] || [ -z "$SECURITY_PATCH" ]; then
  echo "Failed to extract fingerprint/security patch from OTA metadata."
  exit 1
fi

PRODUCT="$(printf '%s' "$FINGERPRINT" | cut -d/ -f2)"
DEVICE="$(printf '%s' "$FINGERPRINT" | cut -d/ -f3 | cut -d: -f1)"

if [ -z "$PRODUCT" ] || [ -z "$DEVICE" ]; then
  echo "Failed to parse PRODUCT/DEVICE from fingerprint: $FINGERPRINT"
  exit 1
fi

echo "Parsed PRODUCT=$PRODUCT, DEVICE=$DEVICE"
echo "Security patch: $SECURITY_PATCH"
echo "Writing output to $TARGET_FILE..."

jq -n   --arg manufacturer "Google"   --arg model "$TARGET_MODEL"   --arg fingerprint "$FINGERPRINT"   --arg product "$PRODUCT"   --arg device "$DEVICE"   --arg security_patch "$SECURITY_PATCH"   '{
    MANUFACTURER: $manufacturer,
    MODEL: $model,
    FINGERPRINT: $fingerprint,
    PRODUCT: $product,
    DEVICE: $device,
    SECURITY_PATCH: $security_patch,
    DEVICE_INITIAL_SDK_INT: "21"
  }' > "$TARGET_FILE"

echo "Done. Output written to: $TARGET_FILE"
cat "$TARGET_FILE"
