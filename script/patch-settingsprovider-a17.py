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

# Safe anchors in SettingsProvider.call:
# Priority 1: after getDeviceId() (Android 17 / HyperOS 4)
# Priority 2: after getRequestingUserId() (Android 13-16 / MIUI 14 - HyperOS 3)
RESULT_DEBUG_GAP = (
    r"(?:^[ \t]*(?:#[^\r\n]*|\.(?:line|local|end local|restart local|prologue|epilogue)[^\r\n]*)?"
    r"[ \t]*(?:\r?\n|$))*"
)
DEVICE_ID_RE = re.compile(
    r"(?m)^[ \t]*invoke-(?:virtual|direct)[ \t]+\{[^}]+\},[ \t]*"
    r"Lcom/android/providers/settings/SettingsProvider;->getDeviceId\(\)I"
    r"[ \t]*(?:\r?\n|$)"
    + RESULT_DEBUG_GAP
    + r"^[ \t]*move-result[ \t]+[vp]\d+[ \t]*(?:\r?\n|$)"
)
REQ_USER_ID_RE = re.compile(
    r"(?m)^[ \t]*invoke-static[ \t]+\{[^}]+\},[ \t]*"
    r"Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId\(Landroid/os/Bundle;\)I"
    r"[ \t]*(?:\r?\n|$)"
    + RESULT_DEBUG_GAP
    + r"^[ \t]*move-result[ \t]+[vp]\d+[ \t]*(?:\r?\n|$)"
)


def _find_anchor_match(body: str) -> re.Match[str] | None:
    match = DEVICE_ID_RE.search(body)
    if match is not None:
        return match
    return REQ_USER_ID_RE.search(body)


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
    instructions = list(_query_instructions(body))
    for index, instruction in enumerate(instructions):
        if instruction.startswith("move-result"):
            if index == 0 or not instructions[index - 1].startswith(("invoke-", "filled-new-array")):
                raise ValueError("SettingsProvider.call: move-result must immediately follow its invoke")
    count = _hook_count(body)
    if count != 1:
        raise ValueError(f"expected exactly one filterSettingsCall hook; found {count}")

    anchor_match = _find_anchor_match(body)
    if anchor_match is None:
        raise ValueError("safe SettingsProvider.call anchor (getDeviceId / getRequestingUserId) not found")

    hook_idx = body.find(HOOK_TARGET)
    if hook_idx < anchor_match.end():
        raise ValueError("hook must appear AFTER call anchor (getDeviceId / getRequestingUserId)")

    clear_id = re.search(r"invoke-static\s*\{[^}]*\},\s*Landroid/os/Binder;->clearCallingIdentity\(\)J", body)
    if clear_id and clear_id.start() < hook_idx:
        raise ValueError("hook must appear BEFORE Binder.clearCallingIdentity")

    pattern = (
        r"invoke-static(?:/range)?\s*\{p1(?:,\s*p2|\s*\.\.\s*p2)\},\s*"
        + re.escape(HOOK_TARGET)
        + r"\s*(?:\r?\n)+"
        + r"\s*move-result-object\s+(v\d+)\s*(?:\r?\n)+"
        + r"\s*if-eqz\s+\1,\s*(:\S+)\s*(?:\r?\n)+"
        + r"\s*return-object\s+\1\s*(?:\r?\n)+"
        + RESULT_DEBUG_GAP
        + r"\s*\2"
    )
    if not re.search(pattern, body, re.MULTILINE):
        raise ValueError("hook sequence does not match exact fail-closed return structure or register order")

    q_span = _query_method_span(text)
    if q_span is not None:
        _verify_query(text[q_span[0]:q_span[1]])


def _find_injection_point(body: str) -> int:
    """Find position after safe anchor (getDeviceId or getRequestingUserId) in SettingsProvider.call."""
    anchor_match = _find_anchor_match(body)
    if anchor_match is None:
        raise ValueError("safe SettingsProvider.call anchor (getDeviceId / getRequestingUserId) not found")
    return anchor_match.end()


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


def _query_layout(body: str):
    if 'static' in body.splitlines()[0].split():
        raise ValueError('unsupported static SettingsProvider.query')
    if re.search(r'(?m)^\s*\.(?:catch|catchall)\b', body):
        raise ValueError('unsupported SettingsProvider.query control flow')
    if 'Landroid/os/Binder;->clearCallingIdentity()J' in body:
        raise ValueError('unsupported query clears original Binder identity')
    reg = REGISTERS_RE.search(body)
    loc = LOCALS_RE.search(body)
    if (reg is None) == (loc is None):
        raise ValueError('expected exactly one SettingsProvider.query register directive')
    directive = reg or loc
    locals_count = int(directive['num']) - (6 if reg else 0)
    if locals_count < 0:
        raise ValueError('SettingsProvider.query register count is less than parameter count')
    return directive, locals_count


def _query_instructions(body: str):
    annotations = 0
    for line in body.splitlines()[1:-1]:
        instruction = line.strip().split('#', 1)[0].strip()
        if instruction.startswith(('.annotation ', '.subannotation ')):
            annotations += 1
        elif instruction.startswith(('.end annotation', '.end subannotation')):
            annotations -= 1
        elif not annotations and instruction and not instruction.startswith(('.', ':')):
            yield instruction


def _check_query_registers(locals_count: int, returns):
    # Saved arguments and the original (shifted) parameters must remain encodable.
    if any(locals_count + n > 15 for n in (1, 3, 4)):
        raise ValueError('SettingsProvider.query: register exceeds format 35c limit (> 15); unsupported high-register layout')
    for reg in returns:
        physical = int(reg[1:]) + (locals_count if reg.startswith('p') else 0)
        if physical > 15:
            raise ValueError(f'SettingsProvider.query: return register {reg} exceeds format 35c limit (> 15); unsupported high-register layout')


