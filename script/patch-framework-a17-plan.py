#!/usr/bin/env python3
"""DEX discovery, slot allocation, KaoriosHook validation and hash integrity verification."""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import struct
from pathlib import Path

ACTIVITY_THREAD_DESC = "Landroid/app/ActivityThread;"
KAORIOS_HOOK_DESC = "Landroid/security/kaorios/KaoriosHook;"
HOOK_METHOD_SIG = "initActivityThread(Ljava/lang/Object;)V"


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


def next_classes_slot(existing_dex_names: list[str]) -> str:
    """Determine the next valid classesN.dex slot without assuming classes7.dex."""
    max_slot = 1
    for name in existing_dex_names:
        if name == "classes.dex":
            max_slot = max(max_slot, 1)
        else:
            match = re.fullmatch(r"classes(\d+)\.dex", name)
            if match:
                max_slot = max(max_slot, int(match.group(1)))
    next_num = max_slot + 1
    return f"classes{next_num}.dex"


EXACT_HOOK_METHOD_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]initActivityThread\(Ljava/lang/Object;\)V[ \t]*(?:\r?\n|$)"
)


def compute_sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def validate_kaorios_hook_smali(smali_text: str) -> None:
    """Confirm KaoriosHook smali defines exactly one exact initActivityThread(Ljava/lang/Object;)V."""
    if "Landroid/security/kaorios/KaoriosHook;" not in smali_text:
        raise ValueError("smali does not define Landroid/security/kaorios/KaoriosHook;")
    matches = list(EXACT_HOOK_METHOD_RE.finditer(smali_text))
    if len(matches) == 0:
        raise ValueError(
            f"KaoriosHook is missing exact Object overload method: {HOOK_METHOD_SIG}"
        )
    if len(matches) > 1:
        raise ValueError(
            f"KaoriosHook has duplicate exact Object overload methods ({len(matches)})"
        )


def validate_kaorios_dex_dir(smali_dir: Path) -> Path:
    """Disassembled kaorios dex must contain exactly one KaoriosHook with Object overload."""
    matches = sorted(smali_dir.rglob("android/security/kaorios/KaoriosHook.smali"))
    if len(matches) == 0:
        raise ValueError("Kaorios DEX does not contain android/security/kaorios/KaoriosHook.smali")
    if len(matches) > 1:
        raise ValueError(f"multiple KaoriosHook.smali found in Kaorios DEX ({len(matches)})")
    hook_path = matches[0]
    validate_kaorios_hook_smali(hook_path.read_text(encoding="utf-8"))
    return hook_path


def plan_patch(unpacked_dir: Path) -> dict:
    """
    Inspect all classes*.dex in unpacked_dir.
    Identifies ActivityThread owner dex, KaoriosHook status, and computes initial hashes.
    """
    dex_paths = sorted(
        unpacked_dir.glob("classes*.dex"),
        key=lambda p: (1 if p.name == "classes.dex" else int(p.name[7:-4]))
    )
    if not dex_paths:
        raise ValueError("no classes*.dex found in framework directory")

    existing_names = [p.name for p in dex_paths]
    before_hashes = {}
    activity_owners = []
    kaorios_owners = []

    for p in dex_paths:
        data = p.read_bytes()
        before_hashes[p.name] = compute_sha256(data)
        classes = get_dex_classes(data)
        if ACTIVITY_THREAD_DESC in classes:
            activity_owners.append(p.name)
        if KAORIOS_HOOK_DESC in classes:
            kaorios_owners.append(p.name)

    if len(activity_owners) != 1:
        raise ValueError(
            f"expected exactly one DEX defining ActivityThread; found {len(activity_owners)}: {activity_owners}"
        )
    owner_dex = activity_owners[0]

    if len(kaorios_owners) > 1:
        raise ValueError(
            f"multiple KaoriosHook definitions detected across {kaorios_owners}"
        )
    elif len(kaorios_owners) == 1:
        kaorios_action = "replace"
        kaorios_slot = kaorios_owners[0]
    else:
        kaorios_action = "append"
        kaorios_slot = next_classes_slot(existing_names)

    if owner_dex == kaorios_slot:
        raise ValueError(
            f"ActivityThread owner DEX ({owner_dex}) also contains KaoriosHook; "
            "safe replacement requires class-level DEX merge which is currently unsupported"
        )

    return {
        "owner_dex": owner_dex,
        "kaorios_slot": kaorios_slot,
        "kaorios_action": kaorios_action,
        "before_hashes": before_hashes,
    }


def verify_untouched_hashes(
    before_hashes: dict[str, str],
    unpacked_dir: Path,
    owner_dex: str,
    kaorios_slot: str,
) -> None:
    """Assert all DEX files other than owner_dex and kaorios_slot are byte-identical."""
    for name, expected_hash in before_hashes.items():
        if name == owner_dex or name == kaorios_slot:
            continue
        p = unpacked_dir / name
        if not p.is_file():
            raise ValueError(f"untouched DEX {name} missing after patch")
        actual_hash = compute_sha256(p.read_bytes())
        if actual_hash != expected_hash:
            raise ValueError(
                f"untouched DEX {name} hash mismatch: before {expected_hash} != after {actual_hash}"
            )


def main() -> None:
    parser = argparse.ArgumentParser(description="Android 17 Framework patch planner and verifier.")
    subparsers = parser.add_subparsers(dest="command", required=True)

    # validate-kaorios-smali
    p_val = subparsers.add_parser("validate-kaorios-smali")
    p_val.add_argument("smali_dir", type=Path)

    # plan
    p_plan = subparsers.add_parser("plan")
    p_plan.add_argument("unpacked_dir", type=Path)
    p_plan.add_argument("--save-hashes", type=Path, default=None)

    # verify-untouched
    p_untouched = subparsers.add_parser("verify-untouched")
    p_untouched.add_argument("hashes_json", type=Path)
    p_untouched.add_argument("unpacked_dir", type=Path)
    p_untouched.add_argument("owner_dex", type=str)
    p_untouched.add_argument("kaorios_slot", type=str)

    args = parser.parse_args()

    if args.command == "validate-kaorios-smali":
        hook = validate_kaorios_dex_dir(args.smali_dir)
        print(f"valid KaoriosHook: {hook}")

    elif args.command == "plan":
        plan = plan_patch(args.unpacked_dir)
        if args.save_hashes:
            args.save_hashes.write_text(json.dumps(plan["before_hashes"], indent=2), encoding="utf-8")
        print(f"OWNER_DEX={plan['owner_dex']}")
        print(f"KAORIOS_SLOT={plan['kaorios_slot']}")
        print(f"KAORIOS_ACTION={plan['kaorios_action']}")

    elif args.command == "verify-untouched":
        before_hashes = json.loads(args.hashes_json.read_text(encoding="utf-8"))
        verify_untouched_hashes(before_hashes, args.unpacked_dir, args.owner_dex, args.kaorios_slot)
        print("OK: untouched DEX hashes verified")


if __name__ == "__main__":
    main()
