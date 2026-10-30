#!/usr/bin/env python3
"""Verify decompiled services.jar smali tree contains the exact Kaorios HMA visibility hook."""
from __future__ import annotations

import argparse
import importlib.util
from pathlib import Path


def load_patcher():
    path = Path(__file__).with_name("patch-services-a17.py")
    spec = importlib.util.spec_from_file_location("services_patcher", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def find_computer_engine(smali_root: Path) -> Path:
    matches = sorted(smali_root.rglob("com/android/server/pm/ComputerEngine.smali"))
    if len(matches) != 1:
        raise ValueError(
            "expected exactly one com/android/server/pm/ComputerEngine.smali below "
            f"{smali_root}; found {len(matches)}"
        )
    return matches[0]


def verify_caller(smali_root: Path) -> Path:
    computer_engine = find_computer_engine(smali_root)
    load_patcher().verify(computer_engine.read_bytes().decode("utf-8"))
    return computer_engine


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Verify services.jar smali contains the Kaorios HMA hook."
    )
    parser.add_argument("smali_root", type=Path)
    args = parser.parse_args()
    caller = verify_caller(args.smali_root)
    print(f"verified caller {caller}")


if __name__ == "__main__":
    main()