def _verify_query(body: str) -> None:
    _, locals_count = _query_layout(body)
    saved_base = locals_count - 3
    if saved_base < 0:
        raise ValueError('query arguments were not saved in fresh locals')
    saved = [f'v{saved_base+n}' for n in range(3)]
    expected = [f'move-object/from16 {reg}, p{param}' for reg, param in zip(saved, (1, 3, 4))]
    instructions = list(_query_instructions(body))
    if instructions[:3] != expected:
        raise ValueError('query must preserve original URI/selection/args at method entry')
    # Stock parameter slots can be reused for integers/Strings; saved slots cannot.
    saved_physical = set(range(saved_base, locals_count))
    for instruction in instructions[3:]:
        if instruction.startswith(('invoke-', 'iput', 'sput', 'aput', 'if-', 'goto', 'return', 'throw', 'monitor-', 'packed-switch', 'sparse-switch', 'fill-array-data')):
            continue
        destination = re.match(r'\S+\s+([vp]\d+)', instruction)
        if destination:
            physical = int(destination[1][1:]) + (locals_count if destination[1].startswith('p') else 0)
            wide = any(word in instruction.split()[0] for word in ('wide', 'long', 'double'))
            if physical in saved_physical or (wide and physical+1 in saved_physical):
                raise ValueError('query saved arguments overwritten')
    returns = re.findall(r'(?m)^\s*return-object\s+([vp]\d+)\s*$', body)
    _check_query_registers(locals_count, returns)
    count = _query_hook_count(body)
    pattern = (r'invoke-static\s*\{([vp]\d+),\s*' + re.escape(saved[0]) + r',\s*' + re.escape(saved[1]) + r',\s*' + re.escape(saved[2]) + r'\},\s*' + re.escape(QUERY_HOOK_TARGET) + r'\s*\n\s*move-result-object\s+\1\s*\n\s*return-object\s+\1')
    if not returns or count != len(returns) or len(re.findall(pattern, body)) != count:
        raise ValueError('every query return must filter the same cursor using saved original arguments')


def _patch_query(text: str) -> tuple[str, bool]:
    span = _query_method_span(text)
    if span is None:
        return text, False
    start, end = span
    body = text[start:end]
    if QUERY_HOOK_TARGET in body:
        _verify_query(body)
        return text, False
    directive, old_locals = _query_layout(body)
    newline = '\r\n' if '\r\n' in text else '\n'
    # Reject a range crossing the local/parameter boundary: growth would add arguments.
    for low, high in re.findall(r'\{([vp]\d+)\s*\.\.\s*([vp]\d+)\}', body):
        physical = lambda reg: int(reg[1:]) + (old_locals if reg.startswith('p') else 0)
        if physical(low) < old_locals <= physical(high):
            raise ValueError('unsupported query range crossing local/parameter boundary')
    def canonicalize(line):
        parts = re.split(r'("(?:\\.|[^"\\])*")', line)
        for n in range(0, len(parts), 2):
            parts[n] = re.sub(r'(?<![\w/$:>])v(\d+)(?![\w/;$(])', lambda m: 'p'+str(int(m[1])-old_locals) if old_locals <= int(m[1]) < old_locals+6 else m[0], parts[n])
        return ''.join(parts)
    body = ''.join(canonicalize(line) for line in body.splitlines(keepends=True))
    directive, _ = _query_layout(body)
    new_locals = old_locals + 3
    saved = ', '.join(f'v{old_locals+n}' for n in range(3))
    captures = ''.join(f'    move-object/from16 v{old_locals+n}, p{param}{newline}' for n,param in enumerate((1,3,4)))
    body = body[:directive.start()] + f"{directive['indent']}.locals {new_locals}{newline}" + captures + body[directive.end():]
    returns = list(re.finditer(r'(?m)^(?P<indent>[ \t]*)return-object\s+(?P<reg>[vp]\d+)[ \t]*(?:\r?\n|$)', body))
    _check_query_registers(new_locals, [m['reg'] for m in returns])
    if not returns:
        raise ValueError('no return-object found in SettingsProvider.query method')
    for match in reversed(returns):
        indent, reg = match['indent'], match['reg']
        hook = f'{indent}invoke-static {{{reg}, {saved}}}, {QUERY_HOOK_TARGET}{newline}{indent}move-result-object {reg}{newline}{indent}return-object {reg}{newline}'
        body = body[:match.start()] + hook + body[match.end():]
    _verify_query(body)
    return text[:start] + body + text[end:], True

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
            # .locals may reference parameter slots numerically as vN. Adding a
            # local shifts the physical parameter registers, so canonicalize those aliases
            # to stable pN names before expanding .locals.
            for param_idx in range(param_width - 1, -1, -1):
                v_idx = current_locs + param_idx
                updated_body = re.sub(
                    rf"(?<![A-Za-z0-9_])v{v_idx}(?![0-9])",
                    f"p{param_idx}",
                    updated_body,
                )
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
            new_locs = 1
            lines = updated_body.splitlines(keepends=True)
            method_line_end = len(lines[0])
            updated_body = (
                updated_body[:method_line_end]
                + f"    .locals 1{newline}"
                + updated_body[method_line_end:]
            )

        p1_num = new_locs + 1
        p2_num = new_locs + 2
        if p1_num > 15 or p2_num > 15:
            invoke_str = f"    invoke-static/range {{p1 .. p2}}, {HOOK_TARGET}{newline}"
        else:
            invoke_str = f"    invoke-static {{p1, p2}}, {HOOK_TARGET}{newline}"

        inj_offset = _find_injection_point(updated_body)
        hook_code = (
            f"{invoke_str}"
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
