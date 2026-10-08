#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
"""Export prepared COPG assets with the source-built composite runtime."""
import argparse
import json
from pathlib import Path
import zipfile

from package_helper import verify_elf

ROOT = Path(__file__).resolve().parents[1]


def package(source, native, output):
    if not (source / 'KAORIOS-CHANGES.md').is_file():
        raise ValueError('COPG source must be prepared before packaging')
    files = {}
    for name in ('zygisk/arm64-v8a.so', 'copg/controller'):
        data = (native / name).read_bytes()
        verify_elf(data)
        files[name] = data
    files['copg/native-build.json'] = (native / 'native-build.json').read_bytes()
    for name in ('COPG.json', 'list.json', 'cpuinfo_spoof'):
        files['copg/' + name] = (source / 'module' / name).read_bytes()
    config = json.loads(files['copg/COPG.json'])
    if not isinstance(config, dict):
        raise ValueError('COPG defaults must be a JSON object')
    for name in config:
        if name.startswith('PACKAGES_') and not name.endswith('_DEVICE'):
            config[name] = []
    config['cpu_spoof'] = {'blacklist': [], 'cpu_only_packages': []}
    files['copg/COPG.json'] = (json.dumps(config, indent=2) + '\n').encode()
    files['copg/list.json'] = b'{}\n'
    for path in (source / 'webroot').rglob('*'):
        if path.is_file():
            files['webroot/copg/' + path.relative_to(source / 'webroot').as_posix()] = path.read_bytes()
    pin = json.loads((ROOT / 'upstreams.json').read_text())['copg']['commit']
    files['copg/upstream.prop'] = f'version=5.1.1\ncommit={pin}\n'.encode()
    output.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(output, 'w', zipfile.ZIP_DEFLATED) as archive:
        for name, data in sorted(files.items()):
            archive.writestr(name, data)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--source', required=True, type=Path)
    parser.add_argument('--native', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    package(args.source, args.native, args.output)
    print('COPG distribution inputs: ready (no default app targets)')
