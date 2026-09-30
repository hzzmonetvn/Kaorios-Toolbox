#!/usr/bin/env python3
"""Diagnose raw or explicitly decompiled ROM samples; never imply runtime support."""
import argparse
import json
from pathlib import Path
import re

SAMPLE_GENS = ["miui14-a13", "os1-a14", "os2-a15", "os3-a16", "os4-a17"]
DEFAULT_SAMPLE_DIRS = [str(Path(__file__).resolve().parents[1] / "tmp/fw")]
METHOD = re.compile(r"(?m)^\.method (?P<header>[^\n]+)\n(?P<body>.*?)^\.end method", re.S)
DEBUG = re.compile(r"^\.(?:line|local|end local|restart local|prologue|epilogue|param)\b")


def find_sample_base(custom_dir=None):
    for candidate in [custom_dir] if custom_dir else DEFAULT_SAMPLE_DIRS:
        if candidate and Path(candidate).is_dir():
            return str(Path(candidate).resolve())
    return None


def read_class(gen_dir, name):
    paths = sorted(Path(gen_dir).rglob(name + ".smali"))
    if not paths:
        return {"status": "NOT_FOUND"}, None
    contents = {p.read_text(encoding="utf-8") for p in paths}
    if len(contents) != 1:
        return {"status": "UNSUPPORTED_ANALYSIS", "reason": "conflicting class copies"}, None
    return {"status": "FOUND"}, contents.pop()


def methods(content, name):
    return [m for m in METHOD.finditer(content) if re.search(rf"\b{re.escape(name)}\(", m["header"])]


def facts(method):
    header, body = method["header"], method["body"]
    register = re.search(r"(?m)^\s*\.(locals|registers)\s+(\d+)", body)
    return {
        "descriptor": header.split()[-1],
        "static": "static" in header.split(),
        "return_count": len(re.findall(r"(?m)^\s*return-object\s+", body)),
        "register_directive": register.group(0).strip() if register else None,
        "getCallingUid": "Landroid/os/Binder;->getCallingUid()I" in body,
        "clearCallingIdentity": "Landroid/os/Binder;->clearCallingIdentity()J" in body,
    }


def audit_computer_engine(gen_dir):
    result, content = read_class(gen_dir, "ComputerEngine")
    if content is None:
        return result
    overloads = [facts(m) for m in methods(content, "shouldFilterApplication")]
    descriptors = [m["descriptor"] for m in overloads]
    result.update(overloads=overloads, overload_count=len(overloads),
                  has_iizz=any("IIZZ)Z" in d for d in descriptors),
                  has_iiz=any("IIZ)Z" in d for d in descriptors),
                  has_ii=any("II)Z" in d for d in descriptors))
    return result


def audit_settings_provider(gen_dir):
    result, content = read_class(gen_dir, "SettingsProvider")
    if content is None:
        return result
    calls = methods(content, "call")
    queries = methods(content, "query")
    legacy = [m for m in METHOD.finditer(content)
              if re.search(r"\b(?:getGlobalSetting|getSecureSetting|getSystemSetting)\(", m["header"])]
    result.update(
        calls=[facts(m) for m in calls], queries=[facts(m) for m in queries],
        has_getDeviceId=any("getDeviceId()I" in m["body"] for m in calls),
        has_getRequestingUserId=any("getRequestingUserId(" in m["body"] for m in calls),
        legacy_candidates=[facts(m) for m in legacy],
        hook_status="DIFFERENT_LAYOUT" if not calls or not queries else "FOUND")
    return result


def audit_apps_filter(gen_dir):
    base, bc = read_class(gen_dir, "AppsFilterBase")
    impl, ic = read_class(gen_dir, "AppsFilterImpl")
    return {"status": "FOUND" if bc is not None and ic is not None else "NOT_FOUND",
            "base_status": base["status"], "impl_status": impl["status"],
            "base_declared": bool(bc and methods(bc, "shouldFilterApplication")),
            "impl_declared": bool(ic and methods(ic, "shouldFilterApplication"))}


def populated_leaf(body):
    # Only debug/blank/comment lines may separate the array write and return.
    lines = [line.split("#", 1)[0].strip() for line in body.splitlines()]
    lines = [line for line in lines if line and not DEBUG.match(line)]
    for previous, current in zip(lines, lines[1:]):
        write = re.fullmatch(r"aput-object\s+[vp]\d+,\s*([vp]\d+),\s*[vp]\d+", previous)
        if write and re.fullmatch(r"return-object\s+" + write[1], current):
            return True
    return False


