#!/usr/bin/env python3
"""DEX discovery, slot allocation, KaoriosHook validation and hash integrity verification."""
from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import re
import shutil
import struct
from pathlib import Path

ACTIVITY_THREAD_DESC = "Landroid/app/ActivityThread;"
KAORIOS_HOOK_DESC = "Landroid/security/kaorios/KaoriosHook;"
HOOK_METHOD_SIG = "initActivityThread(Ljava/lang/Object;)V"


def read_uleb128(data: bytes, offset: int) -> tuple[int, int]:
    result = 0
    shift = 0
    while shift < 35:
        b = data[offset]
        if shift == 28 and b > 0x0F:
            raise ValueError("invalid DEX ULEB128")
        offset += 1
        result |= (b & 0x7F) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    else:
        raise ValueError("invalid DEX ULEB128")
    return result, offset


def get_dex_classes(data: bytes, strict: bool = False) -> set[str]:
    """Parse class_def_item descriptors from DEX binary header."""
    if len(data) < 0x70 or not re.fullmatch(rb"dex\n\d{3}\x00", data[:8]):
        if strict:
            raise ValueError("invalid DEX header; class inventory cannot be verified")
        return set()
    try:
        string_ids_size, string_ids_off = struct.unpack_from("<II", data, 0x38)
        type_ids_size, type_ids_off = struct.unpack_from("<II", data, 0x40)
        class_defs_size, class_defs_off = struct.unpack_from("<II", data, 0x60)
        if strict:
            for count, offset, width in ((string_ids_size, string_ids_off, 4),
                                         (type_ids_size, type_ids_off, 4),
                                         (class_defs_size, class_defs_off, 32)):
                if offset + count * width > len(data) or count and offset < 0x70:
                    raise ValueError("invalid DEX descriptor table")

        def get_string(idx: int) -> str:
            if idx >= string_ids_size:
                if strict:
                    raise ValueError("invalid DEX string index")
                return ""
            str_off = struct.unpack_from("<I", data, string_ids_off + idx * 4)[0]
            if strict and not 0x70 <= str_off < len(data):
                raise ValueError("invalid DEX string offset")
            _, cur = read_uleb128(data, str_off)
            null_idx = data.find(b"\x00", cur)
            if null_idx == -1:
                if strict:
                    raise ValueError("unterminated DEX descriptor")
                return ""
            return data[cur:null_idx].decode("utf-8", errors="strict" if strict else "replace")

        def get_type_desc(type_idx: int) -> str:
            if type_idx >= type_ids_size:
                if strict:
                    raise ValueError("invalid DEX type index")
                return ""
            desc_idx = struct.unpack_from("<I", data, type_ids_off + type_idx * 4)[0]
            return get_string(desc_idx)

        classes = set()
        for i in range(class_defs_size):
            class_idx = struct.unpack_from("<I", data, class_defs_off + i * 32)[0]
            desc = get_type_desc(class_idx)
            if strict and not re.fullmatch(r"L[^.;\[\s]+;", desc):
                raise ValueError("invalid DEX class descriptor")
            if strict and desc in classes:
                raise ValueError("duplicate DEX class descriptor")
            if desc:
                classes.add(desc)
        return classes
    except Exception as error:
        if strict:
            raise ValueError("invalid DEX class inventory; safe import cannot be verified") from error
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
    if not re.search(r"(?m)^\.class\s+[^\r\n]*\bpublic\b[^\r\n]* Landroid/security/kaorios/KaoriosHook;[ \t]*$", smali_text):
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
    flags = set(matches[0][0].split("initActivityThread", 1)[0].split())
    if not {"public", "static"} <= flags or {"abstract", "native"} & flags:
        raise ValueError("KaoriosHook Object overload must be public static and implemented")


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


