#!/system/bin/sh
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
MODDIR=${0%/*}
sh "$MODDIR/helperctl.sh" stop
rm -f /data/adb/boot-completed.d/kaorios_helper_hma.sh
# Keep user configuration and generated keys; removal is a separate explicit action.
