#!/usr/bin/env python3
"""Generic DEX discovery and hash integrity verification for services.jar."""
from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import re
from pathlib import Path


_spec = importlib.util.spec_from_file_location(
    "framework_artifact_plan", Path(__file__).with_name("patch-framework-a17-plan.py")
)
_framework_plan = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(_framework_plan)


def get_dex_classes(data: bytes) -> set[str]:
    """Use the shared fail-closed DEX descriptor parser."""
    return _framework_plan.get_dex_classes(data, strict=True)


def compute_sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def find_owners(unpacked_dir: Path, target_descs: list[str]) -> tuple[dict[str, str], dict[str, str]]:
    dex_files = sorted(
        [
            p
            for p in unpacked_dir.iterdir()
            if p.is_file() and re.fullmatch(r"classes(?:[2-9]|[1-9]\d+)?\.dex", p.name)
        ]
    )
    if not dex_files:
        raise ValueError(f"no classes*.dex found in {unpacked_dir}")

    dex_classes: dict[str, set[str]] = {}
    before_hashes: dict[str, str] = {}
    for p in dex_files:
        data = p.read_bytes()
        before_hashes[p.name] = compute_sha256(data)
        dex_classes[p.name] = get_dex_classes(data)

    target_owners: dict[str, str] = {}
    for desc in target_descs:
        matched = [dex_name for dex_name, classes in dex_classes.items() if desc in classes]
        if len(matched) != 1:
            raise ValueError(
                f"expected exactly one DEX defining {desc}; found {len(matched)}: {matched}"
            )
        target_owners[desc] = matched[0]

    return target_owners, before_hashes


def find_owner_dex(unpacked_dir: Path, target_desc: str) -> tuple[str, dict[str, str]]:
    owners, hashes = find_owners(unpacked_dir, [target_desc])
    return owners[target_desc], hashes


def verify_untouched(before_hashes: dict[str, str], unpacked_dir: Path, modified_dexes: set[str]) -> None:
    for name, expected_hash in before_hashes.items():
        if name in modified_dexes:
            continue
        p = unpacked_dir / name
        if not p.is_file():
            raise ValueError(f"untouched DEX {name} missing after patch")
        actual_hash = compute_sha256(p.read_bytes())
        if actual_hash != expected_hash:
            raise ValueError(
                f"hash mismatch for untouched DEX {name}: expected {expected_hash}, got {actual_hash}"
            )


def main() -> None:
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(dest="subcommand", required=True)

    plan_parser = subparsers.add_parser("plan")
    plan_parser.add_argument("unpacked_dir", type=Path)
    plan_parser.add_argument("target_descs", nargs="+", type=str)
    plan_parser.add_argument("--save-hashes", type=Path)

    verify_parser = subparsers.add_parser("verify-untouched")
    verify_parser.add_argument("hashes_json", type=Path)
    verify_parser.add_argument("unpacked_dir", type=Path)
    verify_parser.add_argument("modified_dexes", nargs="+", type=str)

    args = parser.parse_args()

    if args.subcommand == "plan":
        owners, before_hashes = find_owners(args.unpacked_dir, args.target_descs)
        if args.save_hashes:
            args.save_hashes.write_text(json.dumps(before_hashes, indent=2), encoding="utf-8")
        unique_owners = sorted(list(set(owners.values())))
        if len(args.target_descs) == 1:
            print(f"OWNER_DEX={owners[args.target_descs[0]]}")
        for desc, dex in owners.items():
            short_name = desc.strip("L;").split("/")[-1]
            print(f"OWNER_DEX_{short_name}={dex}")
        print(f"MODIFIED_DEXES={','.join(unique_owners)}")

    elif args.subcommand == "verify-untouched":
        before_hashes = json.loads(args.hashes_json.read_text(encoding="utf-8"))
        modified_set = set()
        for item in args.modified_dexes:
            for part in item.split(","):
                part = part.strip()
                if part:
                    modified_set.add(part)
        verify_untouched(before_hashes, args.unpacked_dir, modified_set)
        print("OK: untouched DEX hashes verified")


if __name__ == "__main__":
    main()
