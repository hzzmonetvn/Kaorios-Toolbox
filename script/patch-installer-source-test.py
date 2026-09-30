#!/usr/bin/env python3
"""Installer read filtering: provenance, coverage, register safety and rejection tests."""
import importlib.util
from pathlib import Path
import unittest
import os
import subprocess
import tempfile

spec = importlib.util.spec_from_file_location('installer', Path(__file__).with_name('patch-installer-source.py'))
patcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patcher)


def fixture(locals_count=8, directive='locals', physical=False, multiple=False, clear=False):
    def method(modern):
        result = 'Landroid/content/pm/InstallSourceInfo;' if modern else 'Ljava/lang/String;'
        name = 'getInstallSourceInfo' if modern else 'getInstallerPackageName'
        count = locals_count if directive == 'locals' else locals_count + 3
        param = lambda n: f'v{locals_count+n}' if physical else f'p{n}'
        text = f'''.method public {name}(Ljava/lang/String;I){result}
    .{directive} {count}
    move-object/from16 v0, {param(0)}
    move-object/from16 v1, {param(1)}
    move/from16 v3, {param(2)}
    invoke-static {{}}, Landroid/os/Binder;->getCallingUid()I
    move-result v2
    invoke-direct/range {{v0 .. v3}}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;
    move-result-object v0
    if-nez v0, :found
    const/4 v4, 0x0
    return-object v4
    :found
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;
'''
        if clear:
            text += '    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J\n    move-result-wide v6\n'
        if modern:
            text += '''    new-instance v1, Landroid/content/pm/InstallSourceInfo;
    const/4 v2, 0x0
    const/4 v3, 0x0
    move-object v5, v4
    const/4 v4, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    invoke-direct/range {v1 .. v7}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    return-object v1
'''
        else:
            if multiple:
                text += '    if-eqz v4, :second\n    return-object v4\n    :second\n'
            text += '    return-object v4\n'
        return text + '.end method\n'
    return '.class public Lcom/android/server/pm/ComputerEngine;\n.super Ljava/lang/Object;\n' + method(False) + method(True)


