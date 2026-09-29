#!/bin/bash
# Unit tests for device_initial_sdk() in update_pif.sh. No network required.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATCHER="$SCRIPT_DIR/update_pif.sh"

# Extract device_initial_sdk and resolve_device_initial_sdk functions into a temp file and source it.
_tmpfn="$(mktemp)"
trap 'rm -f "$_tmpfn"' EXIT
awk '
  /^device_initial_sdk\(\)|^resolve_device_initial_sdk\(\)/{found=1}
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

check_resolve() {
  local dev="$1" current_dev="$2" current_sdk="$3" expected_code="$4" expected_out="$5"
  local got_out="" got_code=0
  got_out="$(resolve_device_initial_sdk "$dev" "$current_dev" "$current_sdk" 2>/dev/null)" || got_code=$?
  if [ "$got_code" -eq "$expected_code" ] && [ "$got_out" = "$expected_out" ]; then
    echo "PASS: resolve_device_initial_sdk '$dev' '$current_dev' '$current_sdk' -> code=$got_code, out='$got_out'"
    PASS=$((PASS + 1))
  else
    echo "FAIL: resolve_device_initial_sdk '$dev' '$current_dev' '$current_sdk' -> code=$got_code (want $expected_code), out='$got_out' (want '$expected_out')"
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

# Test resolve_device_initial_sdk:
# 1. Known device uses map directly regardless of current values
check_resolve oriole "" "" 0 "31"
check_resolve oriole "oriole" "31" 0 "31"
check_resolve panther "other" "99" 0 "33"

# 2. Unknown device with matching current_dev preserves current_sdk
check_resolve "custom_pixel" "custom_pixel" "35" 0 "35"

# 3. Unknown device with mismatched current_dev fails closed (code 1, empty out)
check_resolve "custom_pixel" "old_pixel" "35" 1 ""

# 4. Unknown device with empty current_sdk fails closed (code 1, empty out)
check_resolve "custom_pixel" "custom_pixel" "" 1 ""

# 5. Unknown device with no previous data fails closed (code 1, empty out)
check_resolve "unknown" "" "" 1 ""

echo ""
echo "Results: $PASS passed, $FAIL failed."
[ "$FAIL" -eq 0 ]
