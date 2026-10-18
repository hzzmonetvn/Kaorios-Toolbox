#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
python3 -I "$ROOT/Toolbox-Update/scripts/test_update_pif.py"
