#!/usr/bin/env python3
"""Clean-stock smali parser, Dalvik register lowering engine, and hook injector."""

from __future__ import annotations

from dataclasses import dataclass
import re
from typing import Iterable, Sequence

from kaorios_hook_spec import (
    CLEAN_STOCK_FORBIDDEN_PREFIXES,
    FORBIDDEN_HOOK_TOKENS,
    FRAMEWORK_CORE_SPECS,
    SERVICES_CORE_SPECS,
    SETTINGS_PROVIDER_SPECS,
    class_descriptor_to_relpath,
)


class SmaliPatchError(RuntimeError):
    """Base error raised when a smali target fails validation or injection."""


class AlreadyPatchedError(SmaliPatchError):
    """Raised when the input target already contains Kaorios hook/framework code."""


class TargetNotFoundError(SmaliPatchError):
    """Raised when an expected stock AOSP class or method cannot be located."""


@dataclass(frozen=True)
class MethodHeader:
    """Parsed Dalvik ``.method`` declaration and parameter layout."""

    name: str
    params_raw: str
    params: tuple[str, ...]
    return_type: str
    is_static: bool
    is_abstract: bool
    is_native: bool
    param_reg_offsets: tuple[int, ...]
    total_param_regs: int


@dataclass
class MethodBlock:
    """Line-slice view of one ``.method ... .end method`` block inside a smali file."""

    header: MethodHeader
    start_idx: int
    end_idx: int
    lines: list[str]
    locals_directive_idx: int | None
    locals_directive_kind: str  # "locals" | "registers" | ""
    locals_count: int


_METHOD_RE = re.compile(
    r"^\.method\s+(?P<mods>.*?)(?P<name>[^\s(]+)\((?P<params>[^)]*)\)(?P<ret>\S+)\s*$"
)
_LOCALS_RE = re.compile(r"^(?P<indent>\s*)\.(?P<kind>locals|registers)\s+(?P<num>\d+)\s*$")
_RETURN_OBJ_RE = re.compile(r"^\s*return-object\s+(?P<reg>[vp]\d+)\s*$")
_INVOKE_PREFIXES = (
    "invoke-virtual",
    "invoke-super",
    "invoke-direct",
    "invoke-static",
    "invoke-interface",
    "invoke-polymorphic",
    "invoke-custom",
)


def parse_type_list(params_raw: str) -> tuple[str, ...]:
    """Split a JVM parameter descriptor string into individual type tokens."""
    types: list[str] = []
    i = 0
    n = len(params_raw)
    while i < n:
        start = i
        while i < n and params_raw[i] == "[":
            i += 1
        if i >= n:
            raise ValueError(f"Truncated array type descriptor in {params_raw!r}")
        ch = params_raw[i]
        if ch == "L":
            semi = params_raw.find(";", i)
            if semi < 0:
                raise ValueError(f"Unterminated object type in {params_raw!r}")
            i = semi + 1
        elif ch in "ZBSCIJFD":
            i += 1
        else:
            raise ValueError(f"Unexpected type char {ch!r} in {params_raw!r}")
        types.append(params_raw[start:i])
    return tuple(types)


def is_wide_type(type_desc: str) -> bool:
    """Return True if *type_desc* occupies two consecutive Dalvik registers."""
    return type_desc in ("J", "D")


def reg_width_for_type(type_desc: str) -> int:
    """Return Dalvik register slot count (1 or 2) for *type_desc*."""
    return 2 if is_wide_type(type_desc) else 1


def parse_method_header(line: str) -> MethodHeader | None:
    """Parse a ``.method`` declaration line, or return None if line is not ``.method``."""
    match = _METHOD_RE.match(line.rstrip("\r\n"))
    if not match:
        return None
    mods = match.group("mods").split()
    is_static = "static" in mods
    is_abstract = "abstract" in mods
    is_native = "native" in mods
    params = parse_type_list(match.group("params"))
    offsets: list[int] = []
    offset = 0 if is_static else 1
    for p_type in params:
        offsets.append(offset)
        offset += reg_width_for_type(p_type)
    return MethodHeader(
        name=match.group("name"),
        params_raw=match.group("params"),
        params=params,
        return_type=match.group("ret"),
        is_static=is_static,
        is_abstract=is_abstract,
        is_native=is_native,
        param_reg_offsets=tuple(offsets),
        total_param_regs=offset,
    )


def ensure_clean_stock_smali(text: str, label: str = "smali") -> None:
    """Reject already-patched smali before any modification occurs."""
    for prefix in CLEAN_STOCK_FORBIDDEN_PREFIXES:
        if prefix in text:
            raise AlreadyPatchedError(
                f"{label} is not clean stock: found existing Kaorios reference {prefix!r}"
            )


def find_methods(
    lines: list[str],
    name: str,
    params_raw: str | None = None,
    return_type: str | None = None,
    predicate=None,
) -> list[MethodBlock]:
    """Locate all matching ``MethodBlock`` entries in *lines*."""
    found: list[MethodBlock] = []
    i = 0
    total = len(lines)
    while i < total:
        header = parse_method_header(lines[i])
        if header is None:
            i += 1
            continue
        end = i + 1
        while end < total and not lines[end].lstrip().startswith(".end method"):
            end += 1
        if end >= total:
            raise SmaliPatchError(f"Unterminated .method {header.name} at line {i + 1}")
        matches = (
            header.name == name
            and (params_raw is None or header.params_raw == params_raw)
            and (return_type is None or header.return_type == return_type)
            and (predicate is None or predicate(header, lines[i : end + 1]))
        )
        if matches:
            dir_idx = None
            dir_kind = ""
            locals_cnt = 0
            for k in range(i + 1, end):
                lm = _LOCALS_RE.match(lines[k])
                if lm:
                    dir_idx = k
                    dir_kind = lm.group("kind")
                    val = int(lm.group("num"))
                    locals_cnt = val if dir_kind == "locals" else val - header.total_param_regs
                    if locals_cnt < 0:
                        raise SmaliPatchError(
                            f"{header.name}: .registers {val} < param regs {header.total_param_regs}"
                        )
                    break
            found.append(
                MethodBlock(
                    header=header,
                    start_idx=i,
                    end_idx=end,
                    lines=lines[i : end + 1],
                    locals_directive_idx=dir_idx,
                    locals_directive_kind=dir_kind,
                    locals_count=locals_cnt,
                )
            )
        i = end + 1
    return found


