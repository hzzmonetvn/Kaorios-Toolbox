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
    r"iput-object[ \t]+p1,[ \t]*p0,[ \t]*"
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


def verify(text: str) -> None:
    """Assert the final smali has exactly one hook after the exact assignment."""
    start, end = _method_span(text)
    body = text[start:end]
    if _hook_count(body) != 1:
        raise ValueError("expected exactly one Object initActivityThread hook")
    assignment = ASSIGNMENT_RE.search(body)
    if assignment is None:
        raise ValueError("exact mBoundApplication p1/p0 assignment not found")
    if body.index(HOOK_TARGET) <= assignment.start():
        raise ValueError("Object initActivityThread hook precedes mBoundApplication assignment")


def patch(text: str) -> tuple[str, bool]:
    """Inject after the exact assignment, preserving the input newline convention."""
    start, end = _method_span(text)
    body = text[start:end]
    count = _hook_count(body)
    if count == 1:
        verify(text)
        return text, False
    if count > 1:
        raise ValueError("multiple Object initActivityThread hooks already present")

    assignments = list(ASSIGNMENT_RE.finditer(body))
    if len(assignments) != 1:
        raise ValueError(
            "expected exactly one mBoundApplication p1/p0 assignment; "
            f"found {len(assignments)}"
        )
    assignment = assignments[0]
    newline = "\r\n" if "\r\n" in text else "\n"
    hook = f"{assignment.group('indent')}invoke-static {{p1}}, {HOOK_TARGET}{newline}"
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
