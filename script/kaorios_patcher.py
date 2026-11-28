#!/usr/bin/env python3
"""Unified Kaorios Toolbox ROM patcher & verifier (clean-stock Android 13-17)."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import re
import sys
import tempfile
import zipfile

# Ensure sibling imports work when invoked from any working directory or via python3 -I.
_SCRIPT_DIR = str(Path(__file__).resolve().parent)
if _SCRIPT_DIR not in sys.path:
    sys.path.insert(0, _SCRIPT_DIR)

from dex_packager import (  # noqa: E402
    DexIndex,
    DexPackagingError,
    baksmali_disassemble,
    check_payload_collisions,
    discover_smali_toolchain,
    find_dex_owners,
    index_archive_dexes,
    next_dex_slot,
    repack_archive_with_dex_replacements,
    smali_assemble,
    validate_payload_dex,
)
from kaorios_hook_spec import (  # noqa: E402
    COREPATCH_CLASSES,
    FORBIDDEN_HOOK_TOKENS,
    FRAMEWORK_CORE_SPECS,
    PAYLOAD_REQUIRED_CLASSES,
    SEPOLICY_CONTEXT_LINE,
    SEPOLICY_SERVICE_NAME,
    SEPOLICY_SERVICE_TYPE,
    SERVICES_CORE_SPECS,
    SERVICES_SECURE_FLAG_SPECS,
    SETTINGS_PROVIDER_SPECS,
    class_descriptor_to_relpath,
    required_target_classes_for_framework,
    required_target_classes_for_services,
)
from smali_engine import (  # noqa: E402
    SmaliPatchError,
    TargetNotFoundError,
    patch_corepatch_framework_apk_verifier,
    patch_corepatch_framework_signing_details,
    patch_corepatch_services_pms_utils,
    patch_framework_f1_instrumentation,
    patch_framework_f2_activity_thread,
    patch_framework_f3_system_properties,
    patch_framework_f4_has_system_feature,
    patch_framework_f5_generate_keypair,
    patch_framework_f6_certificate_chain,
    patch_framework_f7_name_value_cache,
    patch_services_computer_engine,
    patch_services_s1_system_server,
    patch_services_s2_hide_app_list,
    patch_services_s3_installer_source,
    patch_services_s4_fakegapps,
    patch_services_s5_secure_flag,
    patch_settings_provider_call,
)


class PatcherError(RuntimeError):
    """Top-level patcher workflow failure."""


def _parse_callee(callee: str) -> tuple[str, str, str]:
    """Split ``Lcls;->name(params)ret`` into ``(cls, name, proto)``."""
    arrow = callee.index("->")
    paren = callee.index("(", arrow)
    return callee[:arrow], callee[arrow + 2 : paren], callee[paren:]


def _write_report(path: str | None, report: dict) -> None:
    if not path:
        return
    out = Path(path)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def _edit_smali_file(smali_root: Path, cls_desc: str, fn) -> list[str]:
    rel = class_descriptor_to_relpath(cls_desc)
    target = smali_root / rel
    if not target.is_file():
        raise TargetNotFoundError(f"Expected smali file missing: {rel}")
    lines = target.read_text(encoding="utf-8").splitlines(keepends=True)
    updated = fn(lines, rel)
    target.write_text("".join(updated), encoding="utf-8")
    return updated


def cmd_inspect_payload(args: argparse.Namespace) -> int:
    payload = Path(args.payload)
    dex = validate_payload_dex(payload)
    summary = {
        "payload": str(payload),
        "dex_version": dex.version,
        "api_hint": dex.api_hint,
        "defined_classes_count": len(dex.defined_classes),
        "defined_methods_count": len(dex.defined_methods),
        "required_kept_classes": sorted(PAYLOAD_REQUIRED_CLASSES.keys()),
    }
    if args.json:
        print(json.dumps(summary, indent=2, sort_keys=True))
    else:
        print(
            f"VALID payload {payload}: DEX v{dex.version:03d} (api_hint={dex.api_hint}), "
            f"{len(dex.defined_classes)} classes, {len(dex.defined_methods)} methods; "
            f"all {len(PAYLOAD_REQUIRED_CLASSES)} R8-kept classes verified."
        )
    return 0


def cmd_patch_framework(args: argparse.Namespace) -> int:
    input_jar = Path(args.input)
    payload_dex = Path(args.payload)
    output_jar = Path(args.output)

    payload_idx = validate_payload_dex(payload_dex)
    stock_indexes = index_archive_dexes(input_jar)
    if not stock_indexes:
        raise PatcherError(f"No classes*.dex found in {input_jar}")

    # Clean-stock check: forbid existing Kaorios classes in stock framework.jar
    for dex_entry, didx in stock_indexes.items():
        overlap = didx.defined_classes & payload_idx.defined_classes
        if overlap:
            raise PatcherError(
                f"{input_jar} ({dex_entry}) is not clean stock; already contains classes: {', '.join(sorted(overlap))}"
            )
    collisions = check_payload_collisions(stock_indexes, payload_idx)
    if collisions:
        raise PatcherError(f"Payload class collision with stock framework: {', '.join(collisions)}")

    target_classes = required_target_classes_for_framework(enable_corepatch=args.enable_corepatch)
    owners = find_dex_owners(stock_indexes, target_classes)
    missing = [c for c in target_classes if not any(c in v for v in owners.values())]
    if missing:
        raise TargetNotFoundError(
            f"Stock {input_jar} missing required target classes: {', '.join(missing)}"
        )

    toolchain = discover_smali_toolchain()
    replaced_dexes: dict[str, bytes] = {}
    hook_dispatch = {
        "Landroid/app/Instrumentation;": patch_framework_f1_instrumentation,
        "Landroid/app/ActivityThread;": patch_framework_f2_activity_thread,
        "Landroid/os/SystemProperties;": patch_framework_f3_system_properties,
        "Landroid/app/ApplicationPackageManager;": patch_framework_f4_has_system_feature,
        "Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;": patch_framework_f5_generate_keypair,
        "Landroid/security/keystore2/AndroidKeyStoreSpi;": patch_framework_f6_certificate_chain,
        "Landroid/provider/Settings$NameValueCache;": patch_framework_f7_name_value_cache,
        "Landroid/content/pm/SigningDetails;": patch_corepatch_framework_signing_details,
        "Landroid/util/apk/ApkSignatureVerifier;": patch_corepatch_framework_apk_verifier,
    }

    applied_classes: list[str] = []
    with zipfile.ZipFile(input_jar, "r") as zin, tempfile.TemporaryDirectory(
        prefix="kaorios_fw_"
    ) as tmpdir:
        tmp_path = Path(tmpdir)
        for dex_entry, cls_list in owners.items():
            dex_file = tmp_path / dex_entry
            dex_file.write_bytes(zin.read(dex_entry))
            smali_dir = tmp_path / f"smali_{dex_entry}"
            api = args.api if args.api is not None else stock_indexes[dex_entry].api_hint
            baksmali_disassemble(toolchain, dex_file, smali_dir, api=api)
            for cls_desc in cls_list:
                _edit_smali_file(smali_dir, cls_desc, hook_dispatch[cls_desc])
                applied_classes.append(cls_desc)
            rebuilt_dex = tmp_path / f"rebuilt_{dex_entry}"
            smali_assemble(toolchain, smali_dir, rebuilt_dex, api=api)
            replaced_dexes[dex_entry] = rebuilt_dex.read_bytes()

    payload_slot = next_dex_slot(list(stock_indexes.keys()))
    appended_dexes = {payload_slot: payload_dex.read_bytes()}
    repack_archive_with_dex_replacements(
        input_jar,
        output_jar,
        replaced_dexes=replaced_dexes,
        appended_dexes=appended_dexes,
        store_dex_uncompressed=False,
    )

    verify_report = verify_framework_archive(
        output_jar, payload_dex=payload_dex, expect_corepatch=args.enable_corepatch
    )
    report = {
        "action": "patch-framework",
        "input": str(input_jar),
        "output": str(output_jar),
        "payload_slot": payload_slot,
        "touched_dex_entries": sorted(owners.keys()),
        "patched_classes": sorted(applied_classes),
        "enable_corepatch": bool(args.enable_corepatch),
        "verification": verify_report,
    }
    _write_report(args.report_json, report)
    if not verify_report["ok"]:
        raise PatcherError(f"Post-patch verification failed: {verify_report['errors']}")
    print(
        f"Patched framework.jar -> {output_jar} (payload={payload_slot}, "
        f"dex_edited={len(owners)}, classes={len(applied_classes)}, verified=OK)"
    )
    return 0


def cmd_patch_services(args: argparse.Namespace) -> int:
    input_jar = Path(args.input)
    output_jar = Path(args.output)

    stock_indexes = index_archive_dexes(input_jar)
    if not stock_indexes:
        raise PatcherError(f"No classes*.dex found in {input_jar}")

    # Clean-stock check
    search_classes = required_target_classes_for_services(
        enable_secure_flag=args.enable_secure_flag,
        enable_corepatch=args.enable_corepatch,
    )
    owners = find_dex_owners(stock_indexes, search_classes)
    # Check required SystemServer + ComputerEngine presence
    all_owned = {c for clist in owners.values() for c in clist}
    for req in ("Lcom/android/server/SystemServer;", "Lcom/android/server/pm/ComputerEngine;"):
        if req not in all_owned:
            raise TargetNotFoundError(f"Stock {input_jar} missing required class: {req}")

    toolchain = discover_smali_toolchain()
    replaced_dexes: dict[str, bytes] = {}
    s2_patched_via_ce = False
    s3_patched_via_ce = False

    with zipfile.ZipFile(input_jar, "r") as zin, tempfile.TemporaryDirectory(
        prefix="kaorios_svc_"
    ) as tmpdir:
        tmp_path = Path(tmpdir)
        disassembled: dict[str, tuple[Path, int]] = {}

        def _ensure_disassembled(dex_entry: str) -> tuple[Path, int]:
            if dex_entry not in disassembled:
                dex_file = tmp_path / dex_entry
                dex_file.write_bytes(zin.read(dex_entry))
                sdir = tmp_path / f"smali_{dex_entry}"
                api = args.api if args.api is not None else stock_indexes[dex_entry].api_hint
                baksmali_disassemble(toolchain, dex_file, sdir, api=api)
                disassembled[dex_entry] = (sdir, api)
            return disassembled[dex_entry]

        # 1) SystemServer (S1)
        for dex_entry, clist in owners.items():
            if "Lcom/android/server/SystemServer;" in clist:
                sdir, _ = _ensure_disassembled(dex_entry)
                _edit_smali_file(sdir, "Lcom/android/server/SystemServer;", patch_services_s1_system_server)

        # 2) ComputerEngine (S2, S3, S4)
        for dex_entry, clist in owners.items():
            if "Lcom/android/server/pm/ComputerEngine;" in clist:
                sdir, _ = _ensure_disassembled(dex_entry)
                rel = class_descriptor_to_relpath("Lcom/android/server/pm/ComputerEngine;")
                p = sdir / rel
                lines = p.read_text(encoding="utf-8").splitlines(keepends=True)
                updated, ce_status = patch_services_computer_engine(lines, rel)
                p.write_text("".join(updated), encoding="utf-8")
                s2_patched_via_ce = s2_patched_via_ce or ce_status["S2"]
                s3_patched_via_ce = s3_patched_via_ce or ce_status["S3"]

        # Fallback S2 -> AppsFilterBase if ComputerEngine lacked filter method
        if not s2_patched_via_ce:
            s2_fallback_done = False
            for dex_entry, clist in owners.items():
                if "Lcom/android/server/pm/AppsFilterBase;" in clist:
                    sdir, _ = _ensure_disassembled(dex_entry)
                    _edit_smali_file(
                        sdir, "Lcom/android/server/pm/AppsFilterBase;", patch_services_s2_hide_app_list
                    )
                    s2_fallback_done = True
            if not s2_fallback_done:
                raise TargetNotFoundError("Neither ComputerEngine nor AppsFilterBase had shouldFilterApplication*")

        # Fallback S3 -> IPackageManagerBase if ComputerEngine lacked getInstallerPackageName
        if not s3_patched_via_ce:
            s3_fallback_done = False
            for dex_entry, clist in owners.items():
                if "Lcom/android/server/pm/IPackageManagerBase;" in clist:
                    sdir, _ = _ensure_disassembled(dex_entry)
                    _edit_smali_file(
                        sdir, "Lcom/android/server/pm/IPackageManagerBase;", patch_services_s3_installer_source
                    )
                    s3_fallback_done = True
            if not s3_fallback_done:
                raise TargetNotFoundError("Neither ComputerEngine nor IPackageManagerBase had getInstallerPackageName")

        # 3) Optional S5 (Disable FLAG_SECURE)
        if args.enable_secure_flag:
            s5_done = False
            for spec in SERVICES_SECURE_FLAG_SPECS:
                for dex_entry, clist in owners.items():
                    if spec.target_class in clist:
                        sdir, _ = _ensure_disassembled(dex_entry)
                        try:
                            _edit_smali_file(sdir, spec.target_class, patch_services_s5_secure_flag)
                            s5_done = True
                        except TargetNotFoundError:
                            if spec.target_class == "Lcom/android/server/wm/WindowState;":
                                raise
            if not s5_done:
                raise TargetNotFoundError("WindowState.isSecureLocked not found for --enable-secure-flag")

        # 4) Optional S6 (CorePatch)
        if args.enable_corepatch:
            pms_done = False
            for dex_entry, clist in owners.items():
                if COREPATCH_CLASSES["services"][0] in clist:
                    sdir, _ = _ensure_disassembled(dex_entry)
                    _edit_smali_file(sdir, COREPATCH_CLASSES["services"][0], patch_corepatch_services_pms_utils)
                    pms_done = True
            if not pms_done:
                raise TargetNotFoundError("PackageManagerServiceUtils not found for --enable-corepatch")

        # Reassemble all touched DEXes
        for dex_entry, (sdir, api) in disassembled.items():
            rebuilt_dex = tmp_path / f"rebuilt_{dex_entry}"
            smali_assemble(toolchain, sdir, rebuilt_dex, api=api)
            replaced_dexes[dex_entry] = rebuilt_dex.read_bytes()

    repack_archive_with_dex_replacements(
        input_jar, output_jar, replaced_dexes=replaced_dexes, store_dex_uncompressed=False
    )

    verify_report = verify_services_archive(
        output_jar,
        expect_secure_flag=args.enable_secure_flag,
        expect_corepatch=args.enable_corepatch,
    )
    report = {
        "action": "patch-services",
        "input": str(input_jar),
        "output": str(output_jar),
        "touched_dex_entries": sorted(replaced_dexes.keys()),
        "enable_secure_flag": bool(args.enable_secure_flag),
        "enable_corepatch": bool(args.enable_corepatch),
        "verification": verify_report,
    }
    _write_report(args.report_json, report)
    if not verify_report["ok"]:
        raise PatcherError(f"Post-patch services verification failed: {verify_report['errors']}")
    print(
        f"Patched services.jar -> {output_jar} (dex_edited={len(replaced_dexes)}, verified=OK)"
    )
    return 0


def cmd_patch_settings_provider(args: argparse.Namespace) -> int:
    input_apk = Path(args.input)
    output_apk = Path(args.output)

    stock_indexes = index_archive_dexes(input_apk)
    if not stock_indexes:
        raise PatcherError(f"No classes*.dex found in {input_apk}")

    target_cls = SETTINGS_PROVIDER_SPECS[0].target_class
    owners = find_dex_owners(stock_indexes, [target_cls])
    if not owners:
        raise TargetNotFoundError(f"{input_apk} missing {target_cls}")

    toolchain = discover_smali_toolchain()
    replaced_dexes: dict[str, bytes] = {}
    with zipfile.ZipFile(input_apk, "r") as zin, tempfile.TemporaryDirectory(
        prefix="kaorios_sp_"
    ) as tmpdir:
        tmp_path = Path(tmpdir)
        for dex_entry in owners:
            dex_file = tmp_path / dex_entry
            dex_file.write_bytes(zin.read(dex_entry))
            sdir = tmp_path / f"smali_{dex_entry}"
            api = args.api if args.api is not None else stock_indexes[dex_entry].api_hint
            baksmali_disassemble(toolchain, dex_file, sdir, api=api)
            _edit_smali_file(sdir, target_cls, patch_settings_provider_call)
            rebuilt = tmp_path / f"rebuilt_{dex_entry}"
            smali_assemble(toolchain, sdir, rebuilt, api=api)
            replaced_dexes[dex_entry] = rebuilt.read_bytes()

    repack_archive_with_dex_replacements(
        input_apk,
        output_apk,
        replaced_dexes=replaced_dexes,
        store_dex_uncompressed=True,
    )
    verify_report = verify_settings_provider_archive(output_apk)
    report = {
        "action": "patch-settings-provider",
        "input": str(input_apk),
        "output": str(output_apk),
        "touched_dex_entries": sorted(replaced_dexes.keys()),
        "verification": verify_report,
    }
    _write_report(args.report_json, report)
    if not verify_report["ok"]:
        raise PatcherError(f"Post-patch SettingsProvider verification failed: {verify_report['errors']}")
    print(f"Patched SettingsProvider.apk -> {output_apk} (verified=OK)")
    return 0


def _collect_all_method_refs(indexes: dict[str, DexIndex]) -> set[tuple[str, str, str]]:
    refs: set[tuple[str, str, str]] = set()
    for didx in indexes.values():
        refs.update(didx.referenced_methods)
    return refs


def _check_forbidden_tokens(indexes: dict[str, DexIndex], payload_slot: str | None = None) -> list[str]:
    errors: list[str] = []
    forbidden_parsed = {_parse_callee(tok) for tok in FORBIDDEN_HOOK_TOKENS if "->" in tok}
    for dex_entry, didx in indexes.items():
        if dex_entry == payload_slot:
            continue
        for ref in didx.referenced_methods:
            if ref[0] == "Landroid/security/kaorios/KaoriosHooks;":
                errors.append(f"{dex_entry}: forbidden reference to obfuscated KaoriosHooks -> {ref[1]}")
            if ref in forbidden_parsed:
                errors.append(f"{dex_entry}: forbidden call to no-op hook {ref[0]}->{ref[1]}{ref[2]}")
    return errors


def verify_framework_archive(
    framework_jar: Path, payload_dex: Path | None = None, expect_corepatch: bool = False
) -> dict:
    """Verify patched ``framework.jar`` hook references and payload DEX classes."""
    indexes = index_archive_dexes(framework_jar)
    errors: list[str] = []
    if not indexes:
        return {"ok": False, "errors": [f"No DEX files in {framework_jar}"]}

    all_defined: set[str] = set()
    payload_slot = None
    for slot, didx in indexes.items():
        if "Landroid/security/kaorios/KaoriosHook;" in didx.defined_classes:
            payload_slot = slot
        all_defined.update(didx.defined_classes)

    if payload_slot is None:
        errors.append("Payload classes.dex missing (android.security.kaorios.KaoriosHook not defined)")
    else:
        payload_idx = indexes[payload_slot]
        for cls_desc, mlist in PAYLOAD_REQUIRED_CLASSES.items():
            if cls_desc not in payload_idx.defined_classes:
                errors.append(f"{payload_slot}: missing R8-kept class {cls_desc}")
                continue
            for m_name, m_proto in mlist:
                if (cls_desc, m_name, m_proto) not in payload_idx.defined_methods:
                    errors.append(f"{payload_slot}: missing R8-kept method {cls_desc}->{m_name}{m_proto}")

        if payload_dex is not None:
            expected_bytes = payload_dex.read_bytes()
            with zipfile.ZipFile(framework_jar, "r") as zf:
                actual_bytes = zf.read(payload_slot)
            if actual_bytes != expected_bytes:
                errors.append(f"{payload_slot} bytes differ from --payload {payload_dex}")

    all_refs = _collect_all_method_refs(indexes)
    hooks_checked: dict[str, bool] = {}
    for spec in FRAMEWORK_CORE_SPECS:
        ref = _parse_callee(spec.callee)
        present = ref in all_refs
        hooks_checked[spec.hook_id] = present
        if not present:
            errors.append(f"Missing hook call {spec.hook_id}: {spec.callee}")

    if expect_corepatch:
        for cls_desc in COREPATCH_CLASSES["framework"]:
            if cls_desc not in all_defined:
                errors.append(f"CorePatch target class missing: {cls_desc}")

    errors.extend(_check_forbidden_tokens(indexes, payload_slot=payload_slot))
    return {
        "ok": not errors,
        "payload_slot": payload_slot,
        "hooks": hooks_checked,
        "errors": errors,
    }


def verify_services_archive(
    services_jar: Path, expect_secure_flag: bool = False, expect_corepatch: bool = False
) -> dict:
    """Verify patched ``services.jar`` hook references."""
    indexes = index_archive_dexes(services_jar)
    errors: list[str] = []
    if not indexes:
        return {"ok": False, "errors": [f"No DEX files in {services_jar}"]}

    all_refs = _collect_all_method_refs(indexes)
    all_defined = {c for d in indexes.values() for c in d.defined_classes}
    hooks_checked: dict[str, bool] = {}

    for spec in SERVICES_CORE_SPECS:
        ref = _parse_callee(spec.callee)
        present = ref in all_refs
        hooks_checked[spec.hook_id] = present
        if not present:
            errors.append(f"Missing hook call {spec.hook_id}: {spec.callee}")

    if expect_secure_flag:
        ref = _parse_callee(SERVICES_SECURE_FLAG_SPECS[0].callee)
        present = ref in all_refs
        hooks_checked["S5_is_secure_flag"] = present
        if not present:
            errors.append(f"Missing optional FLAG_SECURE hook: {SERVICES_SECURE_FLAG_SPECS[0].callee}")

    if expect_corepatch:
        for cls_desc in COREPATCH_CLASSES["services"]:
            if cls_desc not in all_defined:
                errors.append(f"CorePatch target class missing: {cls_desc}")

    errors.extend(_check_forbidden_tokens(indexes))
    return {"ok": not errors, "hooks": hooks_checked, "errors": errors}


def verify_settings_provider_archive(apk_path: Path) -> dict:
    """Verify patched ``SettingsProvider.apk`` calls ``AdvancedPolicyService.filterSettingsCall``."""
    indexes = index_archive_dexes(apk_path)
    if not indexes:
        return {"ok": False, "errors": [f"No DEX files in {apk_path}"]}
    all_refs = _collect_all_method_refs(indexes)
    ref = _parse_callee(SETTINGS_PROVIDER_SPECS[0].callee)
    present = ref in all_refs
    errors = [] if present else [f"Missing hook call: {SETTINGS_PROVIDER_SPECS[0].callee}"]
    errors.extend(_check_forbidden_tokens(indexes))
    return {"ok": not errors, "hooks": {SETTINGS_PROVIDER_SPECS[0].hook_id: present}, "errors": errors}


def cmd_verify(args: argparse.Namespace) -> int:
    report: dict = {"ok": True, "targets": {}}
    if args.framework:
        res = verify_framework_archive(
            Path(args.framework),
            payload_dex=Path(args.payload) if args.payload else None,
            expect_corepatch=args.expect_corepatch,
        )
        report["targets"]["framework"] = res
        if not res["ok"]:
            report["ok"] = False
    if args.services:
        res = verify_services_archive(
            Path(args.services),
            expect_secure_flag=args.expect_secure_flag,
            expect_corepatch=args.expect_corepatch,
        )
        report["targets"]["services"] = res
        if not res["ok"]:
            report["ok"] = False
    if args.settings_provider:
        res = verify_settings_provider_archive(Path(args.settings_provider))
        report["targets"]["settings_provider"] = res
        if not res["ok"]:
            report["ok"] = False

    if not report["targets"]:
        raise PatcherError("Nothing to verify; specify --framework, --services, or --settings-provider")

    _write_report(args.report_json, report)
    for name, res in report["targets"].items():
        state = "OK" if res["ok"] else f"FAIL ({len(res['errors'])} errors)"
        print(f"[verify:{name}] {state}")
        for err in res["errors"]:
            print(f"  - {err}", file=sys.stderr)
    return 0 if report["ok"] else 1


def check_sepolicy_files(
    service_contexts_path: Path,
    policy_path: Path,
    settings_domain: str = "system_app",
) -> list[str]:
    """Validate Android 17 SELinux service_contexts and TE/CIL rules for kaorios_advanced_policy."""
    errors: list[str] = []
    if not service_contexts_path.is_file():
        return [f"Missing service_contexts file: {service_contexts_path}"]
    if not policy_path.is_file():
        return [f"Missing SELinux policy file: {policy_path}"]

    ctx_lines = [
        l.strip()
        for l in service_contexts_path.read_text(encoding="utf-8").splitlines()
        if l.strip() and not l.strip().startswith("#")
    ]
    if SEPOLICY_CONTEXT_LINE not in ctx_lines:
        # Accept arbitrary whitespace between service name and context
        pattern = re.compile(rf"^{re.escape(SEPOLICY_SERVICE_NAME)}\s+u:object_r:{re.escape(SEPOLICY_SERVICE_TYPE)}:s0$")
        if not any(pattern.match(line) for line in ctx_lines):
            errors.append(f"service_contexts missing '{SEPOLICY_CONTEXT_LINE}'")

    raw_policy = policy_path.read_text(encoding="utf-8")
    # Strip comments before inspecting rules so commented-out blocks never pass!
    is_cil = policy_path.suffix.lower() == ".cil"
    active_lines = []
    for line in raw_policy.splitlines():
        stripped = line.strip()
        if is_cil:
            if not stripped or stripped.startswith(";"):
                continue
        else:
            if not stripped or stripped.startswith("#"):
                continue
        active_lines.append(stripped)
    active = "\n".join(active_lines)

    # Check untrusted_app is NEVER granted allow on kaorios_advanced_policy_service
    for line in active_lines:
        if "untrusted_app" in line and SEPOLICY_SERVICE_TYPE in line:
            if line.startswith("allow ") or line.startswith("(allow "):
                errors.append(f"Security violation: untrusted_app granted access: {line}")

    if is_cil:
        required_patterns = (
            (rf"\(type\s+{SEPOLICY_SERVICE_TYPE}\)", f"Missing (type {SEPOLICY_SERVICE_TYPE})"),
            (rf"\(typeattributeset\s+service_manager_type\s+\([^)]*{SEPOLICY_SERVICE_TYPE}", "Missing service_manager_type attribute"),
            (rf"\(allow\s+system_server\s+{SEPOLICY_SERVICE_TYPE}\s+\(service_manager\s+\([^)]*\badd\b", "system_server missing service_manager add"),
            (rf"\(allow\s+{re.escape(settings_domain)}\s+{SEPOLICY_SERVICE_TYPE}\s+\(service_manager\s+\([^)]*\bfind\b", f"{settings_domain} missing service_manager find"),
            (rf"\(allow\s+{re.escape(settings_domain)}\s+system_server\s+\(binder\s+\([^)]*\bcall\b", f"{settings_domain} missing binder call to system_server"),
        )
    else:
        required_patterns = (
            (rf"^type\s+{SEPOLICY_SERVICE_TYPE}\b.*\bservice_manager_type\b", f"Missing type declaration for {SEPOLICY_SERVICE_TYPE}"),
            (rf"^allow\s+system_server\s+{SEPOLICY_SERVICE_TYPE}:service_manager\s+.*add", "system_server missing service_manager add"),
            (rf"^allow\s+{re.escape(settings_domain)}\s+{SEPOLICY_SERVICE_TYPE}:service_manager\s+.*find", f"{settings_domain} missing service_manager find"),
            (rf"(?:^binder_call\(\s*{re.escape(settings_domain)}\s*,\s*system_server\s*\)|^allow\s+{re.escape(settings_domain)}\s+system_server:binder\s+.*call)", f"{settings_domain} missing binder_call(..., system_server)"),
            (rf"^neverallow\s+untrusted_app_all\s+{SEPOLICY_SERVICE_TYPE}:service_manager\s+", "Missing untrusted_app_all neverallow boundary"),
        )

    for pat, msg in required_patterns:
        if not re.search(pat, active, re.MULTILINE):
            errors.append(msg)

    return errors


def cmd_check_sepolicy(args: argparse.Namespace) -> int:
    errors = check_sepolicy_files(
        Path(args.service_contexts), Path(args.policy), settings_domain=args.settings_domain
    )
    if errors:
        print(f"SEPolicy check FAILED ({len(errors)} issue(s)):", file=sys.stderr)
        for err in errors:
            print(f"  - {err}", file=sys.stderr)
        return 1
    print(
        f"SEPolicy check PASSED: {args.policy} + {args.service_contexts} "
        f"(settings_domain={args.settings_domain})"
    )
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        prog="kaorios_patcher.py",
        description="Unified Kaorios Toolbox ROM patcher & verifier (clean-stock Android 13-17).",
    )
    sub = parser.add_subparsers(dest="command", required=True)

    p_insp = sub.add_parser("inspect-payload", help="Verify R8-kept classes/methods inside payload classes.dex")
    p_insp.add_argument("--payload", required=True, help="Path to classes.dex from KaoriosFramework-release")
    p_insp.add_argument("--json", action="store_true", help="Emit JSON output")
    p_insp.set_defaults(func=cmd_inspect_payload)

    p_fw = sub.add_parser("patch-framework", help="Import payload DEX and patch clean stock framework.jar")
    p_fw.add_argument("--input", required=True, help="Clean stock framework.jar")
    p_fw.add_argument("--payload", required=True, help="Payload classes.dex")
    p_fw.add_argument("--output", required=True, help="Output patched framework.jar")
    p_fw.add_argument("--enable-corepatch", action="store_true", help="Also apply optional CorePatch bypasses")
    p_fw.add_argument("--api", type=int, default=None, help="Override baksmali/smali API level")
    p_fw.add_argument("--report-json", default=None, help="Write JSON report to path")
    p_fw.set_defaults(func=cmd_patch_framework)

    p_svc = sub.add_parser("patch-services", help="Patch clean stock services.jar")
    p_svc.add_argument("--input", required=True, help="Clean stock services.jar")
    p_svc.add_argument("--output", required=True, help="Output patched services.jar")
    p_svc.add_argument("--enable-secure-flag", action="store_true", help="Patch WindowState/WMS isSecureLocked()")
    p_svc.add_argument("--enable-corepatch", action="store_true", help="Also apply optional CorePatch bypasses")
    p_svc.add_argument("--api", type=int, default=None, help="Override baksmali/smali API level")
    p_svc.add_argument("--report-json", default=None, help="Write JSON report to path")
    p_svc.set_defaults(func=cmd_patch_services)

    p_sp = sub.add_parser(
        "patch-settings-provider",
        help="Optional: Patch clean stock SettingsProvider.apk for AdvancedPolicyService",
    )
    p_sp.add_argument("--input", required=True, help="Clean stock SettingsProvider.apk")
    p_sp.add_argument("--output", required=True, help="Output patched SettingsProvider.apk")
    p_sp.add_argument("--api", type=int, default=None, help="Override baksmali/smali API level")
    p_sp.add_argument("--report-json", default=None, help="Write JSON report to path")
    p_sp.set_defaults(func=cmd_patch_settings_provider)

    p_ver = sub.add_parser("verify", help="Verify patched framework.jar / services.jar / SettingsProvider.apk")
    p_ver.add_argument("--framework", default=None, help="Patched framework.jar")
    p_ver.add_argument("--services", default=None, help="Patched services.jar")
    p_ver.add_argument("--settings-provider", default=None, help="Patched SettingsProvider.apk")
    p_ver.add_argument("--payload", default=None, help="Expected payload classes.dex byte-match check")
    p_ver.add_argument("--expect-secure-flag", action="store_true")
    p_ver.add_argument("--expect-corepatch", action="store_true")
    p_ver.add_argument("--report-json", default=None, help="Write JSON verification report")
    p_ver.set_defaults(func=cmd_verify)

    p_se = sub.add_parser(
        "check-sepolicy",
        help="Validate Android 17 SELinux service_contexts + TE/CIL policy for kaorios_advanced_policy",
    )
    p_se.add_argument("--service-contexts", required=True, help="Path to service_contexts fragment")
    p_se.add_argument("--policy", required=True, help="Path to .te or .cil policy file")
    p_se.add_argument("--settings-domain", default="system_app", help="SELinux domain running SettingsProvider")
    p_se.set_defaults(func=cmd_check_sepolicy)

    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    try:
        return args.func(args)
    except (PatcherError, DexPackagingError, SmaliPatchError) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