def effective_reg(reg: str, locals_count: int) -> int:
    """Resolve ``vK`` or ``pK`` to its Dalvik virtual register index."""
    kind = reg[0]
    num = int(reg[1:])
    if kind == "v":
        return num
    if kind == "p":
        return locals_count + num
    raise ValueError(f"Invalid register name: {reg!r}")


def set_min_locals(lines: list[str], method: MethodBlock, min_locals: int) -> int:
    """Bump ``.locals`` or ``.registers`` to at least *min_locals*; return final locals count."""
    if method.header.is_abstract or method.header.is_native:
        raise SmaliPatchError(f"Cannot bump locals on abstract/native method {method.header.name}")
    new_locals = max(method.locals_count, min_locals)
    if new_locals == method.locals_count and method.locals_directive_idx is not None:
        return new_locals
    if method.locals_directive_idx is not None:
        lm = _LOCALS_RE.match(lines[method.locals_directive_idx])
        assert lm is not None
        indent = lm.group("indent")
        if method.locals_directive_kind == "locals":
            lines[method.locals_directive_idx] = f"{indent}.locals {new_locals}\n"
        else:
            lines[method.locals_directive_idx] = (
                f"{indent}.registers {new_locals + method.header.total_param_regs}\n"
            )
    else:
        insert_at = method.start_idx + 1
        lines.insert(insert_at, f"    .locals {new_locals}\n")
    return new_locals


def find_method_entry_insert_idx(lines: list[str], method_start: int, method_end: int) -> int:
    """Find index after prolog directives (.locals/.param/.annotation/.prologue/.line)."""
    i = method_start + 1
    in_param_annotation = False
    in_annotation = False
    while i < method_end:
        stripped = lines[i].strip()
        if in_param_annotation:
            if stripped == ".end param":
                in_param_annotation = False
            i += 1
            continue
        if in_annotation:
            if stripped == ".end annotation":
                in_annotation = False
            i += 1
            continue
        if (
            not stripped
            or stripped.startswith("#")
            or stripped.startswith(".locals")
            or stripped.startswith(".registers")
            or stripped == ".prologue"
            or stripped.startswith(".line ")
        ):
            i += 1
            continue
        if stripped.startswith(".param "):
            # baksmali emits `.end param` iff an `.annotation` immediately follows `.param`.
            j = i + 1
            while j < method_end and (not lines[j].strip() or lines[j].strip().startswith("#")):
                j += 1
            if j < method_end and lines[j].strip().startswith(".annotation"):
                in_param_annotation = True
            i += 1
            continue
        if stripped.startswith(".annotation "):
            in_annotation = True
            i += 1
            continue
        break
    return i


def _is_invoke_line(stripped: str) -> bool:
    return any(stripped.startswith(p) for p in _INVOKE_PREFIXES)


def _prev_executable_line(lines: list[str], idx: int, floor: int) -> str:
    j = idx - 1
    while j >= floor:
        s = lines[j].strip()
        if not s or s.startswith("#") or s.startswith(".") or s.startswith(":"):
            j -= 1
            continue
        return s
    return ""


def _move_op(kind: str, dst_eff: int, src_eff: int) -> str:
    prefix = {"object": "move-object", "wide": "move-wide", "scalar": "move"}[kind]
    if dst_eff < 16 and src_eff < 16:
        return prefix
    if dst_eff < 256 and src_eff <= 65535:
        return f"{prefix}/from16"
    return f"{prefix}/16"


def emit_move(dst: str, src: str, kind: str, locals_count: int, indent: str = "    ") -> list[str]:
    """Emit a Dalvik register move respecting 4/8/16-bit operand limits."""
    dst_eff = effective_reg(dst, locals_count)
    src_eff = effective_reg(src, locals_count)
    if dst_eff == src_eff:
        return []
    op = _move_op(kind, dst_eff, src_eff)
    return [f"{indent}{op} {dst}, {src}\n"]


def _reg_slots(reg: str, kind: str, locals_count: int) -> tuple[int, ...]:
    base = effective_reg(reg, locals_count)
    return (base, base + 1) if kind == "wide" else (base,)


def _find_free_scratch(
    occupied: set[int], locals_count: int, width: int = 1
) -> str:
    """Pick an unoccupied local register ``vK`` within ``[0, locals_count)``."""
    for idx in range(locals_count - width + 1):
        slots = range(idx, idx + width)
        if all(s not in occupied for s in slots):
            return f"v{idx}"
    raise SmaliPatchError(
        f"No free scratch local of width {width} within locals_count={locals_count}"
    )


def emit_parallel_moves(
    moves: Sequence[tuple[str, str, str]],
    locals_count: int,
    indent: str = "    ",
) -> list[str]:
    """Emit cycle-safe parallel assignments ``[(dst, src, kind), ...]``.

    *kind* is ``'object'``, ``'scalar'``, or ``'wide'``. All destinations must be
    disjoint local registers ``v0..v(locals_count-1)``. Requires at least one free
    local slot when a cycle exists.
    """
    pending: list[tuple[str, str, str]] = []
    for dst, src, kind in moves:
        if effective_reg(dst, locals_count) != effective_reg(src, locals_count):
            pending.append((dst, src, kind))

    out: list[str] = []
    while pending:
        src_slots_needed: set[int] = set()
        for _, src, kind in pending:
            src_slots_needed.update(_reg_slots(src, kind, locals_count))

        emitted = False
        for i, (dst, src, kind) in enumerate(pending):
            dst_slots = set(_reg_slots(dst, kind, locals_count))
            other_src_slots: set[int] = set()
            for j, (_, osrc, okind) in enumerate(pending):
                if i != j:
                    other_src_slots.update(_reg_slots(osrc, okind, locals_count))
            if not (dst_slots & other_src_slots):
                out.extend(emit_move(dst, src, kind, locals_count, indent))
                pending.pop(i)
                emitted = True
                break

        if not emitted:
            # Break cycle by saving pending[0]'s src (not dst!) into a scratch local.
            dst0, src0, kind0 = pending[0]
            all_busy = set(src_slots_needed)
            for d, _, k in pending:
                all_busy.update(_reg_slots(d, k, locals_count))
            scratch = _find_free_scratch(
                all_busy, locals_count, width=2 if kind0 == "wide" else 1
            )
            out.extend(emit_move(scratch, src0, kind0, locals_count, indent))
            pending[0] = (dst0, scratch, kind0)
    return out


