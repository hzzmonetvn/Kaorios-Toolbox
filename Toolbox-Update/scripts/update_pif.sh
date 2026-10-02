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
CURRENT_DEVICE_INITIAL_SDK=""
if [ -f "$TARGET_FILE" ]; then
  CURRENT_DEVICE="$(jq -r '.DEVICE // empty' "$TARGET_FILE" 2>/dev/null || true)"
  CURRENT_MODEL="$(jq -r '.MODEL // empty' "$TARGET_FILE" 2>/dev/null || true)"
  CURRENT_DEVICE_INITIAL_SDK="$(jq -r '.DEVICE_INITIAL_SDK_INT // empty' "$TARGET_FILE" 2>/dev/null || true)"
fi

# Prefer newest high-end Pixel with a published OTA. Format: codename|model|launch SDK
PIXEL_PRIORITY=(
  "kodiak|Pixel 11 Pro XL|37"
  "grizzly|Pixel 11 Pro|37"
  "cubs|Pixel 11|37"
  "yogi|Pixel 11 Pro Fold|37"
  "mustang|Pixel 10 Pro XL|36"
  "blazer|Pixel 10 Pro|36"
  "frankel|Pixel 10|36"
  "rango|Pixel 10 Pro Fold|36"
  "komodo|Pixel 9 Pro XL|34"
  "caiman|Pixel 9 Pro|34"
  "tokay|Pixel 9|34"
  "comet|Pixel 9 Pro Fold|34"
  "husky|Pixel 8 Pro|34"
  "shiba|Pixel 8|34"
)

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

find_ota_for_device() {
  local page="$1" device="$2" allow_beta="$3"
  local links link
  links="$(grep -oE 'href="[^"]+\.zip"' "$page" | cut -d'"' -f2 || true)"
  if [ "$allow_beta" = "yes" ]; then
    link="$(printf '%s\n' "$links" | grep -E "/${device}(_beta)?-ota-" | head -n1 || true)"
  else
    link="$(printf '%s\n' "$links" | grep -E "/${device}-ota-" | grep -v '_beta-ota-' | head -n1 || true)"
  fi
  [ -n "$link" ] && normalize_ota_link "$link"
}

select_from_page() {
  local page="$1" allow_beta="$2" entry device model launch_sdk link
  for entry in "${PIXEL_PRIORITY[@]}"; do
    IFS='|' read -r device model launch_sdk <<< "$entry"
    link="$(find_ota_for_device "$page" "$device" "$allow_beta")"
    if [ -n "$link" ]; then
      TARGET_DEVICE="$device"
      TARGET_MODEL="$model"
      TARGET_INITIAL_SDK="$launch_sdk"
      OTA_LINK="$link"
      return 0
    fi
  done
  return 1
}

TARGET_DEVICE=""
TARGET_MODEL=""
TARGET_INITIAL_SDK=""
OTA_LINK=""
OTA_PAGE=""
OTA_CHANNEL=""

# Prefer released public OTAs. Beta/QPR images are fallback only.
stable_url="https://developers.google.com/android/ota"
if wget -q -O ota-stable.html "$stable_url" && select_from_page ota-stable.html no; then
  OTA_PAGE="$stable_url"
  OTA_CHANNEL="stable"
fi

if [ -z "$OTA_LINK" ]; then
  for qpr in 4 3 2 1; do
    candidate_url="https://developer.android.com/about/versions/$ANDROID_VERSION/qpr$qpr/download-ota"
    candidate_file="ota-qpr$qpr.html"
    if wget -q -O "$candidate_file" "$candidate_url" && select_from_page "$candidate_file" yes; then
      OTA_PAGE="$candidate_url"
      OTA_CHANNEL="beta"
      break
    fi
  done
fi

if [ -z "$OTA_LINK" ]; then
  candidate_url="https://developer.android.com/about/versions/$ANDROID_VERSION/download-ota"
  candidate_file="ota-base.html"
  if wget -q -O "$candidate_file" "$candidate_url" && select_from_page "$candidate_file" yes; then
    OTA_PAGE="$candidate_url"
    OTA_CHANNEL="beta"
  fi
fi

if [ -z "$OTA_LINK" ]; then
  echo "Failed to find an OTA for any preferred flagship Pixel."
  exit 1
fi

echo "Selected flagship: $TARGET_MODEL ($TARGET_DEVICE)"
echo "Selected OTA channel: $OTA_CHANNEL"
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
SDK_INT=""

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
  SDK_INT="$(
    grep -aom1 'post-sdk-level=[^[:space:]]*' metadata.bin       | sed 's/^post-sdk-level=//'       | tr -d '\r'       || true
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

# Resolve DEVICE_INITIAL_SDK_INT: use a static device-launch-API map because
# post-sdk-level from OTA metadata is the OTA's target API, not the device's
# initial release API. These values are stable once a device ships.
device_initial_sdk() {
  local dev="$1"
  case "$dev" in
    # Pixel 6 family — Android 12 launch
    oriole|raven)                echo 31 ;;
    # Pixel 6a — Android 12L launch
    bluejay)                     echo 32 ;;
    # Pixel 7 family — Android 13 launch
    cheetah|panther)             echo 33 ;;
    # Pixel 7a — Android 13 launch
    lynx)                        echo 33 ;;
    # Pixel Fold — Android 13 launch
    felix)                       echo 33 ;;
    # Pixel Tablet — Android 13 launch
    tangorpro)                   echo 33 ;;
    # Pixel 8 family — Android 14 launch
    shiba|husky)                 echo 34 ;;
    # Pixel 8a — Android 14 launch
    akita)                       echo 34 ;;
    # Pixel 9 family — Android 14 launch
    tokay|caiman|komodo|comet)   echo 34 ;;
    # Pixel 9 Pro Fold — Android 14 launch
    gts9|eos)                    echo 34 ;;
    # Pixel 10 family — Android 16 launch
    frankel|blazer|mustang|rango|stallion) echo 36 ;;
    # Pixel 11 family — Android 17 launch
    cubs|grizzly|kodiak|yogi)    echo 37 ;;
    # Unknown device: caller falls back to preserving existing value or fails.
    *)                           echo "" ;;
  esac
}

