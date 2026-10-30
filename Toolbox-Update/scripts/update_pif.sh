#!/bin/bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
exec python3 -I "$REPO_ROOT/Toolbox-Update/scripts/update_pif.py"
