#!/usr/bin/env python3
"""Patch and verify a decompiled framework smali tree in place, fail-closed."""
import argparse
import importlib.util
from pathlib import Path


def load_verifier():
    path = Path(__file__).with_name("verify-framework-a17-hooks.py")
    spec = importlib.util.spec_from_file_location("framework_verifier", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def patch_root(smali_root: Path, update: bool = False) -> tuple[Path, bool]:
    verifier = load_verifier()
    patcher = verifier.load_framework_module('kaorios_patcher.py')
    manifest = verifier.load_framework_module('framework_hook_manifest.py').FRAMEWORK_HOOKS
    files = verifier.caller_files(smali_root)
    staged = []
    for relative, path in zip(manifest, files):
        original = path.read_bytes().decode('utf-8')
        status, patched, error = patcher.apply_target_patch(
            path.name, original, {path.name: getattr(patcher, manifest[relative])}, update=update)
        if status not in (patcher.PatchStatus.PATCHED, patcher.PatchStatus.ALREADY_PATCHED):
            raise ValueError(f'{path}: {error}')
        staged.append((path, patched, patched != original))
    # Validate every owner before mutating any input file.
    for path, patched, changed in staged:
        if changed:
            path.write_bytes(patched.encode('utf-8'))
    verifier.verify_caller(smali_root)
    return files[0], any(changed for _, _, changed in staged)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Patch all required callers in a decompiled framework tree, then verify them."
    )
    parser.add_argument("smali_root", type=Path)
    parser.add_argument("--update", action="store_true")
    args = parser.parse_args()
    path, changed = patch_root(args.smali_root, update=args.update)
    print(f"{'patched' if changed else 'already patched'} {path}")


if __name__ == "__main__":
    main()
