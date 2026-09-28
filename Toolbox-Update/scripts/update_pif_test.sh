#!/bin/bash
# Unit tests for device_initial_sdk() in update_pif.sh. No network required.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATCHER="$SCRIPT_DIR/update_pif.sh"

# Extract the device_initial_sdk function into a temp file and source it.
_tmpfn="$(mktemp)"
trap 'rm -f "$_tmpfn"' EXIT
awk '
  /^device_initial_sdk\(\)/{found=1}
  found{print; if(/^\}$/){found=0}}
' "$PATCHER" > "$_tmpfn"
# shellcheck disable=SC1090
source "$_tmpfn"

PASS=0
FAIL=0

check() {
  local device="$1" expected="$2"
  local got
  got="$(device_initial_sdk "$device")"
  if [ "$got" = "$expected" ]; then
    echo "PASS: device_initial_sdk $device = $got"
    PASS=$((PASS + 1))
  else
    echo "FAIL: device_initial_sdk $device = '$got', want '$expected'"
    FAIL=$((FAIL + 1))
  fi
}

check oriole    31
check raven     31
check bluejay   32
check cheetah   33
check panther   33
check lynx      33
check felix     33
check tangorpro 33
check shiba     34
check husky     34
check akita     34
check tokay     34
check caiman    34
check komodo    34
check comet     34
check gts9      34
check eos       34
check unknown_device ""

echo ""
echo "Results: $PASS passed, $FAIL failed."
[ "$FAIL" -eq 0 ]
