#!/usr/bin/env python3
"""Register shifts must retain literal data and reject unencodable stock instructions."""
import importlib.util
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

spec = importlib.util.spec_from_file_location('patcher', Path(__file__).with_name('kaorios_patcher.py'))
patcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patcher)
services = patcher.mod_ce

MANAGER = 'ApplicationPackageManager.smali'
TARGETS = {MANAGER: patcher.patch_app_pkg_manager}


def manager(body, registers=16):
    return ('.class public Landroid/app/ApplicationPackageManager;\n'
            '.super Ljava/lang/Object;\n'
            '.method public hasSystemFeature(Ljava/lang/String;I)Z\n'
            f'    .registers {registers}\n{body}'
            '    const/4 v0, 0x0\n    return v0\n.end method\n')


class PatcherRegisterEncodingTest(unittest.TestCase):
    def test_narrow_parameter_operand_fails_without_mutation(self):
        for body in ('    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;\n',
                     '    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;\n'):
            with self.subTest(body=body):
                original = manager(body)
                status, result, error = patcher.apply_target_patch(MANAGER, original, TARGETS)
                self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
                self.assertEqual(original, result)
                self.assertIn('encoding limit v15', error)

    def test_range_and_wide_move_keep_encodable_layouts(self):
        original = manager('    move-object/from16 v1, p0\n'
                           '    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        result, changed = patcher.patch_app_pkg_manager(original)
        self.assertTrue(changed)
        patcher.verify_target_content(MANAGER, result)

    def test_literals_and_comments_are_preserved(self):
        original = manager('    const-string v0, "v15 # p0"\n    # v15 must remain in this comment\n')
        result, _ = patcher.patch_app_pkg_manager(original)
        self.assertIn('"v15 # p0"', result)
        self.assertIn('# v15 must remain in this comment', result)

    def test_descriptor_and_field_names_are_preserved(self):
        original = manager('    const-class v0, Lorg/v15;\n'
                           '    iget v0, v1, Lorg/Holder;->v15:I\n')
        result, _ = patcher.patch_app_pkg_manager(original)
        self.assertIn('Lorg/v15;', result)
        self.assertIn('Lorg/Holder;->v15:I', result)

    def test_has_system_feature_rejects_shifted_stock_parameter(self):
        original = ('.class public Landroid/app/ApplicationPackageManager;\n'
                    '.super Ljava/lang/Object;\n'
                    '.method public hasSystemFeature(Ljava/lang/String;I)Z\n'
                    '    .locals 13\n'
                    '    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;\n'
                    '    const/4 v0, 0x0\n    return v0\n.end method\n')
        with self.assertRaisesRegex(ValueError, 'encoding limit v15'):
            patcher.patch_app_pkg_manager(original)

    def test_prepatched_invalid_encoding_cannot_pass_verifier(self):
        original = manager('    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        result, _ = patcher.patch_app_pkg_manager(original)
        bad = result.replace('invoke-virtual/range {p0 .. p0}', 'invoke-virtual {p2}')
        with self.assertRaisesRegex(ValueError, 'encoding limit v15'):
            patcher.verify_target_content(MANAGER, bad)

    def test_crossing_local_parameter_range_fails_without_mutation(self):
        for end in ('v1', 'p0'):
            with self.subTest(end=end):
                original = manager(f'    invoke-static/range {{v0 .. {end}}}, Ljava/lang/Object;->wait(J)V\n', registers=4)
                status, result, error = patcher.apply_target_patch(MANAGER, original, TARGETS)
                self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
                self.assertEqual(original, result)
                self.assertIn('crosses', error)

    def test_shifted_lit16_source_fails_without_mutation(self):
        original = manager('    add-int/lit16 v0, p2, 0x1\n')
        status, result, error = patcher.apply_target_patch(MANAGER, original, TARGETS)
        self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
        self.assertEqual(original, result)
        self.assertIn('encoding limit v15', error)

    def test_branch_label_named_like_register_is_not_an_operand(self):
        original = manager('    if-eq v0, v1, :v255\n    :v255\n')
        result, changed = patcher.patch_app_pkg_manager(original)
        self.assertTrue(changed)
        patcher.verify_target_content(MANAGER, result)

    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_real_smali_accepts_stock_and_safe_patch(self):
        classpath = os.environ['KAORIOS_SMALI_CLASSPATH']
        original = manager('    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        safe = manager('    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'smali'
            source.mkdir()
            for index, text in enumerate((original, patcher.patch_app_pkg_manager(safe)[0])):
                (source / MANAGER).write_text(text)
                output = root / f'classes{index}.dex'
                result = subprocess.run(['java', '-cp', classpath, 'com.android.tools.smali.smali.Main',
                                         'assemble', str(source), '--api', '34', '-o', str(output)],
                                        capture_output=True, text=True, timeout=30)
                self.assertTrue(output.is_file(), result.stdout + result.stderr)
                self.assertTrue(output.read_bytes().startswith(b'dex\n'))
            with self.assertRaisesRegex(ValueError, 'encoding limit v15'):
                patcher.patch_app_pkg_manager(original)


class PatcherUpdateModeTest(unittest.TestCase):
    def test_android_version_cli_selection_13_through_17(self):
        # This exercises argument selection, not five distinct device layouts.
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / MANAGER
            for version in ('13', '14', '15', '16', '17'):
                with self.subTest(version=version):
                    target.write_text(manager(''), encoding='utf-8')
                    result = subprocess.run(
                        [os.sys.executable, str(Path(patcher.__file__)), str(target),
                         '--mode', '1', '--android-version', version, '--no-delay'],
                        capture_output=True, text=True, timeout=30)
                    self.assertEqual(0, result.returncode, result.stdout + result.stderr)
                    patcher.verify_target_content(target.name, target.read_text(encoding='utf-8'))

    def test_single_file_symlink_is_rejected_without_writes(self):
        with tempfile.TemporaryDirectory() as directory:
            original = Path(directory) / 'original.smali'
            original.write_text(manager(''), encoding='utf-8')
            link = Path(directory) / MANAGER
            link.symlink_to(original)
            before = original.read_bytes()
            self.assertFalse(patcher.process_files(link, '1', slow=False))
            self.assertEqual(before, original.read_bytes())

    def test_directory_validation_failure_preserves_all_target_bytes(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            good = root / MANAGER
            bad = root / 'Settings$NameValueCache.smali'
            good.write_text(manager(''), encoding='utf-8')
            bad.write_bytes(b'.class public Landroid/provider/Settings$NameValueCache;\r\n')
            before = {path: path.read_bytes() for path in (good, bad)}
            self.assertFalse(patcher.process_files(root, '1', slow=False))
            self.assertEqual(before, {path: path.read_bytes() for path in before})

    def test_directory_tree_verifier_failure_preserves_targets(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / 'ComputerEngine.smali'
            target.write_text(computer_engine('', full=False), encoding='utf-8')
            before = target.read_bytes()
            self.assertFalse(patcher.process_files(root, '1', slow=False))
            self.assertEqual(before, target.read_bytes())

    def test_duplicate_directory_targets_are_rejected_without_writes(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            paths = []
            for name in ('one', 'two'):
                folder = root / name
                folder.mkdir()
                target = folder / MANAGER
                target.write_text(manager(''), encoding='utf-8')
                paths.append(target)
            before = [path.read_bytes() for path in paths]
            self.assertFalse(patcher.process_files(root, '1', slow=False))
            self.assertEqual(before, [path.read_bytes() for path in paths])

    def test_duplicate_target_method_is_rejected(self):
        original = manager('')
        original += original[original.index('.method'):]
        status, result, error = patcher.apply_target_patch(MANAGER, original, TARGETS)
        self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
        self.assertEqual(original, result)
        self.assertIn('ambiguous', error)

    def test_update_mode_rewrites_already_patched_target(self):
        original = manager('    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        patched, changed = patcher.patch_app_pkg_manager(original)
        self.assertTrue(changed)

        with tempfile.TemporaryDirectory() as temp_dir:
            file_path = Path(temp_dir) / MANAGER
            file_path.write_text(patched, encoding='utf-8')

            # Without update: file is kept as is and reports already patched
            res_no_update = patcher.process_files(file_path, mode='1', slow=False, update=False)
            self.assertTrue(res_no_update)
            self.assertEqual(file_path.read_text(encoding='utf-8'), patched)

            # With update: file is verified and rewritten
            res_update = patcher.process_files(file_path, mode='1', slow=False, update=True)
            self.assertTrue(res_update)
            self.assertEqual(file_path.read_text(encoding='utf-8'), patched)

    def test_update_mode_directory_scan_counts_updates(self):
        original = manager('    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        patched, _ = patcher.patch_app_pkg_manager(original)

        with tempfile.TemporaryDirectory() as temp_dir:
            subdir = Path(temp_dir) / 'android' / 'app'
            subdir.mkdir(parents=True)
            file_path = subdir / MANAGER
            file_path.write_text(patched, encoding='utf-8')

            res = patcher.process_files(temp_dir, mode='1', slow=False, update=True)
            self.assertTrue(res)
            self.assertEqual(file_path.read_text(encoding='utf-8'), patched)


def computer_engine(body, directive='.locals 8', full=True):
    signature = ('Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ'
                 if full else 'Lcom/android/server/pm/pkg/PackageStateInternal;II')
    return ('.class public Lcom/android/server/pm/ComputerEngine;\n'
            '.super Ljava/lang/Object;\n'
            f'.method public shouldFilterApplication({signature})Z\n'
            f'    {directive}\n{body}'
            '    const/4 v0, 0x0\n    return v0\n.end method\n')


class LifecycleUpdateTest(unittest.TestCase):
    def test_systemserver_hook_must_directly_precede_unique_loop(self):
        original = ('.class public Lcom/android/server/SystemServer;\n'
                    '.super Ljava/lang/Object;\n.method public run()V\n    .locals 1\n'
                    '    invoke-static {}, Landroid/os/Looper;->loop()V\n'
                    '    return-void\n.end method\n')
        patched = patcher.mod_ss.patch(original)
        self.assertEqual(patched, patcher.mod_ss.patch(patched, update=True))
        bad = patched.replace('    invoke-static {}, Landroid/os/Looper;->loop()V',
                              '    goto :stock_loop\n    :stock_loop\n'
                              '    invoke-static {}, Landroid/os/Looper;->loop()V')
        with self.assertRaisesRegex(ValueError, 'immediately precede'):
            patcher.mod_ss.verify(bad)
        repaired = patcher.mod_ss.patch(bad, update=True)
        patcher.mod_ss.verify(repaired)
        self.assertEqual(repaired, patcher.mod_ss.patch(repaired, update=True))
        duplicate = patched.replace('    return-void',
                                    '    invoke-static {}, Landroid/os/Looper;->loop()V\n    return-void')
        with self.assertRaisesRegex(ValueError, 'exactly one Looper'):
            patcher.mod_ss.verify(duplicate)


class BuildFieldTest(unittest.TestCase):
    def test_initialized_brand_has_one_null_initializer(self):
        original = ('.class public Landroid/os/Build;\n'
                    '.field public static final BRAND:Ljava/lang/String; = "OEM"\n'
                    '.field public static final TIME:J = 0x1L\n')
        result, changed = patcher.patch_build(original)
        self.assertTrue(changed)
        self.assertIn('.field public static  BRAND:Ljava/lang/String; = null\n', result)
        self.assertNotIn('= null =', result)
        self.assertEqual((result, False), patcher.patch_build(result))
        status, _, error = patcher.apply_target_patch('Build.smali', result.replace('= null', '= null = "OEM"'),
                                                       {'Build.smali': patcher.patch_build})
        self.assertNotEqual(patcher.PatchStatus.ALREADY_PATCHED, status)
        self.assertIsNotNone(error)

    def test_matching_filename_with_wrong_class_is_rejected(self):
        fields = ('BRAND', 'DEVICE', 'FINGERPRINT', 'HARDWARE', 'ID', 'MANUFACTURER',
                  'MODEL', 'PRODUCT', 'TAGS', 'TYPE', 'USER')
        original = ('.class public Lexample/NotBuild;\n'
                    + ''.join(f'.field public static {field}:Ljava/lang/String; = null\n'
                              for field in fields)
                    + '.field public static TIME:J\n')
        status, result, error = patcher.apply_target_patch(
            'Build.smali', original, {'Build.smali': patcher.patch_build})
        self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
        self.assertEqual(original, result)
        self.assertIn('class descriptor', error)

    def test_nonfinal_initialized_brand_is_not_already_patched(self):
        fields = ('BRAND', 'DEVICE', 'FINGERPRINT', 'HARDWARE', 'ID', 'MANUFACTURER',
                  'MODEL', 'PRODUCT', 'TAGS', 'TYPE', 'USER')
        original = ('.class public Landroid/os/Build;\n'
                    + ''.join(f'.field public static {field}:Ljava/lang/String; = "OEM"\n'
                              for field in fields)
                    + '.field public static TIME:J\n')
        status, result, error = patcher.apply_target_patch(
            'Build.smali', original, {'Build.smali': patcher.patch_build})
        self.assertEqual(patcher.PatchStatus.PATCHED, status, error)
        self.assertIn('.field public static BRAND:Ljava/lang/String; = null\n', result)
        self.assertEqual((result, False), patcher.patch_build(result))
        patcher.verify_target_content('Build.smali', result)


class ServicesParameterEncodingTest(unittest.TestCase):
    def test_invalid_high_hook_update_does_not_guess_one_local_ownership(self):
        for full in (True, False):
            original = computer_engine('', '.locals 16', full=full)
            patched, _ = services.patch(original)
            width = 8 if full else 4
            self.assertIn(f'.locals {16 + width + 3}', patched)
            self.assertEqual((patched, False), services.patch(patched, update=True))
            bad = patched.replace(f'move-result v{16 + width}', f'move-result v{17 + width}', 1)
            with self.assertRaisesRegex(ValueError, 'recognized valid block'):
                services.patch(bad, update=True)

    def test_partial_feature_hook_update_fails_closed(self):
        original = ('.class public Landroid/app/ApplicationPackageManager;\n'
                    '.super Ljava/lang/Object;\n'
                    '.method public hasSystemFeature(Ljava/lang/String;I)Z\n'
                    '    .locals 2\n    const/4 v0, 0x0\n    return v0\n.end method\n')
        patched, _ = patcher.patch_app_pkg_manager(original)
        bad = patched.replace('if-eqz v2,', 'if-nez v2,', 1)
        status, result, error = patcher.apply_target_patch(
            MANAGER, bad, TARGETS, update=True)
        self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
        self.assertEqual(bad, result)
        self.assertIn('recognized', error)

    def test_prepatched_hook_after_unconditional_return_is_rejected(self):
        original = computer_engine('', full=False)
        patched, _ = services.patch(original)
        unreachable = patched.replace('    if-eqz p1, :cond_kaorios_ps_null',
                                      '    const/4 v0, 0x0\n    return v0\n    if-eqz p1, :cond_kaorios_ps_null', 1)
        with self.assertRaisesRegex(ValueError, 'hook must precede a terminating instruction'):
            services.verify(unreachable)

    def test_prepatched_hook_bypassed_by_goto_is_rejected(self):
        original = computer_engine('', full=False)
        patched, _ = services.patch(original)
        bypassed = patched.replace('    if-eqz p1, :cond_kaorios_ps_null',
                                   '    goto :cond_kaorios_ps_null\n    if-eqz p1, :cond_kaorios_ps_null', 1)
        self.assertNotEqual(patched, bypassed)
        with self.assertRaisesRegex(ValueError, 'bypassed by a branch'):
            services.verify(bypassed)

    def test_prepatched_hook_bypassed_by_conditional_branch_is_rejected(self):
        original = computer_engine('', full=False)
        patched, _ = services.patch(original)
        bypassed = patched.replace('    if-eqz p1, :cond_kaorios_ps_null',
                                   '    if-nez p2, :cond_kaorios_ps_null\n    if-eqz p1, :cond_kaorios_ps_null', 1)
        self.assertNotEqual(patched, bypassed)
        with self.assertRaisesRegex(ValueError, 'bypassed by a branch'):
            services.verify(bypassed)

    def test_comment_only_hook_is_not_already_patched(self):
        original = computer_engine('', full=False)
        commented = original.replace('    const/4 v0, 0x0\n',
                                     '    # invoke-static {p2, v1, p3}, '
                                     + services.HOOK_TARGET + '\n    const/4 v0, 0x0\n', 1)
        self.assertNotEqual(original, commented)
        result, changed = services.patch(commented)
        self.assertTrue(changed)
        services.verify(result)

    def test_last_parameter_uses_high_path_and_preserves_physical_stock_operand(self):
        original = computer_engine('    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;\n')
        result, changed = services.patch(original)
        self.assertTrue(changed)
        self.assertIn('move/16 v15, p7', result)
        self.assertIn('invoke-static {v15}, Ljava/lang/Boolean;->valueOf', result)
        services.verify(result)
        self.assertEqual((result, False), services.patch(result))

    def test_low_locals_physical_parameter_aliases_are_canonicalized(self):
        original = computer_engine('    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;\n',
                                   '.locals 2', full=False)
        result, _ = services.patch(original)
        self.assertIn('invoke-static {p2}, Ljava/lang/Integer;->valueOf', result)
        services.verify(result)

    def test_literal_comment_and_descriptor_names_are_retained(self):
        for directive in ('.locals 2', '.registers 6'):
            with self.subTest(directive=directive):
                original = computer_engine('    const-string v0, "v3 # p1"\n'
                                           '    # v3 p1 untouched\n'
                                           '    const-class v0, Lorg/v3;\n'
                                           '    iget v0, v1, Lorg/Holder;->v3:I\n', directive, full=False)
                result, _ = services.patch(original)
                for token in ('"v3 # p1"', '# v3 p1 untouched', 'Lorg/v3;', '->v3:I'):
                    self.assertIn(token, result)

    def test_high_path_does_not_rewrite_descriptor_parameter_names(self):
        result, _ = services.patch(computer_engine('    const-class v0, Lorg/p7;\n'
                                                    '    iget v0, v1, Lorg/Holder;->p7:I\n'))
        self.assertIn('Lorg/p7;', result)
        self.assertIn('->p7:I', result)

    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_real_smali_accepts_seven_parameter_boundary_patch(self):
        original = computer_engine('    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;\n')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'smali'
            source.mkdir()
            (source / 'ComputerEngine.smali').write_text(services.patch(original)[0])
            output = root / 'classes.dex'
            result = subprocess.run(['java', '-cp', os.environ['KAORIOS_SMALI_CLASSPATH'],
                                     'com.android.tools.smali.smali.Main', 'assemble', str(source),
                                     '--api', '34', '-o', str(output)], capture_output=True, text=True, timeout=30)
            self.assertTrue(output.is_file(), result.stdout + result.stderr)
            self.assertTrue(output.read_bytes().startswith(b'dex\n'))


if __name__ == '__main__':
    unittest.main()
