#!/bin/bash

set -e

# Adjusted for project structure
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TARGET_FILE="$REPO_ROOT/Toolbox-data/Pif-props.json"
WORKDIR="$REPO_ROOT/work/pif_update"

echo "Using working directory: $WORKDIR"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

wget -q -O versions.html "https://developer.android.com/about/versions"

echo "Finding latest Android version URL..."
LATEST_URL=$(grep -o 'https://developer.android.com/about/versions/[0-9][^"]*' versions.html | sort -ru | head -n1)
echo "Latest URL: $LATEST_URL"

wget -q -O latest.html "$LATEST_URL"

if grep -qE 'Developer Preview|tooltip>.*preview program' latest.html; then
  echo "Latest version is a developer preview. Falling back to previous version..."
  SECOND_LATEST_URL=$(grep -o 'https://developer.android.com/about/versions/[0-9][^"]*' versions.html | sort -ru | head -n2 | tail -n1)
  echo "Using: $SECOND_LATEST_URL"
  wget -q -O beta.html "$SECOND_LATEST_URL"
else
  echo "Latest version is stable. Proceeding..."
  cp latest.html beta.html
fi

echo "Extracting OTA page URL..."
OTA_PATH=$(grep -o 'href="[^"]*download-ota[^"]*"' beta.html | cut -d\" -f2 | head -n1)
OTA_PAGE="https://developer.android.com${OTA_PATH}"
echo "OTA page: $OTA_PAGE"

wget -q -O ota.html "$OTA_PAGE"

echo "Extracting device info and OTA link..."
MODEL=$(grep -A1 'tr id=' ota.html | grep 'td' | sed 's;.*<td>\(.*\)</td>;\1;' | head -n1)
OTA_LINK=$(grep -o -E 'href="([^"]+\.zip)"' ota.html | sed 's/href="//;s/"//g' | grep '_beta' | head -n1)

if [ -z "$OTA_LINK" ]; then
  echo "Failed to extract OTA link."
  exit 1
fi

if [[ "$OTA_LINK" != http* ]]; then
  OTA_LINK="https://developer.android.com${OTA_LINK}"
fi

echo "Found OTA link: $OTA_LINK"

OTA_ID=$(echo "$OTA_LINK" | sed -E 's/.*-([^-]+)-[^/]*\.zip/\1/i')
echo "Extracted OTA identifier: $OTA_ID"

if [ -f "$TARGET_FILE" ]; then
  EXISTING_FP=$(jq -r .FINGERPRINT "$TARGET_FILE" 2>/dev/null || echo "")
  if echo "$EXISTING_FP" | grep -iq "$OTA_ID"; then
    echo "PIF is already up to date. Skipping update."
    exit 0
  fi
fi

echo "Downloading OTA metadata (partial)..."
# Optimization: Download only the first 20KB to get metadata instead of the whole zip
curl -L -r 0-20000 -o metadata.txt "$OTA_LINK"

echo "Extracting fingerprint and security patch..."
FINGERPRINT=$(grep -am1 'post-build=' metadata.txt | cut -d= -f2)
SECURITY_PATCH=$(grep -am1 'security-patch-level=' metadata.txt | cut -d= -f2)

if [ -z "$FINGERPRINT" ] || [ -z "$SECURITY_PATCH" ]; then
  echo "Failed to extract necessary metadata. Exiting."
  exit 1
fi

FILENAME=$(basename "$OTA_LINK")
PRODUCT=$(echo "$FILENAME" | cut -d- -f1)
DEVICE=${PRODUCT%_beta}
echo "Parsed PRODUCT=$PRODUCT, DEVICE=$DEVICE"

echo "Writing output to $TARGET_FILE..."
cat <<EOF > "$TARGET_FILE"
{
  "MANUFACTURER": "Google",
  "MODEL": "$MODEL",
  "FINGERPRINT": "$FINGERPRINT",
  "PRODUCT": "$PRODUCT",
  "DEVICE": "$DEVICE",
  "SECURITY_PATCH": "$SECURITY_PATCH",
  "DEVICE_INITIAL_SDK_INT": "21"
}
EOF

echo "Cleaning up temporary files..."
rm -rf "$WORKDIR"

echo "Done. Output written to: $TARGET_FILE"
cat "$TARGET_FILE"