def _param_reg_name(header: MethodHeader, param_index: int) -> str:
    return f"p{header.param_reg_offsets[param_index]}"


def _replace_method_lines(lines: list[str], method: MethodBlock, new_method_lines: list[str]) -> list[str]:
    return lines[: method.start_idx] + new_method_lines + lines[method.end_idx + 1 :]


def _patch_entry_with_args(
    lines: list[str],
    method_name: str,
    params_raw: str | None,
    return_type: str | None,
    arg_specs: Sequence[tuple[int, str]],  # [(param_index, kind)]
    build_snippet,
    min_locals: int,
    predicate=None,
) -> tuple[list[str], int]:
    """Inject a method-entry hook, lowering any argument >= v16 into v0.. slots."""
    matches = find_methods(lines, method_name, params_raw, return_type, predicate=predicate)
    if not matches:
        return lines, 0

    working = list(lines)
    patched = 0
    # Process bottom-up so earlier indices remain valid.
    for match in reversed(matches):
        mlines = list(match.lines)
        local_block = MethodBlock(
            header=match.header,
            start_idx=0,
            end_idx=len(mlines) - 1,
            lines=mlines,
            locals_directive_idx=(
                match.locals_directive_idx - match.start_idx
                if match.locals_directive_idx is not None
                else None
            ),
            locals_directive_kind=match.locals_directive_kind,
            locals_count=match.locals_count,
        )
        new_locals = set_min_locals(mlines, local_block, min_locals)
        insert_idx = find_method_entry_insert_idx(mlines, 0, len(mlines) - 1)
        snippet_lines = build_snippet(match.header, new_locals, arg_specs, patched)
        mlines = mlines[:insert_idx] + snippet_lines + mlines[insert_idx:]
        working = _replace_method_lines(working, match, mlines)
        patched += 1
    return working, patched


def _lower_args_for_entry(
    header: MethodHeader,
    locals_count: int,
    arg_specs: Sequence[tuple[int, str]],
    indent: str = "    ",
) -> tuple[list[str], list[str]]:
    """Return ``(prefix_moves, lowered_invoke_regs)`` guaranteeing every reg <= v15."""
    raw_regs: list[tuple[str, str]] = []
    for p_idx, kind in arg_specs:
        r = _param_reg_name(header, p_idx)
        raw_regs.append((r, kind))

    # Expand wide pairs to check the highest virtual register touched.
    all_ok = True
    invoke_regs: list[str] = []
    for r, kind in raw_regs:
        slots = _reg_slots(r, kind, locals_count)
        if any(s > 15 for s in slots):
            all_ok = False
        if kind == "wide":
            num = int(r[1:])
            invoke_regs.extend([f"{r[0]}{num}", f"{r[0]}{num + 1}"])
        else:
            invoke_regs.append(r)

    if all_ok:
        return [], invoke_regs

    moves: list[tuple[str, str, str]] = []
    lowered: list[str] = []
    slot = 0
    for r, kind in raw_regs:
        dst = f"v{slot}"
        moves.append((dst, r, kind))
        if kind == "wide":
            lowered.extend([f"v{slot}", f"v{slot + 1}"])
            slot += 2
        else:
            lowered.append(dst)
            slot += 1
    assert slot <= 16, f"Too many low registers requested at entry: {slot}"
    return emit_parallel_moves(moves, locals_count, indent), lowered


def _lower_pre_return_value_hook(
    mlines: list[str],
    header: MethodHeader,
    locals_directive_idx: int | None,
    locals_directive_kind: str,
    orig_locals: int,
    arg_builder,
    callee: str,
    min_locals_if_lowered: int,
) -> tuple[list[str], int]:
    """Rewrite every ``return-object vRet`` to run a value-transforming static hook."""
    # First inspect whether any return site or argument requires lowering (> v15).
    return_indices: list[int] = []
    for idx, line in enumerate(mlines):
        if _RETURN_OBJ_RE.match(line):
            prev = _prev_executable_line(mlines, idx, 0)
            if _is_invoke_line(prev):
                raise SmaliPatchError(
                    f"{header.name}: unexpected invoke immediately before return-object at method line {idx}"
                )
            return_indices.append(idx)

    if not return_indices:
        raise TargetNotFoundError(f"{header.name}({header.params_raw}): no return-object found")

    # Compute tentative needed locals on worst-case return site.
    need_bump = False
    for ridx in return_indices:
        m = _RETURN_OBJ_RE.match(mlines[ridx])
        assert m is not None
        ret_reg = m.group("reg")
        spec = arg_builder(header, ret_reg)
        if spec.get("force_lower", False):
            need_bump = True
            break
        for r, kind in spec["args"]:
            if any(s > 15 for s in _reg_slots(r, kind, orig_locals)):
                need_bump = True
                break
        if effective_reg(ret_reg, orig_locals) > 255:
            need_bump = True
            break
        if need_bump:
            break

    block = MethodBlock(
        header=header,
        start_idx=0,
        end_idx=len(mlines) - 1,
        lines=mlines,
        locals_directive_idx=locals_directive_idx,
        locals_directive_kind=locals_directive_kind,
        locals_count=orig_locals,
    )
    locals_count = (
        set_min_locals(mlines, block, min_locals_if_lowered)
        if need_bump
        else orig_locals
    )

    edits = 0
    for ridx in reversed(return_indices):
        m = _RETURN_OBJ_RE.match(mlines[ridx])
        assert m is not None
        ret_reg = m.group("reg")
        spec = arg_builder(header, ret_reg)
        args: list[tuple[str, str]] = spec["args"]
        must_lower = spec.get("force_lower", False) or any(
            any(s > 15 for s in _reg_slots(r, k, locals_count)) for r, k in args
        ) or effective_reg(ret_reg, locals_count) > 255

        if not must_lower:
            invoke_regs: list[str] = []
            for r, k in args:
                if k == "wide":
                    num = int(r[1:])
                    invoke_regs.extend([f"{r[0]}{num}", f"{r[0]}{num + 1}"])
                else:
                    invoke_regs.append(r)
            inject = [
                f"    invoke-static {{{', '.join(invoke_regs)}}}, {callee}\n",
                f"    move-result-object {ret_reg}\n",
            ]
            mlines = mlines[:ridx] + inject + mlines[ridx:]
        else:
            injected, final_ret_reg = spec["lower_emitter"](mlines, ridx, header, ret_reg, locals_count, callee)
            mlines[ridx] = f"    return-object {final_ret_reg}\n"
            mlines = mlines[:ridx] + injected + mlines[ridx:]
        edits += 1

    return mlines, edits


