#!/usr/bin/env python3
"""Dev-only extraction, diagnostics and optional patch roundtrip for included samples."""
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import zipfile

SCRIPT_DIR = Path(__file__).resolve().parent
TOOLS = ['smali-3.0.8.jar', 'baksmali-3.0.8.jar', 'smali-dexlib2.jar',
         'smali-util.jar', 'antlr-runtime.jar', 'jcommander.jar', 'guava.jar']
CLASSES = ['Lcom/android/server/pm/ComputerEngine;',
           'Lcom/android/server/pm/PackageManagerService;',
           'Lcom/android/server/pm/IPackageManagerBase;',
           'Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;',
           'Lcom/android/providers/settings/SettingsProvider;',
           'Lcom/android/server/SystemServer;', 'Landroid/app/Instrumentation;',
           'Landroid/app/ApplicationPackageManager;', 'Landroid/content/pm/InstallSourceInfo;',
           'Landroid/security/keystore2/AndroidKeyStoreSpi;',
           'Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;',
           'Landroid/app/ActivityThread;', 'Landroid/os/Build;', 'Landroid/os/Build$VERSION;',
           'Lcom/android/server/pm/AppsFilterBase;', 'Lcom/android/server/pm/AppsFilterImpl;']


def load(name):
    spec = importlib.util.spec_from_file_location(name, SCRIPT_DIR / (name + '.py'))
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def digest(path):
    sha = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            sha.update(chunk)
    return sha.hexdigest()


def run(command):
    result = subprocess.run(command, capture_output=True, text=True)
    if result.returncode:
        raise RuntimeError(f'{command[0]} failed: {result.stderr[-2000:]}')
    return result.stdout


