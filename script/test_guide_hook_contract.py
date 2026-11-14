"""Validate the literal bilingual manual fragments, independently of patch output."""
from pathlib import Path
import re
import importlib.util
import os
import subprocess
import tempfile
import unittest
import zipfile


DOCS = Path(__file__).resolve().parents[1] / 'Toolbox-docs/2.0.6+'
GUIDES = [DOCS / f'Patch_Guide_2.0.6.2{suffix}.md' for suffix in ('', '_VI')]
CLASS_METHOD = 'newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;'
LOADER_METHOD = 'newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;'
VISIBILITY = 'shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;'
SEVEN = VISIBILITY + 'ILandroid/content/ComponentName;IIZZ)Z'
THREE = VISIBILITY + 'II)Z'
SNIPPETS = {
    'instrumentation-class-static', 'instrumentation-class-instance', 'instrumentation-loader',
    'activity-thread', 'name-value-cache', 'system-feature', 'key-pair',
    'certificate-chain', 'certificate-leaf', 'system-server', 'visibility-seven',
    'visibility-three', 'visibility-high-seven', 'filter-app-access',
    'installer-entry-two', 'installer-entry-one', 'installer-return', 'installer-constructor',
}


def load(filename):
    path = Path(__file__).with_name(filename)
    spec = importlib.util.spec_from_file_location(filename.replace('.', '_'), path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def fragments(text):
    pairs = re.findall(r'<!-- snippet: ([\w-]+) -->\s*```smali\n(.*?)```', text, re.S)
    if len(pairs) != len(dict(pairs)):
        raise ValueError('duplicate snippet identifier')
    return dict(pairs)


def method(signature, locals_count, body, flags='public'):
    return f'.method {flags} {signature}\n    .locals {locals_count}\n{body}.end method\n'


def write_class(root, relative, body):
    path = root / relative
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(f'.class public L{relative[:-6]};\n.super Ljava/lang/Object;\n' + body)


def manual_framework(root, snippets, static=True):
    """Only the surrounding stock fixture is synthesized; injected code is verbatim."""
    context = 'p1' if static else 'p2'
    class_hook = snippets['instrumentation-class-static' if static else 'instrumentation-class-instance']
    application = ('    const/4 v0, 0x0\n'
                   f'    invoke-virtual {{v0, {context}}}, Landroid/app/Application;->attach(Landroid/content/Context;)V\n')
    write_class(root, 'android/app/Instrumentation.smali',
                method(CLASS_METHOD, 1, application + class_hook + '    return-object v0\n',
                       'public static' if static else 'public') +
                method(LOADER_METHOD, 1, '    const/4 v0, 0x0\n'
                       '    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V\n' +
                       snippets['instrumentation-loader'] + '    return-object v0\n'))
    write_class(root, 'android/app/ActivityThread.smali',
                '.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;\n' +
                method('handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V', 10,
                       '    move-object v1, p0\n    move-object v9, p1\n' +
                       snippets['activity-thread'] + '    return-void\n'))
    write_class(root, 'android/provider/Settings$NameValueCache.smali',
                method('getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;',
                       1, snippets['name-value-cache'] + '    const/4 v0, 0x0\n    return-object v0\n'))
    write_class(root, 'android/app/ApplicationPackageManager.smali',
                method('hasSystemFeature(Ljava/lang/String;I)Z', 3,
                       snippets['system-feature'] + '    const/4 v0, 0x0\n    return v0\n'))
    write_class(root, 'android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.smali',
                method('generateKeyPair()Ljava/security/KeyPair;', 3,
                       snippets['key-pair'] + '    const/4 v0, 0x0\n    return-object v0\n'))
    write_class(root, 'android/security/keystore2/AndroidKeyStoreSpi.smali',
                method('engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;', 4,
                       '    const/4 v0, 0x0\n    if-nez p1, :populated\n    return-object v0\n'
                       '    :populated\n    const/4 v1, 0x1\n    if-eqz v1, :null_after\n'
                       '    new-array v3, v1, [Ljava/security/cert/Certificate;\n'
                       '    const/4 v2, 0x0\n    aput-object v0, v3, v2\n' +
                       snippets['certificate-chain'] + '    :null_after\n    return-object v0\n') +
                method('engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;', 2,
                       snippets['certificate-leaf'] + '    const/4 v0, 0x0\n    return-object v0\n'))


def installer_methods(snippets, width):
    """Proven stock source reads around the manual entry/return/constructor fragments."""
    base = 8 if width == 3 else 9
    parameters = 'Ljava/lang/String;I' if width == 3 else 'Ljava/lang/String;'
    entry = snippets['installer-entry-two' if width == 3 else 'installer-entry-one']
    args = f'v{base}, v{base+1}, v0' + (f', v{base+2}' if width == 3 else '')
    source = ('    invoke-static {}, Landroid/os/Binder;->getCallingUid()I\n'
              '    move-result v0\n'
              f'    invoke-virtual {{{args}}}, Lcom/android/server/pm/ComputerEngine;->'
              f'getInstallSource({parameters}I)Lcom/android/server/pm/InstallSource;\n'
              '    move-result-object v1\n')
    field = 'Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;\n'
    legacy = method(f'getInstallerPackageName({parameters})Ljava/lang/String;', 16,
                    entry + source + '    iget-object v2, v1, ' + field + snippets['installer-return'])
    modern = method(f'getInstallSourceInfo({parameters})Landroid/content/pm/InstallSourceInfo;', 16,
                    entry + source + '    iget-object v4, v1, ' + field +
                    '    new-instance v0, Landroid/content/pm/InstallSourceInfo;\n'
                    '    const/4 v1, 0x0\n    const/4 v2, 0x0\n'
                    '    const/4 v3, 0x0\n    const/4 v5, 0x0\n' +
                    snippets['installer-constructor'] +
                    '    invoke-direct/range {v0 .. v5}, Landroid/content/pm/InstallSourceInfo;-><init>'
                    '(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;I)V\n'
                    '    return-object v0\n')
    return legacy + modern


def manual_services(root, snippets, visibility='seven', installer_width=3):
    high = visibility == 'high-seven'
    signature = THREE if visibility == 'three' else SEVEN
    # Stock uses the restored OLD parameter slot in the high-register example.
    stock = ('    move/16 v0, v11\n' if high else '    move v0, p2\n') + '    return v0\n'
    write_class(root, 'com/android/server/pm/ComputerEngine.smali',
                method(signature, 20 if high else 1, snippets['visibility-' + visibility] + stock) +
                method('filterAppAccess(Ljava/lang/String;II)Z', 1, snippets['filter-app-access'] +
                       '    const/4 v0, 0x0\n    return v0\n') + installer_methods(snippets, installer_width))
    write_class(root, 'com/android/server/SystemServer.smali',
                method('run()V', 0, snippets['system-server'] + '    return-void\n'))


@unittest.skipUnless(DOCS.exists(), 'Guide files are not included in the standalone patcher ZIP')
class GuideHookContractTest(unittest.TestCase):
    def test_bilingual_call_signatures_and_literal_fragments_match(self):
        snippets = []
        for guide in GUIDES:
            text = guide.read_text()
            self.assertNotIn('vN', text)
            self.assertNotIn('--caller-only', text)
            self.assertIn('invoke-virtual/range {v2 .. v2}, Ljava/lang/Boolean;->booleanValue()Z', text)
            calls = set(re.findall(r'KaoriosHook;->([^\s]+)', text))
            for name in ('initContext', 'initActivityThread', 'initSystemServer',
                         'shouldHideAppListForCaller', 'filterInstallerPackageName'):
                self.assertTrue(any(call.startswith(name + '(') for call in calls), name)
            self.assertIn('hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;', calls)
            self.assertIn('initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;', calls)
            self.assertIn('CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;', calls)
            self.assertIn('shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;', calls)
            self.assertNotIn('shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z', calls)
            snippets.append(fragments(text))
            self.assertEqual(SNIPPETS, set(snippets[-1]))
        self.assertEqual(*snippets)

    def test_documented_fragments_pass_existing_structural_verifiers(self):
        framework = load('verify-framework-a17-hooks.py')
        services = load('verify-services-a17-hooks.py')
        server = load('verify-systemserver-a17-hooks.py')
        for guide in GUIDES:
            snippets = fragments(guide.read_text())
            for static in (False, True):
                with self.subTest(guide=guide.name, static=static), tempfile.TemporaryDirectory() as directory:
                    root = Path(directory)
                    manual_framework(root, snippets, static)
                    framework.verify_caller(root)
            for visibility in ('seven', 'three', 'high-seven'):
                for width in (2, 3):
                    with self.subTest(guide=guide.name, visibility=visibility, width=width), tempfile.TemporaryDirectory() as directory:
                        root = Path(directory)
                        manual_services(root, snippets, visibility, width)
                        services.verify_caller(root)
                        server.verify_caller(root)

    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_literal_fragments_assemble_and_round_trip(self):
        framework = load('verify-framework-a17-hooks.py')
        services = load('verify-services-a17-hooks.py')
        server = load('verify-systemserver-a17-hooks.py')
        for guide in GUIDES:
            snippets = fragments(guide.read_text())
            for variant in (0, 1, 2):
                with self.subTest(guide=guide.name, variant=variant), tempfile.TemporaryDirectory() as directory:
                    root = Path(directory)
                    manual_framework(root / 'input', snippets, static=variant != 1)
                    manual_services(root / 'input', snippets, ('seven', 'three', 'high-seven')[variant],
                                    installer_width=2 if variant == 1 else 3)
                    for main, args in (
                        ('smali', ['assemble', '--api', '34', str(root / 'input'), '-o', str(root / 'classes.dex')]),
                        ('baksmali', ['disassemble', '--api', '34', '--use-locals', str(root / 'classes.dex'), '-o', str(root / 'roundtrip')]),
                    ):
                        result = subprocess.run(['java', '-cp', os.environ['KAORIOS_SMALI_CLASSPATH'],
                            f'com.android.tools.smali.{main}.Main', *args], capture_output=True, text=True)
                        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
                    self.assertTrue((root / 'classes.dex').is_file())
                    framework.verify_caller(root / 'roundtrip')
                    services.verify_caller(root / 'roundtrip')
                    server.verify_caller(root / 'roundtrip')

    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_manual_repack_and_output_commands_on_fixture_jars(self):
        framework = load('verify-framework-a17-hooks.py')
        for guide in GUIDES:
            text = guide.read_text()
            snippets = fragments(text)
            blocks = re.findall(r'```bash\n(.*?)```', text, re.S)
            with self.subTest(guide=guide.name), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                work = root / 'work'
                (root / 'inputs').mkdir()
                manual_framework(work / 'framework/smali/classes', snippets)
                manual_services(work / 'services/smali/classes', snippets)
                calls = set(re.findall(r'KaoriosHook;->([^\s]+)', '\n'.join(snippets.values())))
                bodies = []
                for signature in sorted(calls):
                    result_type = signature.split(')')[1]
                    result = ('    return-void\n' if result_type == 'V' else
                              '    const/4 v0, 0x0\n    return v0\n' if result_type == 'Z' else
                              '    const/4 v0, 0x0\n    return-object v0\n')
                    bodies.append(method(signature, 1, result, 'public static'))
                # No-op facade/policy classes exercise packaging and ABI, not Android behavior.
                tree = work / 'framework/smali/classes2'
                write_class(tree, 'android/security/kaorios/KaoriosHook.smali', ''.join(bodies))
                for relative in framework.REQUIRED_ADVANCED_POLICY_CLASSES:
                    write_class(tree, relative, '')
                for jar in ('framework', 'services'):
                    with zipfile.ZipFile(root / f'inputs/{jar}.jar', 'w') as archive:
                        archive.writestr('META-INF/fixture.txt', 'preserve unrelated entries\n')
                (root / 'script').symlink_to(Path(__file__).resolve().parent, target_is_directory=True)
                environment = os.environ.copy()
                environment.update(TOOL_CP=os.environ['KAORIOS_SMALI_CLASSPATH'],
                                   SMALI_API='34', WORK=str(work))
                result = subprocess.run(['bash', '-euo', 'pipefail', '-c', '\n'.join(blocks[-2:])],
                                        cwd=root, env=environment, capture_output=True, text=True, timeout=90)
                self.assertEqual(0, result.returncode, result.stdout + result.stderr)
                for jar in ('framework', 'services'):
                    with zipfile.ZipFile(work / f'{jar}-patched.jar') as archive:
                        self.assertIsNone(archive.testzip())
                        self.assertEqual('preserve unrelated entries\n', archive.read('META-INF/fixture.txt').decode())
                        self.assertIn('classes.dex', archive.namelist())
                with zipfile.ZipFile(work / 'framework-patched.jar') as archive:
                    self.assertIn('classes2.dex', archive.namelist())

    def test_documented_shell_blocks_parse(self):
        for guide in GUIDES:
            blocks = re.findall(r'```bash\n(.*?)```', guide.read_text(), re.S)
            self.assertEqual(5, len(blocks))
            self.assertIn('set -euo pipefail', blocks[0])
            self.assertIn('SMALI_API=34', blocks[0])
            self.assertNotIn('--api 34', '\n'.join(blocks))
            for block in blocks:
                with self.subTest(guide=guide.name, block=block.splitlines()[0]):
                    result = subprocess.run(['bash', '-n'], input=block, capture_output=True, text=True)
                    self.assertEqual(0, result.returncode, result.stderr)

    def test_output_verification_anchor_remains_linkable(self):
        self.assertIn('## 6. Reassemble and verify the packaged JARs', GUIDES[0].read_text())
        for guide in GUIDES:
            text = guide.read_text()
            self.assertIn('--payload-smali "$WORK/recheck/smali_framework"', text)
            self.assertNotIn('--payload-smali /path/to/payload-smali', text)


class CompleteCallerAssemblyTest(unittest.TestCase):
    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_all_six_owners_assemble_after_patch(self):
        fixtures = load('test_name_value_cache_hooks.py')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            fixtures.caller_tree(root / 'smali')
            fixtures.tree_patcher.patch_root(root / 'smali')
            result = subprocess.run(['java', '-cp', os.environ['KAORIOS_SMALI_CLASSPATH'],
                'com.android.tools.smali.smali.Main', 'assemble', str(root / 'smali'),
                '-o', str(root / 'classes.dex')], capture_output=True, text=True)
            self.assertEqual(0, result.returncode, result.stdout + result.stderr)
            self.assertTrue((root / 'classes.dex').is_file(), result.stderr)


if __name__ == '__main__':
    unittest.main()
