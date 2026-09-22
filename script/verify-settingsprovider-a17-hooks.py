#!/usr/bin/env python3
"""Verify decompiled SettingsProvider smali tree contains the exact Kaorios per-app spoof hook."""
from __future__ import annotations

import argparse
import importlib.util
from pathlib import Path


def load_patcher():
    path = Path(__file__).with_name("patch-settingsprovider-a17.py")
    spec = importlib.util.spec_from_file_location("settingsprovider_patcher", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def find_settings_provider(smali_root: Path) -> Path:
    matches = sorted(smali_root.rglob("com/android/providers/settings/SettingsProvider.smali"))
    if len(matches) != 1:
        raise ValueError(
            "expected exactly one com/android/providers/settings/SettingsProvider.smali below "
            f"{smali_root}; found {len(matches)}"
        )
    return matches[0]


def verify_caller(smali_root: Path) -> Path:
    settings_provider = find_settings_provider(smali_root)
    load_patcher().verify(settings_provider.read_bytes().decode("utf-8"))
    return settings_provider


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Verify SettingsProvider smali contains the Kaorios settings hook."
    )
    parser.add_argument("smali_root", type=Path)
    args = parser.parse_args()
    caller = verify_caller(args.smali_root)
    print(f"verified caller {caller}")


if __name__ == "__main__":
    main()