# ==============================================================================
# Individual Clean-Stock Hook Injectors
# ==============================================================================


def patch_framework_f1_instrumentation(lines: list[str], filepath: str = "") -> list[str]:
    """F1: Inject ``KaoriosHook.initContext(Context)`` into both ``newApplication`` overloads."""
    ensure_clean_stock_smali("".join(lines), filepath or "Instrumentation.smali")
    targets = (
        ("Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;", 2),
        ("Ljava/lang/Class;Landroid/content/Context;", 1),
    )
    callee = FRAMEWORK_CORE_SPECS[0].callee
    working = list(lines)
    total_hooked = 0

    for params_raw, ctx_param_idx in targets:
        matches = find_methods(
            working,
            "newApplication",
            params_raw=params_raw,
            return_type="Landroid/app/Application;",
        )
        if not matches:
            raise TargetNotFoundError(
                f"Instrumentation.newApplication({params_raw}) not found"
            )
        for match in reversed(matches):
            mlines = list(match.lines)
            ctx_reg = _param_reg_name(match.header, ctx_param_idx)
            ret_indices = [i for i, l in enumerate(mlines) if _RETURN_OBJ_RE.match(l)]
            if not ret_indices:
                raise TargetNotFoundError(
                    f"Instrumentation.newApplication({params_raw}): no return-object found"
                )
            dir_idx = (
                match.locals_directive_idx - match.start_idx
                if match.locals_directive_idx is not None
                else None
            )
            block = MethodBlock(
                header=match.header,
                start_idx=0,
                end_idx=len(mlines) - 1,
                lines=mlines,
                locals_directive_idx=dir_idx,
                locals_directive_kind=match.locals_directive_kind,
                locals_count=match.locals_count,
            )
            eff_ctx = effective_reg(ctx_reg, match.locals_count)
            locals_count = match.locals_count
            if eff_ctx > 15 and locals_count < 2:
                locals_count = set_min_locals(mlines, block, 2)
                eff_ctx = effective_reg(ctx_reg, locals_count)

            for ridx in reversed(ret_indices):
                m = _RETURN_OBJ_RE.match(mlines[ridx])
                assert m is not None
                ret_reg = m.group("reg")
                if eff_ctx <= 15:
                    inject = [f"    invoke-static {{{ctx_reg}}}, {callee}\n"]
                else:
                    # Pick a low local v0 or v1 that does NOT clobber vRet (preserved for return).
                    tmp = "v0" if effective_reg(ret_reg, locals_count) != 0 else "v1"
                    inject = [
                        f"    move-object/from16 {tmp}, {ctx_reg}\n",
                        f"    invoke-static {{{tmp}}}, {callee}\n",
                    ]
                mlines = mlines[:ridx] + inject + mlines[ridx:]
                total_hooked += 1

            working = _replace_method_lines(working, match, mlines)

    if total_hooked < 2:
        raise TargetNotFoundError("Instrumentation.newApplication hook failed")
    return working


def patch_framework_f2_activity_thread(lines: list[str], filepath: str = "") -> list[str]:
    """F2: Inject ``KaoriosHook.initActivityThread(Object)`` into ``handleBindApplication``."""
    ensure_clean_stock_smali("".join(lines), filepath or "ActivityThread.smali")
    callee = FRAMEWORK_CORE_SPECS[1].callee

    def _build(header: MethodHeader, locals_count: int, arg_specs, _idx: int) -> list[str]:
        moves, regs = _lower_args_for_entry(header, locals_count, arg_specs)
        return moves + [f"    invoke-static {{{regs[0]}}}, {callee}\n"]

    working, count = _patch_entry_with_args(
        lines,
        method_name="handleBindApplication",
        params_raw="Landroid/app/ActivityThread$AppBindData;",
        return_type="V",
        arg_specs=[(0, "object")],
        build_snippet=_build,
        min_locals=1,
    )
    if count == 0:
        # Check whether p0 (after bumping to 1 local -> eff = locals_count + 1) requires min_locals=1.
        raise TargetNotFoundError(
            "ActivityThread.handleBindApplication(ActivityThread$AppBindData)V not found"
        )
    return working


def patch_framework_f3_system_properties(lines: list[str], filepath: str = "") -> list[str]:
    """F3: Inject ``KaoriosHook.getSpoofedProperty(String, String)`` into ``SystemProperties.get``."""
    ensure_clean_stock_smali("".join(lines), filepath or "SystemProperties.smali")
    callee = FRAMEWORK_CORE_SPECS[2].callee

    matches_2arg = find_methods(
        lines,
        "get",
        params_raw="Ljava/lang/String;Ljava/lang/String;",
        return_type="Ljava/lang/String;",
    )
    if not matches_2arg:
        raise TargetNotFoundError("SystemProperties.get(String, String) not found")

    matches_1arg = find_methods(
        lines,
        "get",
        params_raw="Ljava/lang/String;",
        return_type="Ljava/lang/String;",
    )

    # Hook 1-arg get(String) only if it does NOT already delegate to 2-arg get(String, String).
    targets_to_patch = list(matches_2arg)
    for m1 in matches_1arg:
        body = "".join(m1.lines)
        if "Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;" not in body:
            targets_to_patch.append(m1)

    targets_to_patch.sort(key=lambda m: m.start_idx)
    working = list(lines)

    for match in reversed(targets_to_patch):
        mlines = list(match.lines)
        dir_idx = (
            match.locals_directive_idx - match.start_idx
            if match.locals_directive_idx is not None
            else None
        )

        def _arg_builder(header: MethodHeader, ret_reg: str) -> dict:
            key_reg = _param_reg_name(header, 0)

            def _lower(cur_lines, _ridx, _hdr, cur_ret, lcount, cur_callee):
                moves = emit_parallel_moves(
                    [("v0", key_reg, "object"), ("v1", cur_ret, "object")], lcount
                )
                return (
                    moves
                    + [
                        f"    invoke-static {{v0, v1}}, {cur_callee}\n",
                        "    move-result-object v0\n",
                    ],
                    "v0",
                )

            return {
                "args": [(key_reg, "object"), (ret_reg, "object")],
                "force_lower": False,
                "lower_emitter": _lower,
            }

        mlines, edits = _lower_pre_return_value_hook(
            mlines,
            match.header,
            dir_idx,
            match.locals_directive_kind,
            match.locals_count,
            _arg_builder,
            callee,
            min_locals_if_lowered=3,  # v0, v1 + v2 cycle scratch
        )
        if edits == 0:
            raise TargetNotFoundError("SystemProperties.get had no return-object")
        working = _replace_method_lines(working, match, mlines)

    return working