def refresh(sample_dir, tool_dir, report_path, verify_patches):
    checker = load('check-framework-samples')
    jars = [tool_dir / name for name in TOOLS]
    for jar in jars:
        if not jar.is_file():
            raise ValueError(f'Missing tool: {jar}')
    cp = os.pathsep.join(str(jar.resolve()) for jar in jars)
    report = {'evidence': 'SAMPLE_DIAGNOSTIC', 'smali_version': '3.0.8',
              'tools_sha256': {jar.name: digest(jar) for jar in jars},
              'archives': [], 'patch_roundtrips': []}
    with tempfile.TemporaryDirectory(prefix='kaorios-samples-') as folder:
        root = Path(folder)
        tree = root / 'stock'
        for generation in checker.SAMPLE_GENS:
            for filename in ['framework.jar', 'services.jar', 'SettingsProvider.apk']:
                archive = sample_dir / generation / filename
                record = {'sample': generation, 'archive': filename,
                          'sha256': digest(archive), 'dex': []}
                report['archives'].append(record)
                with zipfile.ZipFile(archive) as zipped:
                    names = sorted([name for name in zipped.namelist() if re.fullmatch(r'classes(?:[2-9]|[1-9][0-9]+)?\.dex', name)],
                                   key=lambda name: 1 if name == 'classes.dex' else int(name[7:-4]))
                    if not names or len(names) != len(set(names)):
                        raise ValueError(f'No unique classes*.dex entries: {archive}')
                    for name in names:
                        data = zipped.read(name)
                        dex = root / 'dex' / generation / archive.stem / name
                        dex.parent.mkdir(parents=True, exist_ok=True)
                        dex.write_bytes(data)
                        sha = hashlib.sha256(data).hexdigest()
                        if digest(dex) != sha:
                            raise RuntimeError(f'Extraction hash mismatch: {archive}/{name}')
                        record['dex'].append({'entry': name, 'sha256': sha, 'extraction_verified': True})
                        output = tree / generation / archive.stem / dex.stem
                        run(['java', '-cp', cp, 'com.android.tools.smali.baksmali.Main',
                             'disassemble', '--classes', ','.join(CLASSES), '-o', str(output), str(dex)])
                print(f'{generation}/{filename}: extracted and disassembled', file=sys.stderr)
        report['installer_entry_observations'] = []
        for path in sorted(tree.rglob('*.smali')):
            if path.stem not in ['IPackageManagerBase', 'InstallSourceInfo', 'ApplicationPackageManager']:
                continue
            for method in re.finditer(r'(?ms)^\.method[^\n]* (?:getInstallerPackageName|getInstallSourceInfo|<init>)\([^\n]*\n.*?^\.end method', path.read_text()):
                body = method.group()
                descriptor = body.splitlines()[0]
                if '<init>' in descriptor and (path.stem != 'InstallSourceInfo' or 'SigningInfo' not in descriptor):
                    continue
                instructions = [line.strip() for line in body.splitlines() if any(anchor in line for anchor in [
                    '->getInstallSourceInfo(', '->getInstallerPackageName(', '->getCallingUid(',
                    '->clearCallingIdentity(', '->getUserId(', '->getCallingUserId(', '->mInstallingPackageName:',
                    '->mInitiatingPackageName:', '->mOriginatingPackageName:']) and not line.startswith('.method')]
                report['installer_entry_observations'].append({'class': path.stem,
                    'source': str(path.relative_to(tree)), 'method': descriptor, 'instructions': instructions})
        report['diagnostics'] = json.loads(run([
            sys.executable, str(SCRIPT_DIR / 'check-framework-samples.py'),
            '--sample-dir', str(tree), '--strict', '--format', 'json']))
        if verify_patches:
            for generation in checker.SAMPLE_GENS:
                for class_name, patcher_name in [('ComputerEngine', 'patch-services-a17'),
                                                 ('SettingsProvider', 'patch-settingsprovider-a17')]:
                    candidates = list((tree / generation).rglob(class_name + '.smali'))
                    if len(candidates) != 1:
                        raise ValueError(f'Expected one {class_name} in {generation}')
                    patcher = load(patcher_name)
                    original = candidates[0].read_text()
                    patched, changed = patcher.patch(original)
                    if not changed:
                        raise ValueError(f'Raw input already patched: {generation}/{class_name}')
                    patcher.verify(patched)
                    if patcher.patch(patched) != (patched, False):
                        raise ValueError(f'Patch not idempotent: {generation}/{class_name}')
                    work = root / 'patched' / generation / class_name
                    source = work / 'input' / (class_name + '.smali')
                    source.parent.mkdir(parents=True)
                    source.write_text(patched)
                    dex = work / 'classes.dex'
                    run(['java', '-cp', cp, 'com.android.tools.smali.smali.Main',
                         'assemble', '-o', str(dex), str(source.parent)])
                    if not dex.is_file():
                        raise RuntimeError(f'Assembler produced no DEX: {generation}/{class_name}')
                    output = work / 'roundtrip'
                    run(['java', '-cp', cp, 'com.android.tools.smali.baksmali.Main',
                         'disassemble', '-o', str(output), str(dex)])
                    patcher.verify(next(output.rglob(class_name + '.smali')).read_text())
                    report['patch_roundtrips'].append({'sample': generation, 'class': class_name,
                                                      'status': 'VERIFIED_SAMPLE_LAYOUT',
                                                      'assembly': 'PASS', 'roundtrip': 'PASS'})
            report['evidence'] = 'VERIFIED_SAMPLE_LAYOUT'
    report_path.write_text(json.dumps(report, indent=2, ensure_ascii=False) + '\n')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sample-dir', type=Path, default=SCRIPT_DIR.parent / 'tmp/fw')
    parser.add_argument('--tool-dir', type=Path, required=True, help='Pinned JAR filenames documented in the sample guide')
    parser.add_argument('--report', type=Path, required=True)
    parser.add_argument('--verify-patches', action='store_true', help='Patch, assemble, disassemble and verify both classes')
    args = parser.parse_args()
    try:
        refresh(args.sample_dir, args.tool_dir, args.report, args.verify_patches)
    except (OSError, ValueError, RuntimeError, zipfile.BadZipFile) as error:
        print(str(error), file=sys.stderr)
        return 1
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
