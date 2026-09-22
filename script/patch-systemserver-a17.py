#!/usr/bin/env python3
"""Fail-closed Android 17 SystemServer smali patcher for Kaorios initSystemServer hook."""
import argparse
import re
from pathlib import Path

HOOK_TARGET = "Landroid/security/kaorios/KaoriosHook;->initSystemServer()V"
HOOK_CALL = "invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V"
ANCHOR_CALL = "invoke-static {}, Landroid/os/Looper;->loop()V"

CLASS_RE = re.compile(r"(?m)^\.class\s+.*Lcom/android/server/SystemServer;\s*$")
METHOD_RUN_RE = re.compile(r"(?m)^\.method\s+(?:public\s+)?run\(\)V\s*$")
METHOD_END_RE = re.compile(r"(?m)^[ \t]*\.end method[ \t]*(?:\r?\n|$)")


def _method_span(text: str) -> tuple[int, int]:
    """Returns (start, end) for the target SystemServer.run()V method."""
    if not CLASS_RE.search(text):
        raise ValueError("expected .class Lcom/android/server/SystemServer;")

    matches = list(METHOD_RUN_RE.finditer(text))
    if len(matches) == 0:
        raise ValueError("target SystemServer.run()V method not found")
    if len(matches) > 1:
        raise ValueError(f"ambiguous SystemServer.run()V: found {len(matches)} matches")

    end = METHOD_END_RE.search(text, matches[0].end())
    if end is None:
        raise ValueError("unterminated SystemServer.run()V method")
    return matches[0].start(), end.end()


def verify(text: str) -> None:
    """Assert the final smali has exactly one structural hook sequence in SystemServer.run()V."""
    start, end = _method_span(text)
    body = text[start:end]

    total_hook_count = text.count(HOOK_TARGET)
    if total_hook_count != 1:
        raise ValueError(f"expected exactly one initSystemServer hook in class; found {total_hook_count}")

    if HOOK_CALL not in body:
        raise ValueError("expected exact invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V in run()V")

    if ANCHOR_CALL not in body:
        raise ValueError("expected Looper.loop() in SystemServer.run()V")

    pattern = (
        r"\s*" + re.escape(HOOK_CALL)
        + r"\s*(?:\r?\n)+"
        + r"(?:(?!\.end method).)*?"
        + r"\s*" + re.escape(ANCHOR_CALL)
    )
    if not re.search(pattern, body, re.DOTALL):
        raise ValueError("hook must precede Looper.loop() in SystemServer.run()V")


def patch(text: str) -> str:
    """Inject KaoriosHook.initSystemServer()V right before Looper.loop() in SystemServer.run()V."""
    start, end = _method_span(text)
    body = text[start:end]

    if HOOK_TARGET in body:
        verify(text)
        return text

    anchor_matches = list(re.finditer(r"(?m)^(?P<indent>[ \t]*)" + re.escape(ANCHOR_CALL) + r"[ \t]*(?:\r?\n|$)", body))
    if len(anchor_matches) == 0:
        raise ValueError("anchor 'invoke-static {}, Landroid/os/Looper;->loop()V' not found in SystemServer.run()V")
    if len(anchor_matches) > 1:
        raise ValueError(f"ambiguous anchor: found {len(anchor_matches)} Looper.loop() in SystemServer.run()V")

    match = anchor_matches[0]
    indent = match.group("indent")
    anchor_pos = match.start()

    injection = f"{indent}{HOOK_CALL}\n\n"
    new_body = body[:anchor_pos] + injection + body[anchor_pos:]
    new_text = text[:start] + new_body + text[end:]

    verify(new_text)
    return new_text


def main() -> None:
    parser = argparse.ArgumentParser(description="Patch Android 17 SystemServer.smali for Kaorios")
    parser.add_argument("smali_path", type=Path, help="Path to SystemServer.smali")
    parser.add_argument("--check-only", action="store_true", help="Verify without modifying")
    args = parser.parse_args()

    content = args.smali_path.read_text(encoding="utf-8")
    if args.check_only:
        verify(content)
        print("OK: SystemServer smali verified")
    else:
        patched = patch(content)
        args.smali_path.write_text(patched, encoding="utf-8")
        print("OK: SystemServer smali patched")


if __name__ == "__main__":
    main()
