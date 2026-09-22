#!/usr/bin/env python3
"""Fail-closed Android 17 SettingsProvider smali patcher for Kaorios per-app settings spoof."""
import argparse
import re
from pathlib import Path

HOOK_TARGET = (
    "Landroid/security/kaorios/KaoriosHook;->"
    "filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;"
)

METHOD_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]"
    r"call"
    r"\(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;\)Landroid/os/Bundle;"
    r"[ \t]*(?:\r?\n|$)"
)

METHOD_END_RE = re.compile(r"(?m)^[ \t]*\.end method[ \t]*(?:\r?\n|$)")
REGISTERS_RE = re.compile(r"(?m)^(?P<indent>[ \t]*)\.registers[ \t]+(?P<num>\d+)[ \t]*(?:\r?\n|$)")
LOCALS_RE = re.compile(r"(?m)^(?P<indent>[ \t]*)\.locals[ \t]+(?P<num>\d+)[ \t]*(?:\r?\n|$)")

# Safe anchor: after getDeviceId() in SettingsProvider.call
DEVICE_ID_RE = re.compile(
    r"(?m)^[ \t]*invoke-virtual[ \t]+\{[^}]+\},[ \t]*"
    r"Lcom/android/providers/settings/SettingsProvider;->getDeviceId\(\)I"
    r"[ \t]*(?:\r?\n|$)"
    r"(?:^[ \t]*move-result[ \t]+[vp]\d+[ \t]*(?:\r?\n|$))?"
)


def _method_span(text: str) -> tuple[int, int]:
    matches = list(METHOD_RE.finditer(text))
    if len(matches) != 1:
        raise ValueError(
            "expected exactly one SettingsProvider.call(String, String, Bundle)Bundle; "
            f"found {len(matches)}"
        )
    end = METHOD_END_RE.search(text, matches[0].end())
    if end is None:
        raise ValueError("unterminated SettingsProvider.call method")
    return matches[0].start(), end.end()


def _hook_count(body: str) -> int:
    return body.count(HOOK_TARGET)


def verify(text: str) -> None:
    """Assert the final smali has exactly one hook in SettingsProvider.call satisfying Phase 19."""
    start, end = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count != 1:
        raise ValueError(f"expected exactly one filterSettingsCall hook; found {count}")

    anchor_match = DEVICE_ID_RE.search(body)
    if anchor_match is None:
        raise ValueError("safe SettingsProvider.call getDeviceId anchor not found")

    hook_idx = body.find(HOOK_TARGET)
    if hook_idx < anchor_match.end():
        raise ValueError("hook must appear AFTER getDeviceId() anchor")

    clear_id = re.search(r"invoke-static\s*\{[^}]*\},\s*Landroid/os/Binder;->clearCallingIdentity\(\)J", body)
    if clear_id and clear_id.start() < hook_idx:
        raise ValueError("hook must appear BEFORE Binder.clearCallingIdentity")

    pattern = (
        r"invoke-static\s*\{p1,\s*p2\},\s*"
        + re.escape(HOOK_TARGET)
        + r"\s*(?:\r?\n)+"
        + r"\s*move-result-object\s+(v\d+)\s*(?:\r?\n)+"
        + r"\s*if-eqz\s+\1,\s*(:\S+)\s*(?:\r?\n)+"
        + r"\s*return-object\s+\1\s*(?:\r?\n)+"
        + r"\s*\2"
    )
    if not re.search(pattern, body):
        raise ValueError("hook sequence does not match exact fail-closed return structure or register order")


def _find_injection_point(body: str) -> int:
    """Find position after getDeviceId() anchor in SettingsProvider.call."""
    device_id_match = DEVICE_ID_RE.search(body)
    if device_id_match is None:
        raise ValueError("safe SettingsProvider.call getDeviceId anchor not found")
    return device_id_match.end()


def patch(text: str) -> tuple[str, bool]:
    """Inject Kaorios settings spoof hook into SettingsProvider.call using register-safe allocation."""
    start, end = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count == 1:
        verify(text)
        return text, False
    if count > 1:
        raise ValueError("multiple filterSettingsCall hooks already present")

    newline = "\r\n" if "\r\n" in text else "\n"
    param_width = 4  # p0 (this), p1 (method), p2 (name), p3 (args)

    reg_match = REGISTERS_RE.search(body)
    loc_match = LOCALS_RE.search(body)
    updated_body = body

    if loc_match:
        current_locs = int(loc_match.group("num"))
        new_locs = current_locs + 1
        hook_reg = f"v{current_locs}"
        indent = loc_match.group("indent")
        new_loc_line = f"{indent}.locals {new_locs}{newline}"
        updated_body = (
            updated_body[:loc_match.start()]
            + new_loc_line
            + updated_body[loc_match.end():]
        )
    elif reg_match:
        current_regs = int(reg_match.group("num"))
        existing_locals = current_regs - param_width
        if existing_locals < 0:
            raise ValueError(f".registers {current_regs} is less than parameter count {param_width}")
        new_locs = existing_locals + 1
        hook_reg = f"v{existing_locals}"
        indent = reg_match.group("indent")
        new_loc_line = f"{indent}.locals {new_locs}{newline}"
        updated_body = (
            updated_body[:reg_match.start()]
            + new_loc_line
            + updated_body[reg_match.end():]
        )
    else:
        hook_reg = "v0"
        lines = updated_body.splitlines(keepends=True)
        method_line_end = len(lines[0])
        updated_body = (
            updated_body[:method_line_end]
            + f"    .locals 1{newline}"
            + updated_body[method_line_end:]
        )

    inj_offset = _find_injection_point(updated_body)
    hook_code = (
        f"    invoke-static {{p1, p2}}, {HOOK_TARGET}{newline}"
        f"    move-result-object {hook_reg}{newline}"
        f"    if-eqz {hook_reg}, :cond_kaorios_settings_stock{newline}"
        f"    return-object {hook_reg}{newline}"
        f"    :cond_kaorios_settings_stock{newline}"
    )

    patched_body = updated_body[:inj_offset] + hook_code + updated_body[inj_offset:]
    patched = text[:start] + patched_body + text[end:]
    verify(patched)
    return patched, True


def main() -> None:
    parser = argparse.ArgumentParser(description="Patch SettingsProvider in decompiled smali.")
    parser.add_argument("smali", type=Path)
    args = parser.parse_args()
    original = args.smali.read_bytes().decode("utf-8")
    patched, changed = patch(original)
    if changed:
        args.smali.write_bytes(patched.encode("utf-8"))
    print("patched" if changed else "already patched")


if __name__ == "__main__":
    main()
