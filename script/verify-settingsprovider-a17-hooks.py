#!/usr/bin/env python3
"""Retired SettingsProvider verifier; stock APK requires no spoof-hook check."""
from __future__ import annotations

from pathlib import Path

RETIRED_MESSAGE = "Fake Settings has been removed. Use stock SettingsProvider.apk; patch framework.jar and services.jar only."


def verify_caller(smali_root: Path) -> Path:
    raise ValueError(RETIRED_MESSAGE)


if __name__ == "__main__":
    raise SystemExit(RETIRED_MESSAGE)
