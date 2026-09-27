#!/usr/bin/env python3
"""Fail-closed Android 17 SettingsProvider smali patcher for Kaorios per-app settings spoof."""
from __future__ import annotations
import argparse
import re
from pathlib import Path

HOOK_TARGET = (
    "Landroid/security/kaorios/KaoriosHook;->"
    "filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;"
)
QUERY_HOOK_TARGET = (
    "Landroid/security/kaorios/KaoriosHook;->"
    "filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;"
)

METHOD_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]"
    r"call"
    r"\(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;\)Landroid/os/Bundle;"
    r"[ \t]*(?:\r?\n|$)"
)
QUERY_METHOD_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]"
    r"query"
    r"\(Landroid/net/Uri;\[Ljava/lang/String;Ljava/lang/String;\[Ljava/lang/String;Ljava/lang/String;\)Landroid/database/Cursor;"
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

    # Verify query hook if present
    q_span = _query_method_span(text)
    if q_span is not None:
        q_body = text[q_span[0]:q_span[1]]
        q_count = _query_hook_count(q_body)
        returns = re.findall(r"(?m)^[ \t]*return-object[ \t]+[vp]\d+[ \t]*$", q_body)
        if q_count != len(returns) or not returns:
            raise ValueError("every SettingsProvider.query return-object must have one hook")
        if q_count > 0:
            q_pattern = (
                r"invoke-static\s*\{([vp]\d+),\s*p1,\s*p3,\s*p4\},\s*"
                + re.escape(QUERY_HOOK_TARGET)
                + r"\s*(?:\r?\n)+"
                + r"\s*move-result-object\s+\1\s*(?:\r?\n)+"
                + r"\s*return-object\s+\1"
            )
            matches = list(re.finditer(q_pattern, q_body))
            if len(matches) != q_count:
                raise ValueError("query hook sequence does not match exact fail-closed return structure")


def _find_injection_point(body: str) -> int:
    """Find position after getDeviceId() anchor in SettingsProvider.call."""
    device_id_match = DEVICE_ID_RE.search(body)
    if device_id_match is None:
        raise ValueError("safe SettingsProvider.call getDeviceId anchor not found")
    return device_id_match.end()


def _query_method_span(text: str) -> tuple[int, int] | None:
    matches = list(QUERY_METHOD_RE.finditer(text))
    if len(matches) == 0:
        return None
    if len(matches) > 1:
        raise ValueError(f"expected at most one SettingsProvider.query method; found {len(matches)}")
    end = METHOD_END_RE.search(text, matches[0].end())
    if end is None:
        raise ValueError("unterminated SettingsProvider.query method")
    return matches[0].start(), end.end()


def _query_hook_count(body: str) -> int:
    return body.count(QUERY_HOOK_TARGET)


def _patch_query(text: str) -> tuple[str, bool]:
    span = _query_method_span(text)
    if span is None:
        return text, False
    start, end = span
    body = text[start:end]
    if QUERY_HOOK_TARGET in body:
        return text, False

    if re.search(r"(?m)^[ \t]*\.(?:catch|catchall|packed-switch|sparse-switch)\b", body):
        raise ValueError("unsupported SettingsProvider.query control flow")

    newline = "\r\n" if "\r\n" in text else "\n"
    param_width = 6  # p0..p5

    reg_match = REGISTERS_RE.search(body)
    loc_match = LOCALS_RE.search(body)
    if (reg_match is None) == (loc_match is None):
        raise ValueError("expected exactly one SettingsProvider.query register directive")
    if reg_match:
        current_regs = int(reg_match.group("num"))
        if current_regs < param_width:
            raise ValueError(f".registers {current_regs} is less than parameter count {param_width}")

    return_matches = list(re.finditer(r"(?m)^(?P<indent>[ \t]*)return-object\s+(?P<reg>[vp]\d+)[ \t]*(?:\r?\n|$)", body))
    if not return_matches:
        raise ValueError("no return-object found in SettingsProvider.query method")

    patched_body = body
    for m in reversed(return_matches):
        indent = m.group("indent")
        reg = m.group("reg")
        hook_code = (
            f"{indent}invoke-static {{{reg}, p1, p3, p4}}, {QUERY_HOOK_TARGET}{newline}"
            f"{indent}move-result-object {reg}{newline}"
            f"{indent}return-object {reg}{newline}"
        )
        patched_body = patched_body[:m.start()] + hook_code + patched_body[m.end():]

    new_text = text[:start] + patched_body + text[end:]
    return new_text, True


def patch(text: str) -> tuple[str, bool]:
    """Inject Kaorios settings spoof hook into SettingsProvider.call (and query if present) using register-safe allocation."""
    start, end = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    changed_call = False

    if count == 0:
        if ":cond_kaorios_settings_stock" in body:
            raise ValueError("reserved Kaorios label already exists in target method")

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
            # .registers may reference parameter slots numerically as vN. Adding a
            # local shifts the physical parameter registers, so canonicalize those aliases
            # to stable pN names before converting the directive to .locals.
            for register_index in range(current_regs - 1, existing_locals - 1, -1):
                parameter_index = register_index - existing_locals
                updated_body = re.sub(
                    rf"(?<![A-Za-z0-9_])v{register_index}(?![0-9])",
                    f"p{parameter_index}",
                    updated_body,
                )
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
        text = text[:start] + patched_body + text[end:]
        changed_call = True
    elif count > 1:
        raise ValueError("multiple filterSettingsCall hooks already present")

    # Patch query if present in class
    patched_query_text, changed_query = _patch_query(text)
    if changed_query:
        text = patched_query_text

    verify(text)
    return text, (changed_call or changed_query)


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
