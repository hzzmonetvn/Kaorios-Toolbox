#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import argparse
import json
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[1]

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('destination', type=Path)
    parser.add_argument('names', nargs='+', choices=['hma', 'tee', 'copg', 'zygote-loader', 'panama'])
    args = parser.parse_args()
    pins = json.loads((ROOT / 'upstreams.json').read_text())
    args.destination.mkdir(parents=True, exist_ok=True)
    for name in args.names:
        source = args.destination / name
        subprocess.run(['git', 'clone', '--quiet', pins[name]['url'], str(source)], check=True)
        if name == 'copg':
            # This public snapshot is outside the current branch history.
            subprocess.run(['git', '-C', str(source), 'fetch', '--quiet', 'origin', pins[name]['commit']], check=True)
        subprocess.run(['git', '-C', str(source), 'checkout', '--quiet', pins[name]['commit']], check=True)
        subprocess.run(['git', '-C', str(source), 'submodule', 'update', '--init', '--recursive', '--quiet'], check=True)
        actual = subprocess.check_output(['git', '-C', str(source), 'rev-parse', 'HEAD'], text=True).strip()
        if actual != pins[name]['commit']:
            raise ValueError('Source revision mismatch')
        print(name, actual)
