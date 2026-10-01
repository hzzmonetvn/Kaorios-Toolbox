#!/usr/bin/env python3
"""Extract raw samples, inventory layouts and optionally roundtrip full patched DEX copies."""
import argparse
from concurrent.futures import ThreadPoolExecutor
from contextlib import nullcontext
from datetime import date
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import zipfile

SCRIPT_DIR = Path(__file__).resolve().parent
TOOLS = ['smali-3.0.8.jar', 'baksmali-3.0.8.jar', 'smali-dexlib2.jar',
         'smali-util.jar', 'antlr-runtime.jar', 'jcommander.jar', 'guava.jar']
CLASSES = ['Landroid/app/ActivityThread;', 'Landroid/app/Instrumentation;',
           'Landroid/app/ApplicationPackageManager;', 'Landroid/os/Build;', 'Landroid/os/Build$VERSION;',
           'Landroid/security/keystore2/AndroidKeyStoreSpi;',
           'Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;',
           'Lcom/android/server/SystemServer;', 'Lcom/android/server/pm/ComputerEngine;',
           'Lcom/android/server/pm/AppsFilterBase;', 'Lcom/android/server/pm/AppsFilterImpl;',
           'Lcom/android/server/pm/IPackageManagerBase;', 'Lcom/android/server/pm/PackageManagerService;',
           'Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;',
           'Landroid/content/pm/InstallSourceInfo;', 'Lcom/android/providers/settings/SettingsProvider;']
TARGETS = dict(zip(['ActivityThread', 'Instrumentation', 'ApplicationPackageManager',
                   'AndroidKeyStoreKeyPairGeneratorSpi', 'AndroidKeyStoreSpi', 'Build', 'Build$VERSION',
                   'SystemServer', 'ComputerEngine', 'SettingsProvider'],
                  ['patch_activity_thread', 'patch_instrumentation', 'patch_app_pkg_manager',
                   'patch_keystore_generator', 'patch_keystore_spi', 'patch_build', 'patch_build_version',
                   'patch_system_server', 'patch_computer_engine', 'patch_settings_provider']))
SAMPLE_APIS = {'miui14-a13': 33, 'os1-a14': 34, 'os2-a15': 35, 'os3-a16': 36, 'os4-a17': 37}
METHOD_NAMES = {
    'ActivityThread': ['handleBindApplication'], 'Instrumentation': ['newApplication'],
    'ApplicationPackageManager': ['hasSystemFeature', 'getInstallerPackageName', 'getInstallSourceInfo'],
    'AndroidKeyStoreKeyPairGeneratorSpi': ['generateKeyPair'], 'AndroidKeyStoreSpi': ['engineGetCertificateChain'],
    'Build': ['<clinit>'], 'Build$VERSION': ['<clinit>'], 'SystemServer': ['run'],
    'ComputerEngine': ['shouldFilterApplication', 'getInstallerPackageName', 'getInstallSourceInfo', 'getInstallSource'],
    'AppsFilterBase': ['shouldFilterApplication', 'shouldFilterApplicationUsingCache'],
    'AppsFilterImpl': ['shouldFilterApplication', 'shouldFilterApplicationUsingCache'],
    'IPackageManagerBase': ['getInstallerPackageName', 'getInstallSourceInfo'],
    'PackageManagerService': ['getInstallerPackageName', 'getInstallSourceInfo', 'getInstallSource'],
    'PackageManagerService$IPackageManagerImpl': ['getInstallerPackageName', 'getInstallSourceInfo'],
    'InstallSourceInfo': ['<init>', 'getInstallingPackageName', 'getInitiatingPackageName', 'getOriginatingPackageName', 'getUpdateOwnerPackageName', 'getPackageSource'],
    'SettingsProvider': ['call', 'query', 'getSetting', 'getGlobalSetting', 'getSecureSetting', 'getSystemSetting']}