def audit_keystore_spi(gen_dir):
    result, content = read_class(gen_dir, "AndroidKeyStoreSpi")
    if content is None:
        return result
    chains = methods(content, "engineGetCertificateChain")
    result.update(overloads=[facts(m) for m in chains],
                  return_count=sum(facts(m)["return_count"] for m in chains),
                  return_registers=[reg for m in chains for reg in re.findall(r"return-object\s+([vp]\d+)", m["body"])],
                  has_populated_array_path=any(populated_leaf(m["body"]) for m in chains),
                  leaf_layout="FOUND" if any(populated_leaf(m["body"]) for m in chains) else "DIFFERENT_LAYOUT")
    return result


def audit_instrumentation(gen_dir):
    result, content = read_class(gen_dir, "Instrumentation")
    if content is None:
        return result
    overloads = []
    for m in methods(content, "newApplication"):
        detail = facts(m)
        detail["context_parameter"] = "Landroid/content/Context;" in detail["descriptor"]
        overloads.append(detail)
    result.update(overloads=overloads, overload_count=len(overloads))
    return result


def audit_system_server(gen_dir):
    result, content = read_class(gen_dir, "SystemServer")
    if content is None:
        return result
    runs = methods(content, "run")
    result.update(run_present=bool(runs), runs=[facts(m) for m in runs],
                  looper_anchor=any("Landroid/os/Looper;->loop()V" in m["body"] for m in runs),
                  start_other_services_anchor=any("->startOtherServices(" in m["body"] for m in runs))
    return result


def audit_package_manager(gen_dir):
    result, content = read_class(gen_dir, "ApplicationPackageManager")
    if content is not None:
        result["hasSystemFeature"] = [facts(m) for m in methods(content, "hasSystemFeature")]
    candidates = []
    for name in ("ApplicationPackageManager", "ComputerEngine", "PackageManagerService"):
        status, source = read_class(gen_dir, name)
        if source is None:
            continue
        for method_name in ("getInstallerPackageName", "getInstallSourceInfo", "getInstallSource"):
            for m in methods(source, method_name):
                candidates.append(dict(class_name=name, **facts(m)))
    result["installer_candidates"] = candidates
    return result


AUDITORS = {"computer_engine": audit_computer_engine, "settings_provider": audit_settings_provider,
            "apps_filter": audit_apps_filter, "keystore_spi": audit_keystore_spi,
            "instrumentation": audit_instrumentation, "system_server": audit_system_server,
            "package_manager": audit_package_manager}


def run_audit(sample_base):
    base = Path(sample_base)
    gens = SAMPLE_GENS if any((base / g).exists() for g in SAMPLE_GENS) else sorted(p.name for p in base.iterdir() if p.is_dir())
    results = {}
    for gen in gens:
        root = base / gen
        smali = next(root.rglob("*.smali"), None) if root.is_dir() else None
        archives = sorted(str(p.relative_to(root)) for p in root.rglob("*") if p.suffix.lower() in (".jar", ".apk")) if root.is_dir() else []
        status = "FOUND" if smali else "RAW_ARCHIVE_NOT_DECOMPILED" if archives else "SAMPLE_MISSING"
        results[gen] = {"status": status, "archives": archives}
        results[gen].update({name: audit(root) if smali else {"status": status} for name, audit in AUDITORS.items()})
    return results


def print_markdown_table(results):
    print("ROM sample diagnostics; FOUND describes source presence, not verified hooks or device support.\n")
    for gen, data in results.items():
        print(f"{gen}: {data['status']}" + (" — diagnostic skipped" if data["status"] != "FOUND" else ""))
        if data["status"] == "FOUND":
            for name in AUDITORS:
                print(f"  {name}: {json.dumps(data[name], sort_keys=True)}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sample-dir", help="Explicit decompiled tree containing generation directories")
    parser.add_argument("--format", choices=["table", "json"], default="table")
    parser.add_argument("--strict", action="store_true", help="Fail if any requested sample lacks usable smali")
    args = parser.parse_args()
    base = find_sample_base(args.sample_dir)
    results = run_audit(base) if base else {"samples": {"status": "SAMPLE_MISSING"}}
    if args.format == "json":
        print(json.dumps(results, indent=2))
    else:
        print_markdown_table(results)
    return 1 if args.strict and (not results or any(d["status"] != "FOUND" for d in results.values())) else 0


if __name__ == "__main__":
    raise SystemExit(main())