class InstallerPatcherTest(unittest.TestCase):
    def test_both_apis_and_idempotence(self):
        result, changed = patcher.patch(fixture())
        self.assertTrue(changed)
        self.assertEqual(2, result.count(patcher.HOOK))
        patcher.verify(result)
        self.assertEqual((result, False), patcher.patch(result))

    def test_multiple_relevant_returns_keep_early_null_stock(self):
        result, _ = patcher.patch(fixture(multiple=True))
        self.assertEqual(3, result.count(patcher.HOOK))
        self.assertIn('const/4 v4, 0x0\n    return-object v4', result)

    def test_high_registers_and_both_physical_alias_directives(self):
        for directive in ['locals', 'registers']:
            for physical in [False, True]:
                with self.subTest(directive=directive, physical=physical):
                    result, _ = patcher.patch(fixture(40, directive, physical))
                    patcher.verify(result)
                    self.assertIn('move-object/16 v40, p0', result)
                    self.assertIn('invoke-static/range {v43 .. v47}', result)
                    self.assertIn('move-object/from16 v0, v40', result)

    def test_original_caller_captured_before_identity_clear(self):
        result, _ = patcher.patch(fixture(clear=True))
        patcher.verify(result)
        self.assertLess(result.index('move-result v12'), result.index('clearCallingIdentity'))

    def test_partial_duplicate_and_wrong_arguments_rejected(self):
        result, _ = patcher.patch(fixture())
        mutations = [
            result.replace('move-result-object v4', 'move-result-object v3', 1),
            result.replace('move-object/16 v14, v9', 'move-object/16 v14, v8', 1),
            result.replace('move/16 v13, v10', 'move/16 v13, v8', 1),
            result.replace('move-result v12', 'move-result v13', 1),
            result.replace('invoke-static/range {v11 .. v15}', 'invoke-static/range {v10 .. v14}', 1),
            result.replace('    move-result-object v4\n    return-object v4', '    move-result-object v4\n    return-object v3', 1),
            result.replace('    move-object/16 v15, v4', patcher.hook_block(11, 'v4') + '    move-object/16 v15, v4', 1),
        ]
        for modified in mutations:
            with self.subTest(modified=modified[:80]):
                with self.assertRaises(ValueError):
                    patcher.verify(modified)

    def test_caller_capture_after_clear_rejected(self):
        result, _ = patcher.patch(fixture(clear=True))
        modified = result.replace('    invoke-static {}, Landroid/os/Binder;->getCallingUid()I\n    move-result v12\n',
                                  '    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J\n    move-result-wide v0\n    invoke-static {}, Landroid/os/Binder;->getCallingUid()I\n    move-result v12\n', 1)
        with self.assertRaises(ValueError):
            patcher.verify(modified)

    def test_unknown_layout_and_wrong_stock_target_rejected(self):
        for stock in [fixture().replace('mInstallerPackageName', 'mInitiatingPackageName'),
                      fixture().replace('move-object/from16 v1, p1', 'move-object/from16 v1, p0'),
                      fixture().replace('getInstallSource(Ljava/lang/String;II)', 'getUnknownSource(Ljava/lang/String;II)'),
                      fixture().replace('Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V', 'Ljava/lang/String;Ljava/lang/String;I)V')]:
            with self.assertRaises(ValueError):
                patcher.patch(stock)

    def test_constructor_installing_slot_cannot_be_swapped_with_originating(self):
        stock = fixture().replace('move-object v5, v4\n    const/4 v4, 0x0',
                                  'move-object v5, v3\n    move-object v4, v4')
        with self.assertRaisesRegex(ValueError, 'installing argument'):
            patcher.patch(stock)
        patched, _ = patcher.patch(fixture())
        modified = patched.replace('move-object v5, v4\n    const/4 v4, 0x0',
                                   'move-object v5, v3\n    move-object v4, v4')
        with self.assertRaises(ValueError):
            patcher.verify(modified)

    def test_a13_user_is_derived_from_original_calling_uid(self):
        stock = fixture().replace('(Ljava/lang/String;I)', '(Ljava/lang/String;)')
        stock = stock.replace('    move/from16 v3, p2\n', '')
        stock = stock.replace('getInstallSource(Ljava/lang/String;II)', 'getInstallSource(Ljava/lang/String;I)')
        stock = stock.replace('{v0 .. v3}', '{v0 .. v2}')
        patched, _ = patcher.patch(stock)
        patcher.verify(patched)
        self.assertIn('invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I\n    move-result v12', patched)
        self.assertNotIn('move/16 v12,', patched)

    def test_parameter_metadata_and_register_limit_are_preserved(self):
        stock = fixture(40).replace('    .locals 40', '    .locals 40\n    .param p1, "target"\n    .param p2, "user"\n    .local p1, "target":Ljava/lang/String;')
        patched, _ = patcher.patch(stock)
        patcher.verify(patched)
        self.assertIn('.param p1, "target"', patched)
        self.assertIn('.param p2, "user"', patched)
        self.assertIn('.local v41, "target":Ljava/lang/String;', patched)
        self.assertIn('move-object/16 v41, p1', patched)
        self.assertIn('move/16 v42, p2', patched)
        with self.assertRaisesRegex(ValueError, 'register limits'):
            patcher.patch(fixture(250))

    def test_missing_api_rejected(self):
        with self.assertRaises(ValueError):
            patcher.patch(fixture().split('.method public getInstallSourceInfo')[0])

    def test_strings_and_comments_are_not_parameter_aliases(self):
        stock = fixture().replace('    :found\n', '    :found\n    const-string v7, "p1" # p2\n')
        result, _ = patcher.patch(stock)
        self.assertIn('const-string v7, "p1" # p2', result)

    def test_assembly_and_roundtrip_when_smali_toolchain_present(self):
        lib = Path(os.environ.get('KAORIOS_TEST_CACHE', '/tmp/kaorios-regression')) / 'lib'
        names = ['smali-3.0.8.jar', 'baksmali-3.0.8.jar', 'smali-dexlib2.jar',
                 'smali-util.jar', 'antlr-runtime.jar', 'jcommander.jar', 'guava.jar']
        if not all((lib / name).is_file() for name in names):
            self.skipTest('smali/baksmali toolchain unavailable; structural tests still run')
        cp = ':'.join(str(lib / name) for name in names)
        for directive in ['locals', 'registers']:
            for physical in [False, True]:
                with self.subTest(directive=directive, physical=physical), tempfile.TemporaryDirectory() as folder:
                    root = Path(folder)
                    (root / 'input').mkdir()
                    text, _ = patcher.patch(fixture(40, directive, physical, multiple=True))
                    (root / 'input/ComputerEngine.smali').write_text(text)
                    for command in [
                        ['java', '-cp', cp, 'com.android.tools.smali.smali.Main', 'assemble', '-o', str(root / 'classes.dex'), str(root / 'input')],
                        ['java', '-cp', cp, 'com.android.tools.smali.baksmali.Main', 'disassemble', '-o', str(root / 'output'), str(root / 'classes.dex')]]:
                        result = subprocess.run(command, capture_output=True, text=True)
                        self.assertEqual(0, result.returncode, result.stderr)
                        self.assertTrue((root / 'classes.dex').exists(), result.stderr)
                    patcher.verify(next((root / 'output').rglob('ComputerEngine.smali')).read_text())


if __name__ == '__main__':
    unittest.main()