def patch_framework_f4_has_system_feature(lines: list[str], filepath: str = "") -> list[str]:
    """F4: Inject ``KaoriosHook.hasSystemFeature(String, int)`` into ``ApplicationPackageManager``."""
    ensure_clean_stock_smali("".join(lines), filepath or "ApplicationPackageManager.smali")
    callee = FRAMEWORK_CORE_SPECS[3].callee

    def _build(header: MethodHeader, locals_count: int, arg_specs, idx: int) -> list[str]:
        moves, regs = _lower_args_for_entry(header, locals_count, arg_specs)
        lbl = f":kaorios_hsf_passthrough_{idx}"
        return moves + [
            f"    invoke-static {{{', '.join(regs)}}}, {callee}\n",
            "    move-result-object v0\n",
            f"    if-eqz v0, {lbl}\n",
            "    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z\n",
            "    move-result v0\n",
            "    return v0\n",
            f"    {lbl}\n",
        ]

    working, count = _patch_entry_with_args(
        lines,
        method_name="hasSystemFeature",
        params_raw="Ljava/lang/String;I",
        return_type="Z",
        arg_specs=[(0, "object"), (1, "scalar")],
        build_snippet=_build,
        min_locals=2,
    )
    if count == 0:
        raise TargetNotFoundError("ApplicationPackageManager.hasSystemFeature(String, int)Z not found")
    return working


def patch_framework_f5_generate_keypair(lines: list[str], filepath: str = "") -> list[str]:
    """F5: Inject ``KaoriosHook.initGenerateSoftwareKeyPair(Object)`` into ``generateKeyPair()``."""
    ensure_clean_stock_smali(
        "".join(lines), filepath or "AndroidKeyStoreKeyPairGeneratorSpi.smali"
    )
    callee = FRAMEWORK_CORE_SPECS[4].callee

    def _build(header: MethodHeader, locals_count: int, _arg_specs, idx: int) -> list[str]:
        p0_eff = effective_reg("p0", locals_count)
        prefix = [] if p0_eff <= 15 else emit_move("v0", "p0", "object", locals_count)
        arg_reg = "p0" if p0_eff <= 15 else "v0"
        lbl = f":kaorios_gen_passthrough_{idx}"
        return prefix + [
            f"    invoke-static {{{arg_reg}}}, {callee}\n",
            "    move-result-object v0\n",
            f"    if-eqz v0, {lbl}\n",
            "    return-object v0\n",
            f"    {lbl}\n",
        ]

    working, count = _patch_entry_with_args(
        lines,
        method_name="generateKeyPair",
        params_raw="",
        return_type="Ljava/security/KeyPair;",
        arg_specs=[],
        build_snippet=_build,
        min_locals=1,
    )
    if count == 0:
        raise TargetNotFoundError(
            "AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair()KeyPair not found"
        )
    return working


def patch_framework_f6_certificate_chain(lines: list[str], filepath: str = "") -> list[str]:
    """F6: Inject 3-arg ``KaoriosHook.CertificateChainIfNeeded`` into ``engineGetCertificateChain``."""
    ensure_clean_stock_smali("".join(lines), filepath or "AndroidKeyStoreSpi.smali")
    callee = FRAMEWORK_CORE_SPECS[5].callee

    matches = find_methods(
        lines,
        "engineGetCertificateChain",
        params_raw="Ljava/lang/String;",
        return_type="[Ljava/security/cert/Certificate;",
    )
    if not matches:
        raise TargetNotFoundError(
            "AndroidKeyStoreSpi.engineGetCertificateChain(String)[Certificate not found"
        )

    working = list(lines)
    for match in reversed(matches):
        mlines = list(match.lines)
        dir_idx = (
            match.locals_directive_idx - match.start_idx
            if match.locals_directive_idx is not None
            else None
        )

        def _arg_builder(header: MethodHeader, ret_reg: str) -> dict:
            alias_reg = _param_reg_name(header, 0)

            def _lower(cur_lines, _ridx, _hdr, cur_ret, lcount, cur_callee):
                moves = emit_parallel_moves(
                    [
                        ("v0", "p0", "object"),
                        ("v1", alias_reg, "object"),
                        ("v2", cur_ret, "object"),
                    ],
                    lcount,
                )
                return (
                    moves
                    + [
                        f"    invoke-static {{v0, v1, v2}}, {cur_callee}\n",
                        "    move-result-object v0\n",
                    ],
                    "v0",
                )

            return {
                "args": [("p0", "object"), (alias_reg, "object"), (ret_reg, "object")],
                "force_lower": False,
                "lower_emitter": _lower,
            }

        mlines, edits = _lower_pre_return_value_hook(
            mlines,
            match.header,
            dir_idx,
            match.locals_directive_kind,
            match.locals_count,
            _arg_builder,
            callee,
            min_locals_if_lowered=4,  # v0, v1, v2 + v3 scratch
        )
        if edits == 0:
            raise TargetNotFoundError("AndroidKeyStoreSpi.engineGetCertificateChain has no return-object")
        working = _replace_method_lines(working, match, mlines)

    return working


def patch_framework_f7_name_value_cache(lines: list[str], filepath: str = "") -> list[str]:
    """F7: Inject ``KaoriosHook.shouldHideDevStatusFromNameValueCache`` into ``getStringForUser``."""
    ensure_clean_stock_smali("".join(lines), filepath or "Settings$NameValueCache.smali")
    callee = FRAMEWORK_CORE_SPECS[6].callee

    def _build(header: MethodHeader, locals_count: int, arg_specs, idx: int) -> list[str]:
        moves, regs = _lower_args_for_entry(header, locals_count, arg_specs)
        lbl = f":kaorios_nvc_passthrough_{idx}"
        return moves + [
            f"    invoke-static {{{', '.join(regs)}}}, {callee}\n",
            "    move-result-object v0\n",
            f"    if-eqz v0, {lbl}\n",
            "    return-object v0\n",
            f"    {lbl}\n",
        ]

    working, count = _patch_entry_with_args(
        lines,
        method_name="getStringForUser",
        params_raw="Landroid/content/ContentResolver;Ljava/lang/String;I",
        return_type="Ljava/lang/String;",
        arg_specs=[(0, "object"), (1, "object"), (2, "scalar")],
        build_snippet=_build,
        min_locals=3,
    )
    if count == 0:
        raise TargetNotFoundError(
            "Settings$NameValueCache.getStringForUser(ContentResolver, String, int)String not found"
        )
    return working