METHOD_RE = re.compile(r'(?ms)^\.method[^\n]*\n.*?^\.end method')
HOOK_RE = re.compile(r'Landroid/security/kaorios/KaoriosHook;->([^\s]+)')
EVENT_RE = re.compile(r'->(?:getCallingUid|getCallingPid|getUserId|clearCallingIdentity|restoreCallingIdentity|getDeviceId|getRequestingUserId|getInstallSource|getInstallerPackageName|getInstallSourceInfo|startOtherServices|loop)\(|->(?:mBoundApplication|mSystemContext|mInstallingPackageName|mInstallerPackageName|mInitiatingPackageName|mOriginatingPackageName|mUpdateOwnerPackageName|mPackageSource|installerPackageName|initiatingPackageName|originatingPackageName|packageSource):|Landroid/content/pm/InstallSourceInfo;-><init>|KaoriosHook;|^aput-object|^return|const-string.*(?:GET_global|GET_secure|GET_system)|^const/4 .*0x0$')


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
        raise RuntimeError(f'{command[0]} failed: {result.stderr[-3000:]}')
    return result.stdout


def dex_order(name):
    return 1 if name == 'classes.dex' else int(name[7:-4])


def method_layout(body):
    header = body.splitlines()[0]
    descriptor = header.split()[-1]
    static = 'static' in header.split()
    types = re.findall(r'\[*(?:L[^;]+;|[ZBCSIFJD])', descriptor.split('(', 1)[1].split(')', 1)[0])
    words = sum(2 if t in ('J', 'D') else 1 for t in types) + (0 if static else 1)
    reg = re.search(r'\.(registers|locals)\s+(\d+)', body)
    base = None if reg is None else int(reg[2]) - (words if reg[1] == 'registers' else 0)
    instructions = [line.strip() for line in body.splitlines()[1:-1]
                    if line.strip() and not line.strip().startswith(('.', ':', '#')) and ' = ' not in line]
    returns = [line for line in instructions if re.match(r'return(?:-object|-wide|-void)?\b', line)]
    events = [{'instruction_index': n, 'instruction': line} for n, line in enumerate(instructions) if EVENT_RE.search(line)]
    return {'descriptor': descriptor, 'static': static, 'register_directive': reg.group() if reg else None,
            'parameter_types': types, 'parameter_words': words,
            'physical_parameters': {} if base is None else {f'p{n}': f'v{base+n}' for n in range(words)},
            'returns': returns, 'return_count': len(returns),
            'branch_count': sum(bool(re.match(r'(?:if-|goto|packed-switch|sparse-switch)', line)) for line in instructions),
            'catch_directives': [line.strip() for line in body.splitlines() if line.strip().startswith('.catch')],
            'events': events}


def class_layout(text, name):
    methods = [method_layout(m.group()) for m in METHOD_RE.finditer(text)
               if m.group().splitlines()[0].split()[-1].split('(', 1)[0] in METHOD_NAMES[name]]
    fields = [line for line in text.splitlines() if line.startswith('.field') and (
        (name.startswith('Build') and re.search(r' (?:BRAND|DEVICE|FINGERPRINT|HARDWARE|ID|MANUFACTURER|MODEL|PRODUCT|TAGS|TYPE|USER|TIME|\w+_FOR_ATTESTATION|RELEASE|RELEASE_OR_CODENAME|RELEASE_OR_PREVIEW_DISPLAY|SECURITY_PATCH|DEVICE_INITIAL_SDK_INT):', line))
        or re.search(r' m(?:Installing|Installer|Initiating|Originating|UpdateOwner)PackageName|mPackageSource:', line))]
    return {'super': next((line.split()[-1] for line in text.splitlines() if line.startswith('.super ')), None),
            'methods': methods, 'fields': fields, 'preexisting_hooks': sorted(set(HOOK_RE.findall(text)))}


def rebuild_archive(original, output, replacements):
    output.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(original) as source, zipfile.ZipFile(output, 'w') as target:
        for info in source.infolist():
            target.writestr(info, replacements[info.filename].read_bytes() if info.filename in replacements else source.read(info.filename))
        target.comment = source.comment
    with zipfile.ZipFile(original) as before, zipfile.ZipFile(output) as after:
        if before.namelist() != after.namelist() or after.testzip() is not None:
            raise ValueError('Archive inventory/integrity changed unexpectedly')
        for entry in before.namelist():
            if entry not in replacements and before.read(entry) != after.read(entry):
                raise ValueError(f'Untouched archive entry changed: {entry}')
    return {'status': 'PATCHED_ARCHIVE_REBUILD_PASS', 'sha256': digest(output),
            'replaced_entries': sorted(replacements, key=dex_order), 'untouched_entries_identical': True}


