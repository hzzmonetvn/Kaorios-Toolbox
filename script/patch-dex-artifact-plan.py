#!/usr/bin/env python3
"""Generic DEX discovery and hash integrity verification for services.jar and SettingsProvider.apk."""
from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path


def read_uleb128(data: bytes, offset: int) -> tuple[int, int]:
    result = 0
    shift = 0
    while True:
        b = data[offset]
        offset += 1
        result |= (b & 0x7F) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, offset


def get_dex_classes(data: bytes) -> set[str]:
    """Parse class_def_item descriptors from DEX binary header."""
    if len(data) < 0x70 or not data.startswith(b"dex\n"):
        return set()
    try:
        string_ids_size, string_ids_off = struct.unpack_from("<II", data, 0x38)
        type_ids_size, type_ids_off = struct.unpack_from("<II", data, 0x40)
        class_defs_size, class_defs_off = struct.unpack_from("<II", data, 0x60)

        def get_string(idx: int) -> str:
            if idx >= string_ids_size:
                return ""
            str_off = struct.unpack_from("<I", data, string_ids_off + idx * 4)[0]
            _, cur = read_uleb128(data, str_off)
            null_idx = data.find(b"\x00", cur)
            if null_idx == -1:
                return ""
            return data[cur:null_idx].decode("utf-8", errors="replace")

        def get_type_desc(type_idx: int) -> str:
            if type_idx >= type_ids_size:
                return ""
            desc_idx = struct.unpack_from("<I", data, type_ids_off + type_idx * 4)[0]
            return get_string(desc_idx)

        classes = set()
        for i in range(class_defs_size):
            class_idx = struct.unpack_from("<I", data, class_defs_off + i * 32)[0]
            desc = get_type_desc(class_idx)
            if desc:
                classes.add(desc)
        return classes
    except Exception:
        return set()


def compute_sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def find_owners(unpacked_dir: Path, target_descs: list[str]) -> tuple[dict[str, str], dict[str, str]]:
    dex_files = sorted(
        [
            p
            for p in unpacked_dir.iterdir()
            if p.is_file() and p.name.startswith("classes") and p.name.endswith(".dex")
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
