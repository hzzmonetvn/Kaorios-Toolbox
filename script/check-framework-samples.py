#!/usr/bin/env python3
"""Audit ROM sample decompiled frameworks for known structural patterns.

Verifies:
1. ComputerEngine: shouldFilterApplication method overloads (II, IIZ, IIZZ)
2. SettingsProvider.call: caller identification anchors (getDeviceId vs getRequestingUserId)
3. AppsFilterBase vs AppsFilterImpl: shouldFilterApplication declaration vs inheritance
4. AndroidKeyStoreSpi: engineGetCertificateChain return paths (leaf populated vs early null)
5. Instrumentation: newApplication return path dominance
"""

import argparse
import glob
import json
import os
import re
import sys

DEFAULT_SAMPLE_DIRS = [
    os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "work", "fw")),
    os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "tmp", "fw")),
    os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "work", "fw")),
    os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "tmp", "fw")),
    "/home/opc/toolbox/work/fw",
    "/home/opc/toolbox/tmp/fw",
]

SAMPLE_GENS = ["miui14-a13", "os1-a14", "os2-a15", "os3-a16", "os4-a17"]


def find_sample_base(custom_dir=None):
    if custom_dir:
        if os.path.isdir(custom_dir):
            return os.path.abspath(custom_dir)
        return None
    for candidate in DEFAULT_SAMPLE_DIRS:
        if os.path.isdir(candidate):
            # Check if it has any sample gen subdirs
            subdirs = [d for d in os.listdir(candidate) if os.path.isdir(os.path.join(candidate, d))]
            if any(g in subdirs for g in SAMPLE_GENS):
                return candidate
    return None