resolve_device_initial_sdk() {
  local dev="$1" current_dev="${2:-}" current_sdk="${3:-}"
  local sdk
  sdk="$(device_initial_sdk "$dev")"
  if [ -n "$sdk" ]; then
    printf '%s\n' "$sdk"
    return 0
  fi
  if [ -n "$current_sdk" ] && [ "$dev" = "$current_dev" ]; then
    printf '%s\n' "$current_sdk"
    return 0
  fi
  return 1
}

if [ "$DEVICE" = "$TARGET_DEVICE" ] && [ -n "$TARGET_INITIAL_SDK" ]; then
  DEVICE_INITIAL_SDK="$TARGET_INITIAL_SDK"
  mapped_sdk="$(device_initial_sdk "$DEVICE")"
  if [ -n "$mapped_sdk" ] && [ "$mapped_sdk" != "$DEVICE_INITIAL_SDK" ]; then
    echo "Launch SDK map mismatch for $DEVICE: priority=$DEVICE_INITIAL_SDK map=$mapped_sdk"
    exit 1
  fi
elif ! DEVICE_INITIAL_SDK="$(resolve_device_initial_sdk "$DEVICE" "$CURRENT_DEVICE" "$CURRENT_DEVICE_INITIAL_SDK")"; then
  echo "Failed to determine DEVICE_INITIAL_SDK_INT for device '$DEVICE' (not in map, no existing value to preserve)."
  exit 1
fi
if [ -z "$(device_initial_sdk "$DEVICE")" ]; then
  echo "Warning: device '$DEVICE' not in launch-SDK map; preserving existing DEVICE_INITIAL_SDK_INT=$DEVICE_INITIAL_SDK."
fi

if ! printf '%s' "$DEVICE_INITIAL_SDK" | grep -qE '^[0-9]+$' || [ "$DEVICE_INITIAL_SDK" -le 0 ]; then
  echo "Failed: DEVICE_INITIAL_SDK_INT='$DEVICE_INITIAL_SDK' is not a positive integer."
  exit 1
fi

echo "Parsed PRODUCT=$PRODUCT, DEVICE=$DEVICE"
echo "Security patch: $SECURITY_PATCH"
echo "DEVICE_INITIAL_SDK_INT: $DEVICE_INITIAL_SDK"
echo "Writing output to $TARGET_FILE..."

jq -n \
  --arg manufacturer "Google" \
  --arg model "$TARGET_MODEL" \
  --arg fingerprint "$FINGERPRINT" \
  --arg product "$PRODUCT" \
  --arg device "$DEVICE" \
  --arg security_patch "$SECURITY_PATCH" \
  --arg sdk_int "$DEVICE_INITIAL_SDK" \
  '{
    MANUFACTURER: $manufacturer,
    MODEL: $model,
    FINGERPRINT: $fingerprint,
    PRODUCT: $product,
    DEVICE: $device,
    SECURITY_PATCH: $security_patch,
    DEVICE_INITIAL_SDK_INT: $sdk_int
  }' > "$TARGET_FILE"

echo "Done. Output written to: $TARGET_FILE"
cat "$TARGET_FILE"