def required_caller_descriptors() -> set[str]:
    path = Path(__file__).with_name('framework_hook_manifest.py')
    spec = importlib.util.spec_from_file_location('framework_hook_manifest', path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return {'L' + relative[:-6] + ';' for relative in module.FRAMEWORK_HOOKS}


def plan_patch(unpacked_dir: Path, kaorios_dex: Path | None = None,
               require_all_callers: bool = False) -> dict:
    """
    Inspect all classes*.dex in unpacked_dir.
    Identifies ActivityThread owner dex, KaoriosHook status, and computes initial hashes.
    """
    dex_paths = sorted(
        (p for p in unpacked_dir.glob("classes*.dex")
         if re.fullmatch(r"classes(?:[1-9]\d*)?\.dex", p.name)),
        key=lambda p: (1 if p.name == "classes.dex" else int(p.name[7:-4]))
    )
    if not dex_paths:
        raise ValueError("no classes*.dex found in framework directory")

    existing_names = [p.name for p in dex_paths]
    before_hashes = {}
    activity_owners = []
    kaorios_owners = []
    dex_classes = {}

    for p in dex_paths:
        data = p.read_bytes()
        before_hashes[p.name] = compute_sha256(data)
        classes = get_dex_classes(data, strict=True)
        dex_classes[p.name] = classes
        if ACTIVITY_THREAD_DESC in classes:
            activity_owners.append(p.name)
        if KAORIOS_HOOK_DESC in classes:
            kaorios_owners.append(p.name)

    if len(activity_owners) != 1:
        raise ValueError(
            f"expected exactly one DEX defining ActivityThread; found {len(activity_owners)}: {activity_owners}"
        )
    owner_dex = activity_owners[0]
    descriptor_owners = {}
    for name, classes in dex_classes.items():
        for desc in classes:
            if desc in descriptor_owners:
                raise ValueError(f"duplicate class definition {desc} in {descriptor_owners[desc]} and {name}")
            descriptor_owners[desc] = name

    required = required_caller_descriptors()
    missing = required - descriptor_owners.keys()
    if require_all_callers and missing:
        raise ValueError(f'missing required framework caller owners: {sorted(missing)}')
    caller_owners = sorted({descriptor_owners[desc] for desc in required if desc in descriptor_owners})
    kaorios_slot = kaorios_owners[0] if kaorios_owners else next_classes_slot(existing_names)
    incoming = set()
    if kaorios_dex is None:
        if kaorios_owners:
            raise ValueError("replacement requires --kaorios-dex to verify that no ROM classes are lost")
    else:
        incoming = get_dex_classes(kaorios_dex.read_bytes(), strict=True)
        if KAORIOS_HOOK_DESC not in incoming:
            raise ValueError("supplied Kaorios DEX does not define KaoriosHook")
        if incoming & required:
            raise ValueError('supplied payload must not replace ActivityThread or other required framework callers')

    payload_owners = [name for name, classes in dex_classes.items() if classes & incoming]
    modified_dexes = sorted(set(caller_owners + payload_owners))
    if kaorios_slot == owner_dex or not payload_owners:
        modified_dexes = sorted(set(modified_dexes + [kaorios_slot]))
    if kaorios_slot not in dex_classes:
        kaorios_action = "append"
    elif dex_classes[kaorios_slot] - incoming or kaorios_slot == owner_dex:
        kaorios_action = "merge"
    else:
        kaorios_action = "replace"
    payload_owner_by_class = {
        desc: descriptor_owners[desc]
        for desc in incoming
        if desc in descriptor_owners
    }
    expected_classes = {}
    for name in modified_dexes:
        expected = dex_classes.get(name, set()) - incoming
        expected.update(
            desc for desc in incoming
            if payload_owner_by_class.get(desc, kaorios_slot) == name
        )
        expected_classes[name] = sorted(expected)

    return {
        "owner_dex": owner_dex,
        "caller_owners": caller_owners,
        "kaorios_slot": kaorios_slot,
        "kaorios_action": kaorios_action,
        "modified_dexes": modified_dexes,
        "payload_classes": sorted(incoming),
        "expected_classes": expected_classes,
        "before_hashes": before_hashes,
    }


def verify_untouched_hashes(
    before_hashes: dict[str, str],
    unpacked_dir: Path,
    owner_dex: str,
    kaorios_slot: str,
    modified_dexes: list[str] | None = None,
) -> None:
    """Assert every DEX outside the modified set remains byte-identical."""
    modified = set(modified_dexes or (owner_dex, kaorios_slot))
    for name, expected_hash in before_hashes.items():
        if name in modified:
            continue
        p = unpacked_dir / name
        if not p.is_file():
            raise ValueError(f"untouched DEX {name} missing after patch")
        actual_hash = compute_sha256(p.read_bytes())
        if actual_hash != expected_hash:
            raise ValueError(
                f"untouched DEX {name} hash mismatch: before {expected_hash} != after {actual_hash}"
            )


def verify_merged_classes(
    merged_dex_path: Path,
    before_dex_path: Path,
    incoming_dex_path: Path,
) -> None:
    """Assert merged DEX retains all non-payload ROM classes and contains all incoming payload classes."""
    before_classes = get_dex_classes(before_dex_path.read_bytes(), strict=True)
    incoming_classes = get_dex_classes(incoming_dex_path.read_bytes(), strict=True)
    merged_classes = get_dex_classes(merged_dex_path.read_bytes(), strict=True)

    retained = before_classes - incoming_classes
    missing_retained = retained - merged_classes
    if missing_retained:
        raise ValueError(
            f"merged DEX lost {len(missing_retained)} existing ROM classes: {sorted(missing_retained)[:5]}"
        )

    missing_incoming = incoming_classes - merged_classes
    if missing_incoming:
        raise ValueError(
            f"merged DEX missing {len(missing_incoming)} incoming payload classes: {sorted(missing_incoming)[:5]}"
        )


def import_payload(plan: dict, trees: Path, payload_tree: Path) -> None:
    """Replace only exact incoming descriptors, retaining every other class."""
    payload = set(plan["payload_classes"])
    sources = {}
    for path in payload_tree.rglob("*.smali"):
        if path.is_symlink() or not path.resolve().is_relative_to(payload_tree.resolve()):
            raise ValueError(f"unsafe payload smali path: {path}")
        match = re.search(r"(?m)^\.class\s+[^\r\n]*?(L[^\s]+;)\s*$", path.read_text(encoding="utf-8"))
        if not match or match[1] in sources:
            raise ValueError(f"invalid or duplicate payload class: {path}")
        sources[match[1]] = path
    if set(sources) != payload:
        raise ValueError("payload smali descriptors differ from DEX inventory")
    for desc in sources:
        relative = Path(desc[1:-1] + ".smali")
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError(f"unsafe payload descriptor path: {desc}")
    owners = {}
    for name in plan["modified_dexes"]:
        tree = trees / name
        tree.mkdir(parents=True, exist_ok=True)
        for path in tree.rglob("*.smali"):
            match = re.search(r"(?m)^\.class\s+[^\r\n]*?(L[^\s]+;)\s*$", path.read_text(encoding="utf-8"))
            if not match:
                raise ValueError(f"missing smali class descriptor: {path}")
            if match[1] in owners:
                raise ValueError(f"duplicate smali class definition: {match[1]}")
            owners[match[1]] = (name, path)
    for desc, source in sources.items():
        relative = Path(desc[1:-1] + ".smali")
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError("unsafe payload descriptor path")
        existing = owners.get(desc)
        destination = existing[1] if existing else trees / plan["kaorios_slot"] / relative
        if existing:
            destination.unlink()
        elif destination.exists():
            raise ValueError(f"payload path would overwrite retained ROM class: {destination}")
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)


