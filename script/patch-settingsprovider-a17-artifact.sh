#!/usr/bin/env bash
# Retired entry: never rebuild or sign SettingsProvider.apk.
set -euo pipefail
echo "Fake Settings has been removed. Keep stock SettingsProvider.apk; patch framework.jar and services.jar only." >&2
exit 1
