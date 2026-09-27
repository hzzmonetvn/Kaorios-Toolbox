#!/usr/bin/env python3
"""Read-only SELinux service policy inspection for an extracted ROM or live system."""
from __future__ import annotations

import argparse
import re
import subprocess
from pathlib import Path

SERVICE = "kaorios_advanced_policy"
TYPE = SERVICE + "_service"


def policy_files(root: Path, pattern: str) -> list[Path]:
    if root == Path("/"):
        roots = [root / part for part in ("system/etc/selinux", "system_ext/etc/selinux",
                                           "product/etc/selinux", "vendor/etc/selinux", "etc/selinux")]
    else:
        roots = [root]
    return [path for base in roots if base.is_dir() for path in base.rglob(pattern) if path.is_file()]


def cil_forms(source: str) -> list[str]:
    source = "\n".join(line.split(";", 1)[0] for line in source.splitlines())
    forms, depth, start = [], 0, 0
    for index, char in enumerate(source):
        if char == "(":
            if depth == 0:
                start = index
            depth += 1
        elif char == ")" and depth:
            depth -= 1
            if depth == 0:
                forms.append(" ".join(source[start:index + 1].split()))
    return forms


def policy_permissions(root: Path, domain: str | None) -> tuple[dict[str, bool], bool]:
    checks = {"type": False, "add": False, "find": False, "binder": False}
    incomplete = False
    files = sorted(path for path in policy_files(root, "*") if
                   (path.suffix in (".te", ".cil") or path.name.endswith("sepolicy")))
    if not files:
        return checks, True
    for path in files:
        try:
            raw = path.read_bytes()
            if b"\0" in raw:
                incomplete = True
                continue
            source = raw.decode("utf-8")
        except (OSError, UnicodeError):
            incomplete = True
            continue
        if path.suffix == ".cil":
            for form in cil_forms(source):
                checks["type"] |= bool(re.fullmatch(rf"\(type\s+{TYPE}\)", form))
                match = re.fullmatch(r"\(allow\s+(\w+)\s+(\w+)\s+\((\w+)\s+\(([^()]*)\)\)\)", form)
                if match:
                    subject, target, klass, permissions = match.groups()
                    granted = set(permissions.split())
                    checks["add"] |= subject == "system_server" and target == TYPE and klass == "service_manager" and "add" in granted
                    checks["find"] |= domain is not None and subject == domain and target == TYPE and klass == "service_manager" and "find" in granted
                    checks["binder"] |= domain is not None and subject == domain and target == "system_server" and klass == "binder" and "call" in granted
        elif path.suffix == ".te":
            source = "\n".join(line.split("#", 1)[0] for line in source.splitlines())
            for statement in source.split(";"):
                statement = " ".join(statement.split())
                checks["type"] |= bool(re.fullmatch(rf"type\s+{TYPE}(?:\s*,[^;]+)?", statement))
                match = re.fullmatch(r"allow\s+(\w+)\s+(\w+):(\w+)\s+(?:\{([^{}]*)\}|(\w+))", statement)
                if match:
                    subject, target, klass, group, single = match.groups()
                    granted = set((group or single).split())
                    checks["add"] |= subject == "system_server" and target == TYPE and klass == "service_manager" and "add" in granted
                    checks["find"] |= domain is not None and subject == domain and target == TYPE and klass == "service_manager" and "find" in granted
                    checks["binder"] |= domain is not None and subject == domain and target == "system_server" and klass == "binder" and "call" in granted
                if domain and re.fullmatch(rf"binder_call\s*\(\s*{domain}\s*,\s*system_server\s*\)", statement):
                    checks["binder"] = True
        else:
            incomplete = True  # Binary policy needs an external policy analyzer.
    return checks, incomplete


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path("/"))
    parser.add_argument("--settings-domain", help="SettingsProvider SELinux domain for an extracted ROM")
    args = parser.parse_args()
    root = args.root
    domain = args.settings_domain
    if domain is not None and not re.fullmatch(r"[a-zA-Z_][a-zA-Z_0-9]*", domain):
        parser.error("invalid SettingsProvider domain")
    if domain is None and root == Path("/"):
        try:
            output = subprocess.run(["ps", "-AZ"], check=True, capture_output=True, text=True).stdout
            contexts = [line.split()[0] for line in output.splitlines() if "com.android.providers.settings" in line]
            if contexts:
                match = re.fullmatch(r"u:r:([^:]+):.*", contexts[0])
                domain = match.group(1) if match else None
        except (OSError, subprocess.CalledProcessError):
            pass

    contexts = set()
    mapping_incomplete = False
    for path in policy_files(root, "*service_contexts"):
        try:
            for line in path.read_text().splitlines():
                fields = line.split("#", 1)[0].split()
                if len(fields) == 2 and fields[0] == SERVICE:
                    contexts.add(fields[1])
        except (OSError, UnicodeError):
            mapping_incomplete = True
    mapping = "MISSING" if not contexts else "CONFLICT" if len(contexts) > 1 else "FOUND" if contexts == {f"u:object_r:{TYPE}:s0"} else "INVALID"
    checks, policy_incomplete = policy_permissions(root, domain)
    print(f"SERVICE_CONTEXT_MAPPING = {mapping}")
    print(f"SETTINGS_PROVIDER_DOMAIN = {domain or 'UNKNOWN'}")
    for label, key in (("POLICY_TYPE_DEFINED", "type"), ("SYSTEM_SERVER_ADD_ALLOWED", "add"),
                       ("SETTINGS_DOMAIN_FIND_ALLOWED", "find"), ("BINDER_CALL_PATH_ALLOWED", "binder")):
        print(f"{label} = {'YES' if checks[key] else 'UNKNOWN' if policy_incomplete or (key in ('find', 'binder') and domain is None) else 'NO'}")
    if mapping in ("INVALID", "CONFLICT") or (mapping == "MISSING" and not mapping_incomplete) or (not policy_incomplete and not all(checks[key] for key in ("type", "add"))) or (domain and not policy_incomplete and not all(checks[key] for key in ("find", "binder"))):
        verdict = "FAIL"
    elif mapping_incomplete or policy_incomplete or domain is None:
        verdict = "INCOMPLETE"
    else:
        verdict = "PASS"
    print(f"VERDICT = {verdict}")
    return {"PASS": 0, "FAIL": 1, "INCOMPLETE": 2}[verdict]


if __name__ == "__main__":
    raise SystemExit(main())
