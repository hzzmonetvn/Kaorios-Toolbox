#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
"""Export pinned public sources/dependencies, omitting data samples and keys."""
import argparse
import io
from pathlib import Path, PurePosixPath
import re
import subprocess
import tarfile
import zipfile

NOTICE_NAME = re.compile(r'license|notice|copying|copyright|patents|assembly_exception|third.party', re.I)
RAW_KEY = re.compile(rb'-----BEGIN (?:RSA |EC |ENCRYPTED )?PRIVATE KEY-----\s+[A-Za-z0-9+/=]{32,}')
SKIP_SUFFIXES = ('.jks', '.keystore', '.p12', '.pfx')


def check_data(path, data):
    if RAW_KEY.search(data):
        raise ValueError(f'Private key sample must not be exported: {path}')


def export(sources, destination):
    destination.mkdir(parents=True, exist_ok=True)
    licenses = destination / 'licenses'
    licenses.mkdir(exist_ok=True)
    with tarfile.open(destination / 'sources.tar.gz', 'w:gz') as archive:
        for source in sorted(sources.iterdir()):
            if not source.is_dir():
                continue
            tracked = subprocess.check_output(['git', '-C', str(source), 'ls-files', '--recurse-submodules'], text=True).splitlines()
            extra = [str(p.relative_to(source)) for p in (source / 'helper-dependencies').rglob('*') if p.is_file()]
            if (source / 'KAORIOS-CHANGES.md').exists():
                extra.append('KAORIOS-CHANGES.md')
            for name in sorted(set(tracked + extra)):
                path = source / name
                if name.endswith(SKIP_SUFFIXES) or path.name in ('keybox.xml', 'local.properties') or not path.is_file() or path.is_symlink():
                    continue
                data = path.read_bytes()
                check_data(name, data)
                if path.suffix == '.jar':
                    with zipfile.ZipFile(io.BytesIO(data)) as nested:
                        for item in nested.infolist():
                            if item.is_dir():
                                continue
                            entry = PurePosixPath(item.filename)
                            if entry.is_absolute() or '..' in entry.parts or '\\' in item.filename:
                                raise ValueError('Unsafe dependency source archive path')
                            check_data(item.filename, nested.read(item))
                            if NOTICE_NAME.search(item.filename):
                                target = licenses / source.name / 'dependency-notices' / Path(name).parent / item.filename
                                target.parent.mkdir(parents=True, exist_ok=True)
                                target.write_bytes(nested.read(item))
                info = tarfile.TarInfo(source.name + '/' + name)
                info.size, info.mtime, info.mode = len(data), 1791331200, path.stat().st_mode & 0o777
                archive.addfile(info, io.BytesIO(data))
                if NOTICE_NAME.search(path.name) or path.suffix == '.pom' or name.endswith('-runtime.txt'):
                    target = licenses / source.name / name
                    target.parent.mkdir(parents=True, exist_ok=True)
                    target.write_bytes(data)
        instructions = b'''Public source snapshots include the applied Helper changes and original licenses.
No .git history, signing keystore, local.properties or keybox sample is included.
To rebuild HMA, create empty local.properties and use JDK 21/SDK 37; build
:app:assembleRelease before :zygote:assembleRelease with the same signing key.
To rebuild TEE, use JDK 21, SDK 36, NDK 27.3.13750724, cargo-ndk and Rust
with aarch64-linux-android; run zipRelease. Snapshot version metadata is fixed.
The archived Rust vendor tree supports offline Cargo using its config.toml;
Gradle source jars/POMs and additional GPL/LGPL source trees are included.
Use public Kaorios-Helper/tools/package_helper.py to assemble the final module.
Software keybox samples are omitted intentionally and are not build inputs.
'''
        info = tarfile.TarInfo('BUILD-SNAPSHOT.txt')
        info.size, info.mtime = len(instructions), 1791331200
        archive.addfile(info, io.BytesIO(instructions))
    print('Public source and notice snapshot: ready; key material excluded')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('sources', type=Path)
    parser.add_argument('destination', type=Path)
    args = parser.parse_args()
    export(args.sources, args.destination)
