#!/usr/bin/env bash
# Read-only SELinux deployment inspection.
set -euo pipefail
if ! command -v python3 >/dev/null 2>&1; then
    echo "VERDICT = INCOMPLETE (python3 unavailable)"
    exit 2
fi
exec python3 "$(dirname "$0")/check-advanced-policy-sepolicy.py" "$@"