def audit_computer_engine(gen_dir):
    matches = glob.glob(f"{gen_dir}/**/ComputerEngine.smali", recursive=True)
    if not matches:
        return {"status": "NOT_FOUND", "overloads": []}
    with open(matches[0], "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()
    method_lines = re.findall(r"\.method[^\n]*shouldFilterApplication\([^\n]*", content)
    overloads = []
    has_iizz = False
    has_iiz = False
    has_ii = False
    for m in method_lines:
        sig_match = re.search(r"shouldFilterApplication\((.*?)\)(.)", m)
        if sig_match:
            params = sig_match.group(1)
            overloads.append(params)
            if params.endswith("IIZZ"):
                has_iizz = True
            elif params.endswith("IIZ"):
                has_iiz = True
            elif params.endswith("II"):
                has_ii = True
    return {
        "status": "OK",
        "has_iizz": has_iizz,
        "has_iiz": has_iiz,
        "has_ii": has_ii,
        "overload_count": len(method_lines),
    }


def audit_settings_provider(gen_dir):
    matches = glob.glob(f"{gen_dir}/**/SettingsProvider.smali", recursive=True)
    if not matches:
        return {"status": "NOT_FOUND"}
    # Find the one in providers/settings
    target_smali = None
    for m in matches:
        if "providers/settings" in m or "SettingsProvider" in m:
            target_smali = m
            break
    if not target_smali:
        target_smali = matches[0]

    with open(target_smali, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    call_match = re.search(r"\.method[^\n]*call\([^\n]*\).*?\.end method", content, re.DOTALL)
    if not call_match:
        return {"status": "NO_CALL_METHOD"}

    call_body = call_match.group(0)
    has_get_device_id = "getDeviceId()I" in call_body
    has_requesting_user_id = "getRequestingUserId(" in call_body

    return {
        "status": "OK",
        "has_getDeviceId": has_get_device_id,
        "has_getRequestingUserId": has_requesting_user_id,
    }


def audit_apps_filter(gen_dir):
    base_matches = glob.glob(f"{gen_dir}/**/AppsFilterBase.smali", recursive=True)
    impl_matches = glob.glob(f"{gen_dir}/**/AppsFilterImpl.smali", recursive=True)

    base_declared = False
    if base_matches:
        with open(base_matches[0], "r", encoding="utf-8", errors="ignore") as f:
            base_declared = bool(re.search(r"\.method[^\n]*shouldFilterApplication\(", f.read()))

    impl_declared = False
    if impl_matches:
        with open(impl_matches[0], "r", encoding="utf-8", errors="ignore") as f:
            impl_declared = bool(re.search(r"\.method[^\n]*shouldFilterApplication\(", f.read()))

    return {
        "status": "OK" if (base_matches and impl_matches) else "PARTIAL",
        "base_declared": base_declared,
        "impl_declared": impl_declared,
    }


def audit_keystore_spi(gen_dir):
    matches = glob.glob(f"{gen_dir}/**/AndroidKeyStoreSpi.smali", recursive=True)
    if not matches:
        return {"status": "NOT_FOUND"}

    with open(matches[0], "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    m = re.search(r"\.method[^\n]*engineGetCertificateChain\([^\n]*\).*?\.end method", content, re.DOTALL)
    if not m:
        return {"status": "NO_METHOD"}

    method_body = m.group(0)
    returns = re.findall(r"return-object\s+([vp0-9]+)", method_body)
    has_populated_array_return = False
    # Check if aput-object precedes one of the return-objects
    if "aput-object" in method_body and len(returns) >= 2:
        has_populated_array_return = True

    return {
        "status": "OK",
        "return_count": len(returns),
        "return_registers": returns,
        "has_populated_array_path": has_populated_array_return,
    }


def audit_instrumentation(gen_dir):
    matches = glob.glob(f"{gen_dir}/**/Instrumentation.smali", recursive=True)
    if not matches:
        return {"status": "NOT_FOUND"}

    with open(matches[0], "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    overloads = re.findall(r"\.method[^\n]*newApplication\([^\n]*\).*?\.end method", content, re.DOTALL)
    details = []
    for ov in overloads:
        sig = ov.split("\n")[0].strip()
        rets = re.findall(r"return-object\s+([vp0-9]+)", ov)
        details.append({"signature": sig, "returns": rets})

    return {
        "status": "OK",
        "overload_count": len(overloads),
        "overloads": details,
    }


def run_audit(sample_base):
    results = {}
    gens = [g for g in SAMPLE_GENS if os.path.isdir(os.path.join(sample_base, g))]
    if not gens:
        # Check any subdirs
        gens = [d for d in os.listdir(sample_base) if os.path.isdir(os.path.join(sample_base, d))]

    for gen in sorted(gens):
        gen_dir = os.path.join(sample_base, gen)
        results[gen] = {
            "computer_engine": audit_computer_engine(gen_dir),
            "settings_provider": audit_settings_provider(gen_dir),
            "apps_filter": audit_apps_filter(gen_dir),
            "keystore_spi": audit_keystore_spi(gen_dir),
            "instrumentation": audit_instrumentation(gen_dir),
        }
    return results


def print_markdown_table(results):
    print("# ROM Sample Framework Structural Audit\n")

    print("## 1. ComputerEngine & SettingsProvider\n")
    print("| Generation | ComputerEngine Overloads | has IIZZ | SettingsProvider: getDeviceId | SettingsProvider: reqUserId |")
    print("|---|---|:---:|:---:|:---:|")
    for gen, data in results.items():
        ce = data["computer_engine"]
        sp = data["settings_provider"]
        ce_iizz = "✓" if ce.get("has_iizz") else "✗"
        ce_count = ce.get("overload_count", 0)
        sp_dev = "✓" if sp.get("has_get_device_id") else "✗"
        sp_user = "✓" if sp.get("has_has_getRequestingUserId") or sp.get("has_getRequestingUserId") else "✗"
        print(f"| `{gen}` | {ce_count} overloads | {ce_iizz} | {sp_dev} | {sp_user} |")

    print("\n## 2. AppsFilter, Keystore SPI & Instrumentation\n")
    print("| Generation | AppsFilterBase Declared | AppsFilterImpl Declared | Keystore Returns | Instrumentation Overloads |")
    print("|---|:---:|:---:|---|:---:|")
    for gen, data in results.items():
        af = data["apps_filter"]
        ks = data["keystore_spi"]
        inst = data["instrumentation"]
        af_base = "✓" if af.get("base_declared") else "✗"
        af_impl = "✓ (declared)" if af.get("impl_declared") else "Inherited (base only)"
        ks_rets = f"{ks.get('return_count', 0)} ({', '.join(ks.get('return_registers', []))})"
        inst_cnt = inst.get("overload_count", 0)
        print(f"| `{gen}` | {af_base} | {af_impl} | {ks_rets} | {inst_cnt} overloads |")


def main():
    parser = argparse.ArgumentParser(description="Audit framework sample smali patterns across ROM generations.")
    parser.add_argument("--sample-dir", help="Path to sample base directory (containing miui14-a13, os1-a14, etc.)")
    parser.add_argument("--format", choices=["table", "json"], default="table", help="Output format (default: table)")
    args = parser.parse_args()

    sample_base = find_sample_base(args.sample_dir)
    if not sample_base:
        print("INFO: No framework samples found in work/fw or tmp/fw.")
        print("To populate samples, extract and decompile reference ROM framework jars into work/fw/<generation>/.")
        print("Skipping framework sample audit (non-fatal).")
        sys.exit(0)

    results = run_audit(sample_base)

    if args.format == "json":
        print(json.dumps(results, indent=2))
    else:
        print_markdown_table(results)


if __name__ == "__main__":
    main()
