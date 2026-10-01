#!/usr/bin/env python3
"""Fail-closed Android 17 ActivityThread process-hook smali patcher."""
import argparse
import re
from pathlib import Path


HOOK_TARGET = (
    "Landroid/security/kaorios/KaoriosHook;->"
    "initActivityThread(Ljava/lang/Object;)V"
)
METHOD_RE = re.compile(
    r"(?m)^\.method[^\r\n]*[ \t]"
    r"handleBindApplication"
    r"\(Landroid/app/ActivityThread\$AppBindData;\)V"
    r"[ \t]*(?:\r?\n|$)"
)
METHOD_END_RE = re.compile(r"(?m)^[ \t]*\.end method[ \t]*(?:\r?\n|$)")
ASSIGNMENT_RE = re.compile(
    r"(?m)^(?P<indent>[ \t]*)"
    r"iput-object[ \t]+(?P<data>[vp]\d+),[ \t]*(?P<owner>[vp]\d+),[ \t]*"
    r"Landroid/app/ActivityThread;->mBoundApplication:"
    r"Landroid/app/ActivityThread\$AppBindData;"
    r"[ \t]*(?:\r?\n|$)"
)


def _method_span(text: str) -> tuple[int, int]:
    matches = list(METHOD_RE.finditer(text))
    if len(matches) != 1:
        raise ValueError(
            "expected exactly one ActivityThread.handleBindApplication(AppBindData); "
            f"found {len(matches)}"
        )
    end = METHOD_END_RE.search(text, matches[0].end())
    if end is None:
        raise ValueError("unterminated ActivityThread.handleBindApplication")
    return matches[0].start(), end.end()


def _hook_count(body: str) -> int:
    return body.count(HOOK_TARGET)


def _anchor(body: str):
    assignments = list(ASSIGNMENT_RE.finditer(body))
    if len(assignments) != 1:
        raise ValueError(f"expected exactly one mBoundApplication assignment; found {len(assignments)}")
    assignment = assignments[0]
    if re.search(r"(?m)^\.method[^\n]*\bstatic\b", body):
        raise ValueError("unsupported static handleBindApplication")
    registers = re.search(r"\.(registers|locals)\s+(\d+)", body)
    if registers is None:
        raise ValueError("unsupported ActivityThread register layout")
    count = int(registers[2])
    base = count - 2 if registers[1] == "registers" else count
    if base < 0:
        raise ValueError("unsupported ActivityThread parameter count")
    physical = lambda reg: int(reg[1:]) + (base if reg.startswith("p") else 0)
    aliases = {base: 0, base + 1: 1}
    prefix = body[:assignment.start()]
    initial_moves = True
    for line in prefix.splitlines():
        instruction = line.strip().split("#", 1)[0].strip()
        if not instruction or instruction.startswith("."):
            continue
        move = re.fullmatch(r"move-object(?:/from16|/16)?\s+([vp]\d+),\s*([vp]\d+)", instruction)
        if initial_moves and move and physical(move[2]) in aliases:
            aliases[physical(move[1])] = aliases[physical(move[2])]
            continue
        initial_moves = False
        # Reject any write to a proven alias, including the second word of a wide destination.
        if instruction.startswith((":", "invoke-", "iput", "sput", "aput", "if-", "goto", "return", "throw", "monitor-", "check-cast", "packed-switch", "sparse-switch", "fill-array-data")):
            continue
        destination = re.match(r"\S+\s+([vp]\d+)", instruction)
        if destination:
            written = physical(destination[1])
            wide = any(word in instruction.split()[0] for word in ("wide", "long", "double"))
            if written in aliases or (wide and written + 1 in aliases):
                raise ValueError("unsupported ActivityThread alias overwritten before assignment")
    if aliases.get(physical(assignment['data'])) != 1 or aliases.get(physical(assignment['owner'])) != 0:
        raise ValueError("unsupported mBoundApplication operands are not proven entry parameter aliases")
    # A later back edge could revisit the anchor after changing the aliases.
    labels = set(re.findall(r"(?m)^\s*(:[\w$]+)\s*$", prefix))
    suffix = body[assignment.end():]
    for line in suffix.splitlines():
        instruction = line.strip()
        if instruction.startswith(("if-", "goto")) and any(label in re.findall(r":[\w$]+", instruction) for label in labels):
            raise ValueError("unsupported ActivityThread back edge into anchor prefix")
        if re.fullmatch(r":[\w$]+", instruction) and instruction in labels:
            raise ValueError("unsupported ActivityThread switch/back-edge label")
    reg = assignment['data']
    opcode = "invoke-static/range" if physical(reg) > 15 else "invoke-static"
    args = f"{{{reg} .. {reg}}}" if physical(reg) > 15 else f"{{{reg}}}"
    return assignment, f"{opcode} {args}, {HOOK_TARGET}"


def verify(text: str) -> None:
    start, end = _method_span(text)
    body = text[start:end]
    if _hook_count(body) != 1:
        raise ValueError("expected exactly one Object initActivityThread hook")
    assignment, call = _anchor(body)
    following = body[assignment.end():].lstrip()
    if not following.startswith(call) or following[len(call):].splitlines()[0].strip():
        raise ValueError("Object initActivityThread hook must immediately follow proven assignment")


def patch(text: str) -> tuple[str, bool]:
    start, end = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count == 1:
        verify(text)
        return text, False
    if count > 1:
        raise ValueError("multiple Object initActivityThread hooks already present")
    assignment, call = _anchor(body)
    newline = "\r\n" if "\r\n" in text else "\n"
    hook = f"{assignment.group('indent')}{call}{newline}"
    patched_body = body[:assignment.end()] + hook + body[assignment.end():]
    patched = text[:start] + patched_body + text[end:]
    verify(patched)
    return patched, True


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("smali", type=Path)
    args = parser.parse_args()
    original = args.smali.read_bytes().decode("utf-8")
    patched, changed = patch(original)
    if changed:
        args.smali.write_bytes(patched.encode("utf-8"))
    print("patched" if changed else "already patched")


if __name__ == "__main__":
    main()