def patch_services_s1_system_server(lines: list[str], filepath: str = "") -> list[str]:
    """S1: Inject ``KaoriosHook.initSystemServer()`` into ``SystemServer.startOtherServices``."""
    ensure_clean_stock_smali("".join(lines), filepath or "SystemServer.smali")
    callee = SERVICES_CORE_SPECS[0].callee

    def _build(_header: MethodHeader, _locals_count: int, _arg_specs, _idx: int) -> list[str]:
        return [f"    invoke-static {{}}, {callee}\n"]

    working, count = _patch_entry_with_args(
        lines,
        method_name="startOtherServices",
        params_raw="Lcom/android/server/utils/TimingsTraceAndSlog;",
        return_type="V",
        arg_specs=[],
        build_snippet=_build,
        min_locals=0,
    )
    if count == 0:
        # Legacy AOSP without TimingsTraceAndSlog parameter
        working, count = _patch_entry_with_args(
            lines,
            method_name="startOtherServices",
            params_raw="",
            return_type="V",
            arg_specs=[],
            build_snippet=_build,
            min_locals=0,
        )
    if count == 0:
        raise TargetNotFoundError("SystemServer.startOtherServices not found")
    return working


def _classify_hide_app_params(header: MethodHeader) -> tuple[int, str, int, int] | None:
    """Identify ``(target_ps_param_idx, target_ps_type, calling_uid_idx, user_id_idx)``."""
    params = header.params
    if header.return_type != "Z" or len(params) < 3:
        return None
    ps_idx = None
    ps_type = ""
    int_indices: list[int] = []
    for idx, t in enumerate(params):
        if t in (
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/PackageSetting;",
        ):
            # When AppsFilterBase passes (snapshot, callingUid, callingSetting, targetPkgSetting, userId)
            # the last PackageState* before trailing userId is targetPkgSetting.
            ps_idx = idx
            ps_type = t
        elif t == "I":
            int_indices.append(idx)

    if ps_idx is None or len(int_indices) < 2:
        return None

    # In ComputerEngine: (targetPs, callingUid, ..., userId) -> callingUid is first I, userId is last I.
    # In AppsFilterBase: (snapshot, callingUid, callingSetting, targetPs, userId) -> also first I, last I!
    return ps_idx, ps_type, int_indices[0], int_indices[-1]


def patch_services_s2_hide_app_list(lines: list[str], filepath: str = "") -> list[str]:
    """S2: Inject ``KaoriosHook.shouldHideAppListForCaller`` into ``ComputerEngine`` / ``AppsFilterBase``."""
    ensure_clean_stock_smali("".join(lines), filepath or "ComputerEngine.smali")
    return _apply_unconditional_s2(lines)


def patch_services_s3_installer_source(lines: list[str], filepath: str = "") -> list[str]:
    """S3: Inject ``KaoriosHook.filterInstallerPackageName`` into ``getInstallerPackageName``."""
    ensure_clean_stock_smali("".join(lines), filepath or "ComputerEngine.smali")
    return _apply_unconditional_s3(lines)


def patch_services_s4_fakegapps(lines: list[str], filepath: str = "") -> list[str]:
    """S4: Inject ``KaoriosHook.spoofFakeGAppsPackageInfo`` into ``generatePackageInfo``."""
    ensure_clean_stock_smali("".join(lines), filepath or "ComputerEngine.smali")
    return _apply_unconditional_s4(lines)


def patch_services_computer_engine(lines: list[str], filepath: str = "") -> tuple[list[str], dict[str, bool]]:
    """Apply S2, S3, S4 to ``ComputerEngine.smali`` (allowing S2/S3 fallback if absent)."""
    ensure_clean_stock_smali("".join(lines), filepath or "ComputerEngine.smali")
    status = {"S2": False, "S3": False, "S4": False}
    working = list(lines)

    try:
        working = _apply_unconditional_s2(working)
        status["S2"] = True
    except TargetNotFoundError:
        pass

    try:
        working = _apply_unconditional_s3(working)
        status["S3"] = True
    except TargetNotFoundError:
        pass

    working = _apply_unconditional_s4(working)
    status["S4"] = True
    return working, status


def _apply_unconditional_s2(lines: list[str]) -> list[str]:
    callee = SERVICES_CORE_SPECS[1].callee
    candidates: list[MethodBlock] = []
    for name in ("shouldFilterApplicationIncludingUninstalled", "shouldFilterApplication"):
        candidates.extend(
            find_methods(
                lines,
                name=name,
                return_type="Z",
                predicate=lambda h, _body: (
                    not h.is_abstract and not h.is_native and _classify_hide_app_params(h) is not None
                ),
            )
        )
    if not candidates:
        raise TargetNotFoundError("No shouldFilterApplication* found")
    seen: set[int] = set()
    unique = []
    for m in sorted(candidates, key=lambda item: item.start_idx):
        if m.start_idx not in seen:
            seen.add(m.start_idx)
            unique.append(m)
    working = list(lines)
    for idx, match in enumerate(reversed(unique)):
        ps_idx, ps_type, uid_idx, user_idx = _classify_hide_app_params(match.header)  # type: ignore[misc]
        mlines = list(match.lines)
        dir_idx = (
            match.locals_directive_idx - match.start_idx
            if match.locals_directive_idx is not None
            else None
        )
        block = MethodBlock(
            header=match.header,
            start_idx=0,
            end_idx=len(mlines) - 1,
            lines=mlines,
            locals_directive_idx=dir_idx,
            locals_directive_kind=match.locals_directive_kind,
            locals_count=match.locals_count,
        )
        new_locals = set_min_locals(mlines, block, 3)
        ps_reg = _param_reg_name(match.header, ps_idx)
        uid_reg = _param_reg_name(match.header, uid_idx)
        user_reg = _param_reg_name(match.header, user_idx)
        invoke_op = (
            "invoke-interface"
            if ps_type == "Lcom/android/server/pm/pkg/PackageStateInternal;"
            else "invoke-virtual"
        )
        lbl = f":kaorios_hideapp_passthrough_{idx}"
        inject: list[str] = []
        if effective_reg(ps_reg, new_locals) <= 15:
            ps_arg = ps_reg
        else:
            inject.extend(emit_move("v0", ps_reg, "object", new_locals))
            ps_arg = "v0"
        inject.append(f"    if-eqz {ps_arg}, {lbl}\n")
        inject.append(f"    {invoke_op} {{{ps_arg}}}, {ps_type}->getPackageName()Ljava/lang/String;\n")
        inject.append("    move-result-object v1\n")
        if effective_reg(uid_reg, new_locals) <= 15:
            uid_arg = uid_reg
        else:
            inject.extend(emit_move("v0", uid_reg, "scalar", new_locals))
            uid_arg = "v0"
        if effective_reg(user_reg, new_locals) <= 15:
            user_arg = user_reg
        else:
            inject.extend(emit_move("v2", user_reg, "scalar", new_locals))
            user_arg = "v2"
        inject.extend(
            [
                f"    invoke-static {{{uid_arg}, v1, {user_arg}}}, {callee}\n",
                "    move-result v0\n",
                f"    if-eqz v0, {lbl}\n",
                "    const/4 v0, 0x1\n",
                "    return v0\n",
                f"    {lbl}\n",
            ]
        )
        insert_idx = find_method_entry_insert_idx(mlines, 0, len(mlines) - 1)
        mlines = mlines[:insert_idx] + inject + mlines[insert_idx:]
        working = _replace_method_lines(working, match, mlines)
    return working


