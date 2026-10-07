#!/usr/bin/env python3
"""Fail-closed Android 17 ComputerEngine package-visibility smali patcher for Kaorios HMA."""
import argparse
import importlib.util
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


def _high_hook(param_count, old_base, scratch, label, newline="\n"):
    width = 8 if param_count == 7 else 4
    user = 5 if param_count == 7 else 3
    objects = {0, 1, 3} if param_count == 7 else {0, 1}
    lines = [f"move{'-object' if i in objects else ''}/16 v{old_base+i}, p{i}" for i in range(width)]
    lines += [
        f"if-eqz v{old_base+1}, {label}",
        f"invoke-interface/range {{v{old_base+1} .. v{old_base+1}}}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;",
        f"move-result-object v{scratch+1}",
        f"if-eqz v{scratch+1}, {label}",
        f"move/16 v{scratch}, v{old_base+2}",
        f"move/16 v{scratch+2}, v{old_base+user}",
        f"invoke-static/range {{v{scratch} .. v{scratch+2}}}, {HOOK_TARGET}",
        f"move-result v{scratch}", f"if-eqz v{scratch}, {label}",
        f"const/16 v{scratch}, 0x1", f"return v{scratch}", label,
    ]
    return ''.join('    ' + line + newline for line in lines)


def _verify_visibility(text: str) -> None:
    """Assert the final smali has exactly one structural hook sequence in shouldFilterApplication satisfying Phase 18."""
    start, end, param_count = _method_span(text)
    body = text[start:end]
    body = re.sub(r"(?m)^[ \t]*\.(?:line|local|end local|restart local|prologue|epilogue)\b[^\n]*\n", "", body)
    count = _hook_count(body)
    if count != 1:
        raise ValueError(f"expected exactly one shouldHideAppListForCaller hook; found {count}")
    if GET_PACKAGE_NAME_CALL not in body:
        directive = LOCALS_RE.search(body) or REGISTERS_RE.search(body)
        width = 8 if param_count == 7 else 4
        if directive is None:
            raise ValueError("missing registers for high-register hook")
        locals_count = int(directive.group("num")) - (width if directive.re == REGISTERS_RE else 0)
        scratch = locals_count - 3
        old_base = scratch - width
        label = re.search(rf"if-eqz\s+v{old_base+1},\s*(:\S+)", body)
        if label is None or old_base < 0 or scratch + 2 > 255:
            raise ValueError("invalid high-register hook frame")
        expected = _high_hook(param_count, old_base, scratch, label[1])
        compact = lambda value: '\n'.join(line.strip() for line in value.splitlines() if line.strip())
        if compact(expected) not in compact(body):
            raise ValueError("incorrect high-register caller/package/user or return sequence")
        return

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


def _canonicalize_parameter_aliases(body, base, width):
    parts = re.split(r'("(?:\\.|[^"\\])*"|#[^\n]*)', body)
    for index in range(0, len(parts), 2):
        for parameter in range(width):
            parts[index] = re.sub(rf'(?<![\w/$;>:])v{base+parameter}(?![\w/$;])',
                                  f'p{parameter}', parts[index])
    return ''.join(parts)


def _patch_visibility(text: str) -> tuple[str, bool]:
    """Inject Kaorios HMA visibility hook into ComputerEngine.shouldFilterApplication using register-safe allocation."""
    start, end, param_count = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count == 1:
        _verify_visibility(text)
        return text, False
    if count > 1:
        raise ValueError("multiple shouldHideAppListForCaller hooks already present")
    if ":cond_kaorios_ps_null" in body:
        raise ValueError("reserved Kaorios label already exists in target method")

    newline = "\r\n" if "\r\n" in text else "\n"
    user_param = "p5" if param_count == 7 else "p3"
    param_width = 8 if param_count == 7 else 4

    reg_match = REGISTERS_RE.search(body)
    loc_match = LOCALS_RE.search(body)
    updated_body = body

    if loc_match:
        current_locs = int(loc_match.group("num"))
        updated_body = _canonicalize_parameter_aliases(body, current_locs, param_width)
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
        updated_body = _canonicalize_parameter_aliases(body, existing_locals, param_width)
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

    locals_match = LOCALS_RE.search(updated_body)
    new_locals = int(locals_match.group("num")) if locals_match else 1
    if max(new_locals + param_width - 1, int(hook_reg[1:])) > 15:
        original_directive = LOCALS_RE.search(body) or REGISTERS_RE.search(body)
        old_count = int(original_directive.group("num"))
        old_base = old_count if original_directive.re == LOCALS_RE else old_count - param_width
        scratch = old_base + param_width
        if scratch + 2 > 255:
            raise ValueError("UNSUPPORTED_LAYOUT: high-register scratch exceeds 8-bit limits")
        lines = []
        for line in body.splitlines(keepends=True):
            if not line.strip().startswith('.param'):
                parts = re.split(r'("(?:\\.|[^"\\])*"|#[^\n]*)', line)
                line = ''.join(part if i % 2 else re.sub(r'(?<![\w/$;>:])p(\d+)(?![\w/$;])', lambda m: f'v{old_base+int(m[1])}', part) for i, part in enumerate(parts))
            lines.append(line)
        updated_body = ''.join(lines)
        directive = LOCALS_RE.search(updated_body) or REGISTERS_RE.search(updated_body)
        updated_body = updated_body[:directive.start()] + f"    .locals {scratch+3}{newline}" + updated_body[directive.end():]
        inj_offset = _find_injection_point(updated_body)
        hook_code = _high_hook(param_count, old_base, scratch, ':cond_kaorios_ps_null', newline)
        patched_body = updated_body[:inj_offset] + hook_code + updated_body[inj_offset:]
        patched = text[:start] + patched_body + text[end:]
        _verify_visibility(patched)
        return patched, True

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
    _verify_visibility(patched)
    return patched, True


def _installer_patcher(text):
    if not re.search(r"(?m)^\.method[^\n]*\b(?:getInstallerPackageName|getInstallSourceInfo)\(", text):
        return None
    path = Path(__file__).with_name("patch-installer-source.py")
    if not path.is_file():
        raise ValueError("installer patcher/verifier unavailable")
    spec = importlib.util.spec_from_file_location("installer_patcher", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def verify(text: str) -> None:
    _verify_visibility(text)
    installer = _installer_patcher(text)
    if installer is not None:
        installer.verify(text)


def patch(text: str) -> tuple[str, bool]:
    patched, changed = _patch_visibility(text)
    installer = _installer_patcher(text)
    if installer is not None:
        patched, installer_changed = installer.patch(patched)
        changed = changed or installer_changed
    verify(patched)
    return patched, changed


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
