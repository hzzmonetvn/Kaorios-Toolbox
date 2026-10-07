#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
"""Package one HMA Zygisk module and a separate optional TEE runtime."""
import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import zipfile

ROOT = Path(__file__).resolve().parents[1]
VERSION = '0.1.0-experimental'
FORBIDDEN = re.compile(rb'-----BEGIN (?:RSA |EC |ENCRYPTED )?PRIVATE KEY-----\s+[A-Za-z0-9+/=]{32,}|<AndroidAttestation>|<Keybox\b')


def read_zip(path):
    result = {}
    with zipfile.ZipFile(path) as archive:
        for item in archive.infolist():
            if item.is_dir():
                continue
            name = PurePosixPath(item.filename)
            if name.is_absolute() or '..' in name.parts or '\\' in item.filename or any(c in item.filename for c in '\r\n'):
                raise ValueError('Unsafe archive path')
            if item.filename in result:
                raise ValueError('Duplicate archive entry')
            if item.file_size > 100_000_000:
                raise ValueError('Unexpectedly large archive member')
            result[item.filename] = archive.read(item)
    return result


def verify_elf(data):
    if data[:5] != b'\x7fELF\x02' or int.from_bytes(data[18:20], 'little') != 183:
        raise ValueError('Expected an arm64 ELF runtime')


def check_payload(files):
    required = ['module.prop', 'customize.sh', 'manager.apk', 'classes.dex',
                'zygisk/arm64-v8a.so', 'helperctl.sh', 'service.sh',
                'tee/classes.dex', 'tee/daemon', 'tee/supervisor', 'tee/inject',
                'tee/libTEESimulator.so', 'tee/libcertgen.so', 'LICENSE', 'upstreams.json']
    for name in required:
        if name not in files or not files[name]:
            raise ValueError(f'Missing runtime member: {name}')
    if 'packages/android' not in files:
        raise ValueError('HMA system_server injection marker is missing')
    for name, data in files.items():
        if name.endswith(('.jks', '.keystore')) or name.endswith('keybox.xml') or FORBIDDEN.search(data):
            raise ValueError(f'Forbidden key material in artifact: {name}')
        if name.endswith('.so') or name in ('tee/inject', 'tee/supervisor'):
            verify_elf(data)
    for name in ('classes.dex', 'tee/classes.dex'):
        if not files[name].startswith(b'dex\n'):
            raise ValueError('Expected a compiled DEX payload')
    if files['classes.dex'] == files['tee/classes.dex']:
        raise ValueError('HMA and TEE DEX must remain separate')


def package(hma_zip, tee_zip, licenses, destination):
    hma, tee = read_zip(hma_zip), read_zip(tee_zip)
    files = {name: data for name, data in hma.items()
             if not name.startswith(('lib/', 'zygisk/')) or name.startswith(('lib/arm64-v8a/', 'zygisk/arm64-v8a.so'))}
    prop = files['module.prop'].decode()
    updates = {'id': 'kaorios_helper', 'name': 'Kaorios Helper', 'version': VERSION,
               'versionCode': '1', 'author': 'hzzmonetvn',
               'description': 'Experimental HMA Zygisk + optional TEE Simulator RS; TEE off by default.'}
    props = dict(line.split('=', 1) for line in prop.splitlines() if '=' in line and not line.startswith('#'))
    props.update(updates)
    props.pop('updateJson', None)
    files['module.prop'] = ''.join(f'{key}={value}\n' for key, value in props.items()).encode()
    for path in (ROOT / 'module').glob('*.sh'):
        files[path.name] = path.read_bytes()
    keep_parts = {'10-enforce-api-version.sh', '11-enforce-arch.sh', '20-enforce-magisk-version.sh',
                  '21-enforce-ksu-kernel.sh', '22-check-zygisk.sh'}
    files = {name: data for name, data in files.items()
             if not name.startswith('customize.d/') or name.split('/')[-1] in keep_parts}
    files.pop('hmaoss.sh', None)
    files.pop('update_desc.sh', None)
    files['tee/classes.dex'] = tee['classes.dex']
    files['tee/daemon'] = tee['daemon']
    for original, renamed in [('libinject.so', 'inject'), ('libsupervisor.so', 'supervisor'),
                               ('libTEESimulator.so', 'libTEESimulator.so'), ('libcertgen.so', 'libcertgen.so')]:
        files[f'tee/{renamed}'] = tee[f'lib/arm64-v8a/{original}']
    files['sepolicy.rule'] = hma.get('sepolicy.rule', b'') + b'\n' + tee['sepolicy.rule']
    files['LICENSE'] = (ROOT / 'LICENSE').read_bytes()
    files['NOTICE'] = (ROOT / 'NOTICE').read_bytes()
    files['README.md'] = (ROOT / 'README.md').read_bytes()
    files['upstreams.json'] = (ROOT / 'upstreams.json').read_bytes()
    if not licenses.is_dir() or not any(licenses.rglob('*')):
        raise ValueError('Third-party license inventory is required')
    for path in licenses.rglob('*'):
        if path.is_file():
            files['licenses/' + path.relative_to(licenses).as_posix()] = path.read_bytes()
    check_payload(files)
    files['files.sha256'] = ''.join(f'{hashlib.sha256(data).hexdigest()}  {name}\n'
                                  for name, data in sorted(files.items())).encode()
    destination.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(destination, 'w', zipfile.ZIP_DEFLATED) as archive:
        for name, data in sorted(files.items()):
            info = zipfile.ZipInfo(name, (2026, 10, 7, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = (0o100755 if name.endswith('.sh') or name in ('tee/daemon', 'tee/inject', 'tee/supervisor') else 0o100644) << 16
            archive.writestr(info, data)
    verify(destination)


def verify(path):
    files = read_zip(path)
    check_payload(files)
    checked = set()
    for line in files['files.sha256'].decode().splitlines():
        digest, name = line.split('  ', 1)
        if name in checked or name not in files or hashlib.sha256(files[name]).hexdigest() != digest:
            raise ValueError('Artifact checksum mismatch')
        checked.add(name)
    if checked != set(files) - {'files.sha256'}:
        raise ValueError('Checksum inventory is incomplete')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--hma', type=Path)
    parser.add_argument('--tee', type=Path)
    parser.add_argument('--licenses', type=Path)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--verify', type=Path)
    args = parser.parse_args()
    if args.verify:
        verify(args.verify)
    else:
        if not all((args.hma, args.tee, args.licenses, args.output)):
            parser.error('Packaging requires --hma, --tee, --licenses and --output')
        package(args.hma, args.tee, args.licenses, args.output)
    print('Helper artifact checks: PASS (host; device hooks unverified)')
