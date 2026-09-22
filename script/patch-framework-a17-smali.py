#!/usr/bin/env python3
"""Patch and verify a decompiled framework smali tree in place, fail-closed."""
import argparse
import importlib.util
from pathlib import Path


def load_patcher():
    path = Path(__file__).with_name("patch-activitythread-a17.py")
    spec = importlib.util.spec_from_file_location("activitythread_patcher", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def load_verifier():
    path = Path(__file__).with_name("verify-framework-a17-hooks.py")
    spec = importlib.util.spec_from_file_location("framework_verifier", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def patch_root(smali_root: Path) -> tuple[Path, bool]:
    verifier = load_verifier()
    activity_thread = verifier.find_activity_thread(smali_root)
    original = activity_thread.read_bytes().decode("utf-8")
    patched, changed = load_patcher().patch(original)
    if changed:
        activity_thread.write_bytes(patched.encode("utf-8"))
    verifier.verify_caller(smali_root)
    return activity_thread, changed


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Patch ActivityThread in a decompiled framework tree, then verify it."
    )
    parser.add_argument("smali_root", type=Path)
    args = parser.parse_args()
    path, changed = patch_root(args.smali_root)
    print(f"{'patched' if changed else 'already patched'} {path}")


if __name__ == "__main__":
    main()
