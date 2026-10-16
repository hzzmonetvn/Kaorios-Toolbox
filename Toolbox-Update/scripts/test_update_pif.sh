#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
mkdir -p "$TMP/Toolbox-Update/scripts" "$TMP/Toolbox-data" "$TMP/bin"
cp "$ROOT/Toolbox-Update/scripts/update_pif.sh" "$TMP/Toolbox-Update/scripts/"
printf '%s\n' '{"MODEL":"Pixel 7","DEVICE":"panther","FINGERPRINT":"old"}' > "$TMP/Toolbox-data/Pif-props.json"
printf '%s\n' '{"devices":[{"MODEL":"Pixel 7","DEVICE":"panther","FINGERPRINT":"old"}]}' > "$TMP/Toolbox-data/pif-devices.json"
cp "$TMP/Toolbox-data/Pif-props.json" "$TMP/original-pif.json"
cp "$TMP/Toolbox-data/pif-devices.json" "$TMP/original-catalog.json"

cat > "$TMP/bin/wget" <<'MOCK'
#!/bin/bash
while [ "$1" != "-O" ]; do shift; done
output="$2"; url="$3"
case "$url" in
  */about/versions) printf '%s\n' '<a href="/about/versions/17">17</a>' > "$output" ;;
  */about/versions/17) printf '%s\n' '<html>Release</html>' > "$output" ;;
  */android/ota) cp "$STABLE_PAGE" "$output" ;;
  *) exit 1 ;;
esac
MOCK
cat > "$TMP/bin/curl" <<'MOCK'
#!/bin/bash
while [ "$1" != "-o" ]; do shift; done
cp "$METADATA" "$2"
MOCK
chmod +x "$TMP/bin/wget" "$TMP/bin/curl"
export PATH="$TMP/bin:$PATH" STABLE_PAGE="$TMP/stable.html" METADATA="$TMP/metadata.txt"

printf '%s\n' '<html>Terms and conditions — Acknowledge</html>' > "$STABLE_PAGE"
if bash "$TMP/Toolbox-Update/scripts/update_pif.sh" > "$TMP/run.log" 2>&1; then
  printf '%s\n' 'Expected failure on terms-gated stable page' >&2
  exit 1
fi
cmp "$TMP/original-pif.json" "$TMP/Toolbox-data/Pif-props.json"
cmp "$TMP/original-catalog.json" "$TMP/Toolbox-data/pif-devices.json"

printf '%s\n' '<a href="https://dl.google.com/cheetah-ota-build-abcdef.zip">stable</a>' > "$STABLE_PAGE"
printf '%s\n' 'post-build=google/cheetah_beta/cheetah:17/build/1:user/release-keys security-patch-level=2026-10-05' > "$METADATA"
if bash "$TMP/Toolbox-Update/scripts/update_pif.sh" > "$TMP/run.log" 2>&1; then
  printf '%s\n' 'Expected failure on beta metadata at stable URL' >&2
  exit 1
fi
cmp "$TMP/original-pif.json" "$TMP/Toolbox-data/Pif-props.json"
cmp "$TMP/original-catalog.json" "$TMP/Toolbox-data/pif-devices.json"

printf '%s\n' 'post-build=google/cheetah/cheetah:17/build/1:user/release-keys security-patch-level=2026-10-05' > "$METADATA"
bash "$TMP/Toolbox-Update/scripts/update_pif.sh" > "$TMP/run.log" 2>&1
jq -e '.MODEL == "Pixel 7 Pro" and .DEVICE == "cheetah" and .DEVICE_INITIAL_SDK_INT == "33"' "$TMP/Toolbox-data/Pif-props.json" > /dev/null
jq -e '.devices[0].DEVICE == "panther"' "$TMP/Toolbox-data/pif-devices.json" > /dev/null
printf '%s\n' 'PIF updater fixtures passed'