def _apply_unconditional_s3(lines: list[str]) -> list[str]:
    callee = SERVICES_CORE_SPECS[2].callee
    matches: list[MethodBlock] = []
    for params_raw in ("Ljava/lang/String;I", "Ljava/lang/String;"):
        matches.extend(
            find_methods(
                lines,
                name="getInstallerPackageName",
                params_raw=params_raw,
                return_type="Ljava/lang/String;",
                predicate=lambda h, _body: not h.is_abstract and not h.is_native,
            )
        )
    if not matches:
        raise TargetNotFoundError("getInstallerPackageName not found")
    matches.sort(key=lambda m: m.start_idx)
    working = list(lines)
    for match in reversed(matches):
        mlines = list(match.lines)
        dir_idx = (
            match.locals_directive_idx - match.start_idx
            if match.locals_directive_idx is not None
            else None
        )

        def _arg_builder(header: MethodHeader, _ret_reg: str) -> dict:
            pkg_reg = _param_reg_name(header, 0)

            def _lower(_clines, _ridx, _hdr, cur_ret, lcount, cur_callee):
                moves = emit_parallel_moves(
                    [("v3", pkg_reg, "object"), ("v4", cur_ret, "object")], lcount
                )
                return (
                    moves
                    + [
                        "    const/4 v0, 0x0\n",
                        "    invoke-static {}, Landroid/os/Binder;->getCallingUid()I\n",
                        "    move-result v1\n",
                        "    const/4 v2, -0x1\n",
                        f"    invoke-static {{v0, v1, v2, v3, v4}}, {cur_callee}\n",
                        "    move-result-object v0\n",
                    ],
                    "v0",
                )

            return {"args": [], "force_lower": True, "lower_emitter": _lower}

        mlines, edits = _lower_pre_return_value_hook(
            mlines, match.header, dir_idx, match.locals_directive_kind, match.locals_count,
            _arg_builder, callee, min_locals_if_lowered=5,
        )
        if edits == 0:
            raise TargetNotFoundError("getInstallerPackageName has no return-object")
        working = _replace_method_lines(working, match, mlines)
    return working


def _apply_unconditional_s4(lines: list[str]) -> list[str]:
    callee = SERVICES_CORE_SPECS[3].callee
    matches = find_methods(
        lines,
        name="generatePackageInfo",
        return_type="Landroid/content/pm/PackageInfo;",
        predicate=lambda h, _b: not h.is_abstract and not h.is_native and len(h.params) >= 2 and h.params[1] in ("J", "I"),
    )
    if not matches:
        raise TargetNotFoundError("ComputerEngine.generatePackageInfo not found")
    working = list(lines)
    for match in reversed(matches):
        mlines = list(match.lines)
        dir_idx = (
            match.locals_directive_idx - match.start_idx
            if match.locals_directive_idx is not None
            else None
        )
        flags_type = match.header.params[1]
        flags_reg = _param_reg_name(match.header, 1)

        if flags_type == "J":

            def _arg_builder(_hdr: MethodHeader, ret_reg: str) -> dict:
                def _lower(_clines, _ridx, _h, cur_ret, lcount, cur_callee):
                    moves = emit_parallel_moves(
                        [("v0", cur_ret, "object"), ("v1", flags_reg, "wide")], lcount
                    )
                    return (
                        moves
                        + [
                            f"    invoke-static {{v0, v1, v2}}, {cur_callee}\n",
                            "    move-result-object v0\n",
                        ],
                        "v0",
                    )

                return {"args": [(ret_reg, "object"), (flags_reg, "wide")], "force_lower": False, "lower_emitter": _lower}

        else:

            def _arg_builder(_hdr: MethodHeader, ret_reg: str) -> dict:
                def _lower(_clines, _ridx, _h, cur_ret, lcount, cur_callee):
                    moves = emit_parallel_moves(
                        [("v0", cur_ret, "object"), ("v1", flags_reg, "scalar")], lcount
                    )
                    return (
                        moves
                        + [
                            "    int-to-long v1, v1\n",
                            f"    invoke-static {{v0, v1, v2}}, {cur_callee}\n",
                            "    move-result-object v0\n",
                        ],
                        "v0",
                    )

                return {"args": [], "force_lower": True, "lower_emitter": _lower}

        mlines, edits = _lower_pre_return_value_hook(
            mlines, match.header, dir_idx, match.locals_directive_kind, match.locals_count,
            _arg_builder, callee, min_locals_if_lowered=4,
        )
        if edits == 0:
            raise TargetNotFoundError("generatePackageInfo has no return-object")
        working = _replace_method_lines(working, match, mlines)
    return working


