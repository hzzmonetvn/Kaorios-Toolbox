#!/usr/bin/env python3
"""Verify the final disassembled framework contains the exact A17 process hook."""
from __future__ import annotations

import argparse
import importlib.util
import re
from pathlib import Path

REQUIRED_HOOK_METHODS = [
    "initActivityThread(Ljava/lang/Object;)V",
    "initSystemServer()V",
    "shouldHideAppListForCaller(ILjava/lang/String;I)Z",
    "filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;",
    "initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;",
    "CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;",
    "initContext(Landroid/content/Context;)V",
    "hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;",
]

REQUIRED_ADVANCED_POLICY_CLASSES = [
    "android/security/kaorios/settings/IAdvancedPolicyService.smali",
    "android/security/kaorios/settings/IAdvancedPolicyService$Stub.smali",
    "android/security/kaorios/settings/IAdvancedPolicyService$Stub$Proxy.smali",
    "android/security/kaorios/settings/AdvancedPolicyClient.smali",
    "android/security/kaorios/settings/AdvancedPolicyService.smali",
    "android/security/kaorios/settings/AdvancedPolicySnapshot.smali",
    "android/security/kaorios/settings/ServiceManagerBridge.smali",
    "android/security/kaorios/settings/SettingDecisionParcel.smali",
]


def load_patcher():
    path = Path(__file__).with_name("patch-activitythread-a17.py")
    spec = importlib.util.spec_from_file_location("activitythread_patcher", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def find_activity_thread(smali_root: Path) -> Path:
    matches = sorted(smali_root.rglob("android/app/ActivityThread.smali"))
    if len(matches) != 1:
        raise ValueError(
            "expected exactly one android/app/ActivityThread.smali below "
            f"{smali_root}; found {len(matches)}"
        )
    return matches[0]


def find_kaorios_hook(smali_root: Path) -> Path:
    matches = sorted(smali_root.rglob("android/security/kaorios/KaoriosHook.smali"))
    if len(matches) != 1:
        raise ValueError(
            "expected exactly one android/security/kaorios/KaoriosHook.smali below "
            f"{smali_root}; found {len(matches)}"
        )
    return matches[0]


def verify_kaorios_hook(smali_root: Path) -> Path:
    hook_file = find_kaorios_hook(smali_root)
    text = hook_file.read_bytes().decode("utf-8")

    for signature in REQUIRED_HOOK_METHODS:
        pattern = re.compile(
            r"(?m)^\.method[^\r\n]*[ \t]"
            + re.escape(signature)
            + r"[ \t]*(?:\r?\n|$)"
        )
        matches = list(pattern.finditer(text))
        if len(matches) != 1:
            raise ValueError(
                f"expected exactly one KaoriosHook method {signature}; found {len(matches)}"
            )

    return hook_file

def verify_advanced_policy_classes(smali_root: Path) -> list[Path]:
    verified = []
    missing = []
    for rel_path in REQUIRED_ADVANCED_POLICY_CLASSES:
        matches = list(smali_root.rglob(rel_path))
        if len(matches) == 0:
            missing.append(rel_path)
        else:
            verified.append(matches[0])
    if missing:
        raise ValueError(
            f"Kaorios framework DEX missing required AdvancedPolicy Binder classes: {missing}"
        )
    return verified


def verify_caller(smali_root: Path) -> Path:
    activity_thread = find_activity_thread(smali_root)
    load_patcher().verify(activity_thread.read_bytes().decode("utf-8"))
    return activity_thread


def verify_root(
    smali_root: Path,
    require_callee: bool = True,
    require_advanced_policy: bool = True,
) -> tuple[Path, Path | None, list[Path]]:
    caller = verify_caller(smali_root)
    callee = None
    advanced_classes: list[Path] = []
    if require_callee:
        callee = verify_kaorios_hook(smali_root)
    if require_advanced_policy:
        advanced_classes = verify_advanced_policy_classes(smali_root)
    return caller, callee, advanced_classes


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Verify framework smali contains both caller and callee A17 hooks."
    )
    parser.add_argument("smali_root", type=Path)
    parser.add_argument(
        "--caller-only",
        action="store_true",
        help="Only verify ActivityThread caller hook",
    )
    parser.add_argument(
        "--skip-advanced-policy",
        action="store_true",
        help="Skip checking AdvancedPolicy Binder classes",
    )
    args = parser.parse_args()
    caller, callee, advanced = verify_root(
        args.smali_root,
        require_callee=not args.caller_only,
        require_advanced_policy=not (args.caller_only or args.skip_advanced_policy),
    )
    if callee:
        print(f"verified caller {caller}, callee {callee}, and {len(advanced)} AdvancedPolicy classes")
    else:
        print(f"verified caller {caller}")


if __name__ == "__main__":
    main()
