#!/usr/bin/env python3
"""Fail-closed Android 17 ComputerEngine package-visibility smali patcher for Kaorios HMA."""
import argparse
import re
from pathlib import Path

HOOK_TARGET = (
    "Landroid/security/kaorios/KaoriosHook;->"
    "shouldHideAppListForCaller(ILjava/lang/String;I)Z"
)
GET_PACKAGE_NAME_CALL = (
    "invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;"
)

# Priority 1: Full 7-parameter overload in Android 17 AOSP
METHOD_7_PARAM_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]"
    r"shouldFilterApplication"
    r"\(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ\)Z"
    r"[ \t]*(?:\r?\n|$)"
)

# Priority 2: 3-parameter overload
METHOD_3_PARAM_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]"
    r"shouldFilterApplication"
    r"\(Lcom/android/server/pm/pkg/PackageStateInternal;II\)Z"
    r"[ \t]*(?:\r?\n|$)"
)

METHOD_END_RE = re.compile(r"(?m)^[ \t]*\.end method[ \t]*(?:\r?\n|$)")
REGISTERS_RE = re.compile(r"(?m)^(?P<indent>[ \t]*)\.registers[ \t]+(?P<num>\d+)[ \t]*(?:\r?\n|$)")
LOCALS_RE = re.compile(r"(?m)^(?P<indent>[ \t]*)\.locals[ \t]+(?P<num>\d+)[ \t]*(?:\r?\n|$)")


def _method_span(text: str) -> tuple[int, int, int]:
    """Returns (start, end, param_count) for the target shouldFilterApplication method."""
    matches_7 = list(METHOD_7_PARAM_RE.finditer(text))
    if len(matches_7) == 1:
        end = METHOD_END_RE.search(text, matches_7[0].end())
        if end is None:
            raise ValueError("unterminated ComputerEngine.shouldFilterApplication (7-param)")
        return matches_7[0].start(), end.end(), 7

    matches_3 = list(METHOD_3_PARAM_RE.finditer(text))
    if len(matches_3) == 1:
        end = METHOD_END_RE.search(text, matches_3[0].end())
        if end is None:
            raise ValueError("unterminated ComputerEngine.shouldFilterApplication (3-param)")
        return matches_3[0].start(), end.end(), 3

    if len(matches_7) > 1 or len(matches_3) > 1:
        raise ValueError(
            f"ambiguous shouldFilterApplication: found {len(matches_7)} (7-param) "
            f"and {len(matches_3)} (3-param)"
        )
    raise ValueError("target ComputerEngine.shouldFilterApplication method not found")


def _hook_count(body: str) -> int:
    return body.count(HOOK_TARGET)


def verify(text: str) -> None:
    """Assert the final smali has exactly one structural hook sequence in shouldFilterApplication satisfying Phase 18."""
    start, end, param_count = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count != 1:
        raise ValueError(f"expected exactly one shouldHideAppListForCaller hook; found {count}")
    if GET_PACKAGE_NAME_CALL not in body:
        raise ValueError("expected PackageStateInternal.getPackageName() call in hook sequence")

    user_param = "p5" if param_count == 7 else "p3"

    pattern = (
        r"if-eqz\s+p1,\s*(:\S+)\s*(?:\r?\n)+"
        + r"\s*" + re.escape(GET_PACKAGE_NAME_CALL)
        + r"\s*(?:\r?\n)+"
        + r"\s*move-result-object\s+(v\d+)\s*(?:\r?\n)+"
        + r"\s*if-eqz\s+\2,\s*\1\s*(?:\r?\n)+"
        + r"\s*invoke-static\s*\{p2,\s*\2,\s*" + user_param + r"\},\s*"
        + re.escape(HOOK_TARGET)
        + r"\s*(?:\r?\n)+"
        + r"\s*move-result\s+(v\d+)\s*(?:\r?\n)+"
        + r"\s*if-eqz\s+\3,\s*\1\s*(?:\r?\n)+"
        + r"\s*const/4\s+\3,\s*0x1\s*(?:\r?\n)+"
        + r"\s*return\s+\3\s*(?:\r?\n)+"
        + r"\s*\1"
    )
    if not re.search(pattern, body):
        raise ValueError("hook sequence does not match exact fail-closed return structure or register order")


def _find_injection_point(body: str) -> int:
    """Find position after .registers/.locals, .param, and .annotation headers."""
    lines = body.splitlines(keepends=True)
    in_annotation = False
    injected_idx = 0

    for i, line in enumerate(lines):
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith(".method"):
            continue
        if stripped.startswith(".registers") or stripped.startswith(".locals"):
            injected_idx = i + 1
            continue
        if stripped.startswith(".param"):
            injected_idx = i + 1
            continue
        if stripped.startswith(".annotation"):
            in_annotation = True
            injected_idx = i + 1
            continue
        if in_annotation:
            injected_idx = i + 1
            if stripped.startswith(".end annotation"):
                in_annotation = False
            continue
        break

    return sum(len(lines[j]) for j in range(injected_idx))


def patch(text: str) -> tuple[str, bool]:
    """Inject Kaorios HMA visibility hook into ComputerEngine.shouldFilterApplication using register-safe allocation."""
    start, end, param_count = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count == 1:
        verify(text)
        return text, False
    if count > 1:
        raise ValueError("multiple shouldHideAppListForCaller hooks already present")

    newline = "\r\n" if "\r\n" in text else "\n"
    user_param = "p5" if param_count == 7 else "p3"
    param_width = 8 if param_count == 7 else 4

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
        f"    if-eqz p1, :cond_kaorios_ps_null{newline}"
        f"    {GET_PACKAGE_NAME_CALL}{newline}"
        f"    move-result-object {hook_reg}{newline}"
        f"    if-eqz {hook_reg}, :cond_kaorios_ps_null{newline}"
        f"    invoke-static {{p2, {hook_reg}, {user_param}}}, {HOOK_TARGET}{newline}"
        f"    move-result {hook_reg}{newline}"
        f"    if-eqz {hook_reg}, :cond_kaorios_ps_null{newline}"
        f"    const/4 {hook_reg}, 0x1{newline}"
        f"    return {hook_reg}{newline}"
        f"    :cond_kaorios_ps_null{newline}"
    )

    patched_body = updated_body[:inj_offset] + hook_code + updated_body[inj_offset:]
    patched = text[:start] + patched_body + text[end:]
    verify(patched)
    return patched, True


def main() -> None:
    parser = argparse.ArgumentParser(description="Patch ComputerEngine in decompiled services smali.")
    parser.add_argument("smali", type=Path)
    args = parser.parse_args()
    original = args.smali.read_bytes().decode("utf-8")
    patched, changed = patch(original)
    if changed:
        args.smali.write_bytes(patched.encode("utf-8"))
    print("patched" if changed else "already patched")


if __name__ == "__main__":
    main()