def patch_services_s5_secure_flag(lines: list[str], filepath: str = "") -> list[str]:
    """S5 (Optional): Inject ``KaoriosHook.isSecureFlag()Z`` into ``isSecureLocked``."""
    ensure_clean_stock_smali("".join(lines), filepath or "WindowState.smali")
    callee = "Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z"

    def _build(_header: MethodHeader, _locals_count: int, _arg_specs, idx: int) -> list[str]:
        lbl = f":kaorios_secflag_passthrough_{idx}"
        return [
            f"    invoke-static {{}}, {callee}\n",
            "    move-result v0\n",
            f"    if-eqz v0, {lbl}\n",
            "    const/4 v0, 0x0\n",
            "    return v0\n",
            f"    {lbl}\n",
        ]

    working, count = _patch_entry_with_args(
        lines,
        method_name="isSecureLocked",
        params_raw=None,
        return_type="Z",
        arg_specs=[],
        build_snippet=_build,
        min_locals=1,
    )
    if count == 0:
        raise TargetNotFoundError(f"{filepath or 'target'}: isSecureLocked(*)Z not found")
    return working


def patch_settings_provider_call(lines: list[str], filepath: str = "") -> list[str]:
    """Optional: Inject ``AdvancedPolicyService.filterSettingsCall`` into ``SettingsProvider.call``."""
    ensure_clean_stock_smali("".join(lines), filepath or "SettingsProvider.smali")
    callee = SETTINGS_PROVIDER_SPECS[0].callee

    def _build(header: MethodHeader, locals_count: int, arg_specs, idx: int) -> list[str]:
        moves, regs = _lower_args_for_entry(header, locals_count, arg_specs)
        lbl = f":kaorios_adv_settings_passthrough_{idx}"
        return moves + [
            f"    invoke-static {{{', '.join(regs)}}}, {callee}\n",
            "    move-result-object v0\n",
            f"    if-eqz v0, {lbl}\n",
            "    return-object v0\n",
            f"    {lbl}\n",
        ]

    working, count = _patch_entry_with_args(
        lines,
        method_name="call",
        params_raw="Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;",
        return_type="Landroid/os/Bundle;",
        arg_specs=[(0, "object"), (1, "object")],
        build_snippet=_build,
        min_locals=2,
    )
    if count == 0:
        raise TargetNotFoundError("SettingsProvider.call(String, String, Bundle)Bundle not found")
    return working


def _replace_method_with_constant_bool(
    lines: list[str], name: str, params_raw: str | None, value: bool
) -> tuple[list[str], int]:
    matches = find_methods(lines, name=name, params_raw=params_raw, return_type="Z")
    if not matches:
        return lines, 0
    working = list(lines)
    const_val = "0x1" if value else "0x0"
    for match in reversed(matches):
        mlines = [
            match.lines[0],
            "    .locals 1\n",
            f"    const/4 v0, {const_val}\n",
            "    return v0\n",
            ".end method\n",
        ]
        working = _replace_method_lines(working, match, mlines)
    return working, len(matches)


def patch_corepatch_framework_signing_details(lines: list[str], filepath: str = "") -> list[str]:
    """Optional S6: Patch ``SigningDetails.checkCapability*`` and ``hasAncestorOrSelf`` to true."""
    ensure_clean_stock_smali("".join(lines), filepath or "SigningDetails.smali")
    working = list(lines)
    total = 0
    for name, params in (
        ("checkCapability", "Landroid/content/pm/SigningDetails;I"),
        ("checkCapability", "Ljava/lang/String;I"),
        ("hasAncestorOrSelf", "Landroid/content/pm/SigningDetails;"),
    ):
        working, cnt = _replace_method_with_constant_bool(working, name, params, True)
        total += cnt
    if total == 0:
        raise TargetNotFoundError("SigningDetails: no checkCapability/hasAncestorOrSelf found")
    return working


def patch_corepatch_framework_apk_verifier(lines: list[str], filepath: str = "") -> list[str]:
    """Optional S6: Patch ``ApkSignatureVerifier.getMinimumSignatureSchemeVersionForTargetSdk`` -> 1."""
    ensure_clean_stock_smali("".join(lines), filepath or "ApkSignatureVerifier.smali")
    matches = find_methods(
        lines,
        name="getMinimumSignatureSchemeVersionForTargetSdk",
        params_raw="I",
        return_type="I",
    )
    if not matches:
        raise TargetNotFoundError(
            "ApkSignatureVerifier.getMinimumSignatureSchemeVersionForTargetSdk(I)I not found"
        )
    working = list(lines)
    for match in reversed(matches):
        mlines = [
            match.lines[0],
            "    .locals 1\n",
            "    const/4 v0, 0x1\n",
            "    return v0\n",
            ".end method\n",
        ]
        working = _replace_method_lines(working, match, mlines)
    return working


def patch_corepatch_services_pms_utils(lines: list[str], filepath: str = "") -> list[str]:
    """Optional S6: Bypass downgrade and signature-mismatch checks in ``PackageManagerServiceUtils``."""
    ensure_clean_stock_smali("".join(lines), filepath or "PackageManagerServiceUtils.smali")
    working = list(lines)
    total = 0

    for match in reversed(find_methods(working, name="checkDowngrade", return_type="V")):
        mlines = [
            match.lines[0],
            "    .locals 0\n",
            "    return-void\n",
            ".end method\n",
        ]
        working = _replace_method_lines(working, match, mlines)
        total += 1

    for match in reversed(
        find_methods(
            working,
            name="compareSignatures",
            params_raw="[Landroid/content/pm/Signature;[Landroid/content/pm/Signature;",
            return_type="I",
        )
    ):
        mlines = [
            match.lines[0],
            "    .locals 1\n",
            "    const/4 v0, 0x0\n",
            "    return v0\n",
            ".end method\n",
        ]
        working = _replace_method_lines(working, match, mlines)
        total += 1

    if total == 0:
        raise TargetNotFoundError(
            "PackageManagerServiceUtils: neither checkDowngrade nor compareSignatures found"
        )
    return working


def verify_smali_contains_expected(text: str, required_substrings: Iterable[str]) -> list[str]:
    """Return missing substrings and forbid legacy/no-op tokens."""
    errors: list[str] = []
    for bad in FORBIDDEN_HOOK_TOKENS:
        if bad in text:
            errors.append(f"Forbidden hook token present: {bad}")
    for req in required_substrings:
        if req not in text:
            errors.append(f"Missing expected hook call: {req}")
    return errors


def relpath_for_class(class_desc: str) -> str:
    """Delegate helper for ``kaorios_hook_spec.class_descriptor_to_relpath``."""
    return class_descriptor_to_relpath(class_desc)