def verify_plan(plan: dict, unpacked_dir: Path) -> None:
    """Verify exact inventories and byte identity for every untouched DEX."""
    for name, expected in plan["expected_classes"].items():
        actual = get_dex_classes((unpacked_dir / name).read_bytes(), strict=True)
        if actual != set(expected):
            raise ValueError(f"class inventory mismatch after patch in {name}")
    for name, digest in plan["before_hashes"].items():
        if name not in plan["modified_dexes"] and compute_sha256((unpacked_dir / name).read_bytes()) != digest:
            raise ValueError(f"untouched DEX {name} hash mismatch")


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
    p_plan.add_argument("--kaorios-dex", type=Path, default=None)
    p_plan.add_argument("--save-plan", type=Path)
    p_plan.add_argument('--require-all-callers', action='store_true')

    p_import = subparsers.add_parser("import-payload")
    p_import.add_argument("plan_json", type=Path)
    p_import.add_argument("trees", type=Path)
    p_import.add_argument("payload_tree", type=Path)

    p_verify = subparsers.add_parser("verify-plan")
    p_verify.add_argument("plan_json", type=Path)
    p_verify.add_argument("unpacked_dir", type=Path)

    # verify-untouched
    p_untouched = subparsers.add_parser("verify-untouched")
    p_untouched.add_argument("hashes_json", type=Path)
    p_untouched.add_argument("unpacked_dir", type=Path)
    p_untouched.add_argument("owner_dex", type=str)
    p_untouched.add_argument("kaorios_slot", type=str)

    # verify-merged-classes
    p_merged = subparsers.add_parser("verify-merged-classes")
    p_merged.add_argument("merged_dex", type=Path)
    p_merged.add_argument("--before-dex", type=Path, required=True)
    p_merged.add_argument("--incoming-dex", type=Path, required=True)

    args = parser.parse_args()

    if args.command == "validate-kaorios-smali":
        hook = validate_kaorios_dex_dir(args.smali_dir)
        print(f"valid KaoriosHook: {hook}")

    elif args.command == "plan":
        plan = plan_patch(args.unpacked_dir, args.kaorios_dex, args.require_all_callers)
        if args.save_hashes:
            args.save_hashes.write_text(json.dumps(plan["before_hashes"], indent=2), encoding="utf-8")
        if args.save_plan:
            args.save_plan.write_text(json.dumps(plan, indent=2), encoding="utf-8")
        print(f"MODIFIED_DEXES={','.join(plan['modified_dexes'])}")
        print(f"OWNER_DEX={plan['owner_dex']}")
        print(f"KAORIOS_SLOT={plan['kaorios_slot']}")
        print(f"KAORIOS_ACTION={plan['kaorios_action']}")

    elif args.command == "import-payload":
        import_payload(json.loads(args.plan_json.read_text(encoding="utf-8")), args.trees, args.payload_tree)

    elif args.command == "verify-plan":
        verify_plan(json.loads(args.plan_json.read_text(encoding="utf-8")), args.unpacked_dir)
        print("OK: exact DEX inventories and untouched hashes verified")

    elif args.command == "verify-untouched":
        before_hashes = json.loads(args.hashes_json.read_text(encoding="utf-8"))
        verify_untouched_hashes(before_hashes, args.unpacked_dir, args.owner_dex, args.kaorios_slot)
        print("OK: untouched DEX hashes verified")

    elif args.command == "verify-merged-classes":
        verify_merged_classes(args.merged_dex, args.before_dex, args.incoming_dex)
        print("OK: merged DEX classes verified")


if __name__ == "__main__":
    main()