def refresh(sample_dir, tool_dir, report_path, verify_patches, workspace=None, framework_dex=None):
    checker, patcher = load('check-framework-samples'), load('kaorios_patcher_a17')
    jars = [tool_dir / name for name in TOOLS]
    if not all(j.is_file() for j in jars):
        raise ValueError('Missing pinned tool JAR; see TOOLS filenames')
    cp = os.pathsep.join(str(j.resolve()) for j in jars)
    java = ['java', '-Xmx2g', '-cp', cp]
    baksmali = java + ['com.android.tools.smali.baksmali.Main']
    smali = java + ['com.android.tools.smali.smali.Main']
    report = {'schema_version': 2, 'evidence_date': date.today().isoformat(), 'evidence': 'SAMPLE_DIAGNOSTIC',
              'runtime_evidence': 'NEEDS_DEVICE_TEST', 'smali_version': '3.0.8',
              'support_versions': {'antlr-runtime': '3.5.2', 'jcommander': '1.64', 'guava': '31.1-android'},
              'tools_sha256': {j.name: digest(j) for j in jars},
              'patcher_sha256': {p.name: digest(p) for p in sorted(SCRIPT_DIR.glob('*.py'))
                                 if p.name.startswith(('patch-', 'verify-', 'kaorios_patcher', 'refresh-sample')) and not p.name.endswith(('test.py', '_test.py'))},
              'archives': [], 'targets': [], 'cli_runs': [], 'patch_roundtrips': []}
    # Hash every raw archive before extracting any entry.
    for generation in checker.SAMPLE_GENS:
        for filename in ['framework.jar', 'services.jar', 'SettingsProvider.apk']:
            archive = sample_dir / generation / filename
            report['archives'].append({'sample': generation, 'archive': filename, 'sha256': digest(archive),
                                       'size': archive.stat().st_size, 'dex': []})
    if workspace is not None:
        workspace = workspace.resolve()
        if sample_dir.resolve() == workspace or sample_dir.resolve() in workspace.parents:
            raise ValueError('Workspace must be outside the sample dataset')
        workspace.mkdir(parents=True, exist_ok=True)
        if any(workspace.iterdir()):
            raise ValueError('Workspace must be empty; never reuse a modified tree as stock')
    context = nullcontext(str(workspace)) if workspace else tempfile.TemporaryDirectory(prefix='kaorios-samples-')
    with context as folder:
        root = Path(folder)
        jobs = []
        for archive in report['archives']:
            with zipfile.ZipFile(sample_dir / archive['sample'] / archive['archive']) as zipped:
                names = sorted([n for n in zipped.namelist() if re.fullmatch(r'classes(?:[2-9]|[1-9][0-9]+)?\.dex', n)], key=dex_order)
                if not names or len(names) != len(set(names)):
                    raise ValueError('Archive has no unique classes*.dex entries')
                for name in names:
                    dex = root / 'input' / archive['sample'] / Path(archive['archive']).stem / name
                    dex.parent.mkdir(parents=True, exist_ok=True)
                    dex.write_bytes(zipped.read(name))
                    record = {'entry': name, 'sha256': digest(dex), 'size': dex.stat().st_size,
                              'tool_api': SAMPLE_APIS[archive['sample']], 'dex_magic': dex.read_bytes()[:8].decode('ascii').rstrip('\0')}
                    # 3.0.8 emits an invalid container header for API >=35 (DEX 041).
                    # Select the opcode API for the actual classic input format instead.
                    format_apis = {'dex\n039': 29, 'dex\n040': 34}
                    if record['dex_magic'] not in format_apis:
                        raise ValueError('Unsupported sample DEX format: '+record['dex_magic'])
                    record['assembler_api'] = format_apis[record['dex_magic']]
                    archive['dex'].append(record)
                    jobs.append((archive, record, dex))
        def inventory(job):
            archive, record, dex = job
            classes = set(run(baksmali + ['list', 'classes', str(dex)]).splitlines())
            record.update(class_count=len(classes), class_inventory_sha256=hashlib.sha256(('\n'.join(sorted(classes))+'\n').encode()).hexdigest(),
                          present_targets=[c for c in CLASSES if c in classes], absent_targets=[c for c in CLASSES if c not in classes],
                          embedded_kaorios_hook='Landroid/security/kaorios/KaoriosHook;' in classes)
            if record['present_targets']:
                tree = root / 'stock' / archive['sample'] / Path(archive['archive']).stem / dex.stem
                # Patch verification always operates inside the full containing DEX tree.
                args = [] if verify_patches else ['--classes', ','.join(CLASSES)]
                run(baksmali + ['disassemble', '-a', str(record['tool_api']), '-j', '2'] + args + ['-o', str(tree), str(dex)])
            print(f"{archive['sample']}/{archive['archive']}/{record['entry']}: inventory + fresh baksmali", file=sys.stderr, flush=True)
            return classes
        with ThreadPoolExecutor(max_workers=2) as pool:
            class_sets = list(pool.map(inventory, jobs))
        by_sample = {g: [] for g in checker.SAMPLE_GENS}
        for (archive, record, dex), classes in zip(jobs, class_sets):
            for descriptor in record['present_targets']:
                name = descriptor.split('/')[-1][:-1]
                relative = Path(archive['sample']) / Path(archive['archive']).stem / dex.stem / (descriptor[1:-1]+'.smali')
                text = (root / 'stock' / relative).read_text()
                row = {'sample': archive['sample'], 'archive': archive['archive'], 'dex': record['entry'], 'class': descriptor,
                       'status': 'FOUND_SUPPORTED_LAYOUT' if name in TARGETS else 'FOUND_REFERENCE', 'stock_layout': class_layout(text, name)}
                if name == 'SettingsProvider':
                    legacy = [method for method in row['stock_layout']['methods'] if method['descriptor'].startswith(('getSetting(', 'getGlobalSetting(', 'getSecureSetting(', 'getSystemSetting('))]
                    row['legacy_string_hook'] = {'status': 'NOT_APPLICABLE' if legacy and all('SettingsState$Setting;' in m['descriptor'].split(')')[-1] for m in legacy) else 'UNSUPPORTED_LAYOUT', 'methods': [m['descriptor'] for m in legacy]}
                report['targets'].append(row)
                by_sample[archive['sample']].append((row, relative, text))
        for generation in checker.SAMPLE_GENS:
            found = {row['class'] for row, _, _ in by_sample[generation]}
            report['targets'].extend({'sample': generation, 'class': desc, 'status': 'NOT_FOUND'} for desc in CLASSES if desc not in found)
        report['diagnostics'] = json.loads(run([sys.executable, str(SCRIPT_DIR / 'check-framework-samples.py'), '--sample-dir', str(root/'stock'), '--strict', '--format', 'json']))
        if framework_dex:
            abi_tree = root / 'abi'
            run(baksmali + ['disassemble', '--classes', 'Landroid/security/kaorios/KaoriosHook;,Landroid/security/kaorios/settings/IAdvancedPolicyService;,Landroid/security/kaorios/settings/AdvancedPolicyRuntimeStatus;', '-o', str(abi_tree), str(framework_dex)])
            hook = (abi_tree/'android/security/kaorios/KaoriosHook.smali').read_text()
            exported = {line.split()[-1] for line in hook.splitlines() if line.startswith('.method public static ')}
            required = set()
            for generation in checker.SAMPLE_GENS:
                for row, _, text in by_sample[generation]:
                    name = row['class'].split('/')[-1][:-1]
                    if name in TARGETS:
                        status, output, error = patcher.apply_target_patch(name+'.smali', text, {name+'.smali': getattr(patcher, TARGETS[name])})
                        if status in ('PATCHED', 'ALREADY_PATCHED'):
                            required.update(HOOK_RE.findall(output))
            missing = sorted(required-exported)
            if missing:
                raise ValueError(f'Current framework hook ABI missing: {missing}')
            status_api = (abi_tree/'android/security/kaorios/settings/IAdvancedPolicyService.smali').read_text()
            report['framework_abi'] = {'dex_sha256': digest(framework_dex), 'status': 'PASS', 'hook_descriptors': sorted(required),
                                       'runtime_status_api': 'getRuntimeStatus()Landroid/security/kaorios/settings/AdvancedPolicyRuntimeStatus;' in status_api}
        if verify_patches:
            for generation in checker.SAMPLE_GENS:
                for mode in ['1', '2', '3']:
                    mode_root = root / 'modes' / generation / mode
                    shutil.copytree(root/'stock'/generation, mode_root)
                    first = subprocess.run([sys.executable, str(SCRIPT_DIR/'kaorios_patcher_a17.py'), str(mode_root), '--mode', mode, '--no-delay'], capture_output=True, text=True)
                    second = subprocess.run([sys.executable, str(SCRIPT_DIR/'kaorios_patcher_a17.py'), str(mode_root), '--mode', mode, '--no-delay'], capture_output=True, text=True)
                    logs = root/'logs'/generation
                    logs.mkdir(parents=True, exist_ok=True)
                    (logs/(mode+'.first.log')).write_text(first.stdout+first.stderr)
                    (logs/(mode+'.second.log')).write_text(second.stdout+second.stderr)
                    report['cli_runs'].append({'sample': generation, 'mode': mode, 'first_exit': first.returncode, 'second_exit': second.returncode,
                                               'first_status_counts': {s: first.stdout.count('Status: '+s) if s=='PATCHED' else first.stdout.count('Verifier PASS' if s=='ALREADY_PATCHED' else s.replace('_', ' ')) for s in ['PATCHED','ALREADY_PATCHED','UNSUPPORTED_LAYOUT','FAILED']},
                                               'second_already_patched': second.stdout.count('Verifier PASS')})
                print(f'{generation}: actual CLI modes 1/2/3 + second runs', file=sys.stderr, flush=True)
                for row, relative, text in by_sample[generation]:
                    name = row['class'].split('/')[-1][:-1]
                    if name not in TARGETS:
                        continue
                    status, output, error = patcher.apply_target_patch(name+'.smali', text, {name+'.smali': getattr(patcher, TARGETS[name])})
                    row.update(patch_status=status, status='PATCH_PASS' if status in ('PATCHED','ALREADY_PATCHED') else ('PATCH_UNSUPPORTED' if status=='UNSUPPORTED_LAYOUT' else 'FAILED'), error=error)
                    if status in ('PATCHED','ALREADY_PATCHED'):
                        saved = (root/'modes'/generation/'3'/Path(*relative.parts[1:])).read_text()
                        if saved != output:
                            raise ValueError('Individual patch and actual main CLI output differ')
                        row['patched_hooks'] = sorted(set(HOOK_RE.findall(output)))
                        row['patched_registers'] = {m['descriptor']: m['register_directive'] for m in class_layout(output, name)['methods']}
            def roundtrip(job):
                archive, record, dex = job
                rows = [r for r in report['targets'] if r.get('archive')==archive['archive'] and r['sample']==archive['sample'] and r.get('dex')==record['entry'] and r.get('status')=='PATCH_PASS']
                if not rows:
                    return
                tree = root/'modes'/archive['sample']/'3'/Path(archive['archive']).stem/dex.stem
                rebuilt = root/'rebuilt'/archive['sample']/Path(archive['archive']).stem/record['entry']
                rebuilt.parent.mkdir(parents=True, exist_ok=True)
                assembly_output = run(smali+['assemble', '-a',str(record['assembler_api']),'-j','2','-o',str(rebuilt),str(tree)])
                if not rebuilt.is_file() or rebuilt.read_bytes()[:8] != dex.read_bytes()[:8]:
                    raise ValueError('Full DEX assembly produced no valid DEX: '+assembly_output[-3000:])
                output = root/'redisassembled'/archive['sample']/Path(archive['archive']).stem/dex.stem
                run(baksmali+['disassemble','-a',str(record['tool_api']),'-j','2','-o',str(output),str(rebuilt)])
                rebuilt_classes = set(run(baksmali+['list','classes',str(rebuilt)]).splitlines())
                stock_classes = set(run(baksmali+['list','classes',str(dex)]).splitlines())
                if rebuilt_classes != stock_classes:
                    raise ValueError('Full DEX class inventory changed')
                for row in rows:
                    descriptor = row['class'];name=descriptor.split('/')[-1][:-1]
                    text = (output/(descriptor[1:-1]+'.smali')).read_text()
                    patcher.verify_target_content(name+'.smali',text)
                    status,again,error=patcher.apply_target_patch(name+'.smali',text,{name+'.smali':getattr(patcher,TARGETS[name])})
                    if status!='ALREADY_PATCHED' or again!=text:
                        raise ValueError(f'Roundtrip idempotence failed: {name}: {error}')
                    row.update(status='ROUNDTRIP_PASS', assembly='PASS', redisassemble='PASS', verify='PASS', idempotent=True)
                    report['patch_roundtrips'].append({'sample':row['sample'],'archive':row['archive'],'dex':row['dex'],'class':descriptor,'status':'ROUNDTRIP_PASS'})
                record['full_dex_roundtrip']={'assembly':'PASS','redisassemble':'PASS','class_inventory_preserved':True,'sha256':digest(rebuilt),'size':rebuilt.stat().st_size}
                print(f"{archive['sample']}/{archive['archive']}/{record['entry']}: FULL DEX roundtrip PASS",file=sys.stderr,flush=True)
            with ThreadPoolExecutor(max_workers=2) as pool:
                list(pool.map(roundtrip,jobs))
            for archive in report['archives']:
                replacements={d['entry']:root/'rebuilt'/archive['sample']/Path(archive['archive']).stem/d['entry'] for d in archive['dex'] if 'full_dex_roundtrip' in d}
                archive['rebuilt_archive']=rebuild_archive(sample_dir/archive['sample']/archive['archive'],root/'patched'/archive['sample']/archive['archive'],replacements)
            if any(r['first_exit'] or r['second_exit'] for r in report['cli_runs']):
                report['evidence']='VERIFIED_SAMPLE_LAYOUT_WITH_UNSUPPORTED_TARGETS'
            else:
                report['evidence']='VERIFIED_SAMPLE_LAYOUT'
        for archive in report['archives']:
            if digest(sample_dir/archive['sample']/archive['archive'])!=archive['sha256']:
                raise ValueError('Original sample changed during audit')
        report['originals_unchanged']=True
        report['patch_roundtrips'].sort(key=lambda r:(checker.SAMPLE_GENS.index(r['sample']),r['archive'],dex_order(r['dex']),r['class']))
        report_path.parent.mkdir(parents=True,exist_ok=True)
        report_path.write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n')
    return report


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sample-dir',type=Path,default=SCRIPT_DIR.parent/'tmp/fw')
    parser.add_argument('--tool-dir',type=Path,required=True)
    parser.add_argument('--report',type=Path,required=True)
    parser.add_argument('--verify-patches',action='store_true',help='Exercise all present auto-patcher targets and roundtrip FULL containing DEX')
    parser.add_argument('--workspace',type=Path,help='Keep outputs in a new/empty dev workspace outside tmp/fw')
    parser.add_argument('--framework-dex',type=Path,help='Optional current Kaorios DEX for public hook ABI cross-check; never copied to report')
    args=parser.parse_args()
    try:
        refresh(args.sample_dir,args.tool_dir,args.report,args.verify_patches,args.workspace,args.framework_dex)
    except (OSError,ValueError,RuntimeError,zipfile.BadZipFile) as error:
        print(str(error),file=sys.stderr)
        return 1
    return 0


if __name__=='__main__':
    raise SystemExit(main())
