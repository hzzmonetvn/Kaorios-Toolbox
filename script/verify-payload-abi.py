#!/usr/bin/env python3
"""Check patched facade calls against the supplied compiled payload's smali ABI."""
from __future__ import annotations

import argparse
import re
from pathlib import Path

OWNER = 'Landroid/security/kaorios/KaoriosHook;'
METHOD = re.compile(r'^\.method\s+(?P<flags>.*?)\s+(?P<signature>[^\s(]+\([^)]*\)\S+)\s*$')
CALL = re.compile(r'\binvoke-static(?:/range)?\s+\{[^}]*\}\s*,\s*' + re.escape(OWNER) + r'->([^\s(]+\([^)]*\)\S+)')


def instructions(text: str):
    for line in text.splitlines():
        # Quoted strings and comments are data, never method definitions or calls.
        yield re.sub(r'"(?:\\.|[^"\\])*"|#.*', '', line).strip()


def verify_calls(root: Path, payload_root: Path) -> int:
    if not root.is_dir() or not payload_root.is_dir():
        raise ValueError('caller and payload smali roots must be directories')
    facades = []
    for path in payload_root.rglob('KaoriosHook.smali'):
        lines = list(instructions(path.read_text(encoding='utf-8')))
        if any(line.startswith('.class ') and line.split()[-1] == OWNER for line in lines):
            facades.append((path, lines))
    if len(facades) != 1:
        raise ValueError(f'expected exactly one payload facade; found {len(facades)}')
    methods = {}
    for line in facades[0][1]:
        match = METHOD.fullmatch(line)
        if match:
            signature = match['signature']
            if signature in methods:
                raise ValueError(f'duplicate payload method: {signature}')
            methods[signature] = set(match['flags'].split())
    count = 0
    for path in root.rglob('*.smali'):
        if path.resolve() == facades[0][0].resolve():
            continue
        for line in instructions(path.read_text(encoding='utf-8')):
            for match in CALL.finditer(line):
                signature = match[1]
                flags = methods.get(signature, set())
                if not {'public', 'static'} <= flags or {'abstract', 'native'} & flags:
                    raise ValueError(f'{path}: supplied payload lacks public static {signature}')
                count += 1
    return count


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('smali_root', type=Path)
    parser.add_argument('--payload-smali', type=Path)
    args = parser.parse_args()
    count = verify_calls(args.smali_root, args.payload_smali or args.smali_root)
    print(f'OK: {count} facade calls match public static payload methods')


if __name__ == '__main__':
    main()
