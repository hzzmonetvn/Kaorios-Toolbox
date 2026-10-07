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


def generator(body, registers=16):
    return ('.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;\n'
            '.super Ljava/security/KeyPairGeneratorSpi;\n'
            '.method public generateKeyPair()Ljava/security/KeyPair;\n'
            f'    .registers {registers}\n{body}'
            '    const/4 v0, 0x0\n    return-object v0\n.end method\n')


class PatcherRegisterEncodingTest(unittest.TestCase):
    def test_narrow_parameter_operand_fails_without_mutation(self):
        for body in ('    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n',
                     '    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;\n',
                     '    iget-object v0, p0, Ljava/lang/Object;->field:Ljava/lang/Object;\n'):
            with self.subTest(body=body):
                original = generator(body)
                status, result, error = patcher.apply_target_patch(
                    'AndroidKeyStoreKeyPairGeneratorSpi.smali', original,
                    {'AndroidKeyStoreKeyPairGeneratorSpi.smali': patcher.patch_keystore_generator})
                self.assertEqual(patcher.PatchStatus.UNSUPPORTED_LAYOUT, status)
                self.assertEqual(original, result)
                self.assertIn('encoding limit v15', error)

    def test_range_and_wide_move_keep_encodable_layouts(self):
        original = generator('    move-object/from16 v1, p0\n'
                             '    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        result, changed = patcher.patch_keystore_generator(original)
        self.assertTrue(changed)
        patcher.verify_target_content('AndroidKeyStoreKeyPairGeneratorSpi.smali', result)

    def test_literals_and_comments_are_preserved(self):
        original = generator('    const-string v0, "v15 # p0"\n    # v15 must remain in this comment\n')
        result, _ = patcher.patch_keystore_generator(original)
        self.assertIn('"v15 # p0"', result)
        self.assertIn('# v15 must remain in this comment', result)

    def test_descriptor_and_field_names_are_preserved(self):
        original = generator('    const-class v0, Lorg/v15;\n'
                             '    iget v0, v1, Lorg/Holder;->v15:I\n')
        result, _ = patcher.patch_keystore_generator(original)
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
        original = generator('    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        result, _ = patcher.patch_keystore_generator(original)
        bad = result.replace('invoke-virtual/range {p0 .. p0}', 'invoke-virtual {p0}')
        with self.assertRaisesRegex(ValueError, 'encoding limit v15'):
            patcher.verify_target_content('AndroidKeyStoreKeyPairGeneratorSpi.smali', bad)

    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_real_smali_accepts_stock_and_safe_patch(self):
        classpath = os.environ['KAORIOS_SMALI_CLASSPATH']
        original = generator('    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        safe = generator('    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'smali'
            source.mkdir()
            for index, text in enumerate((original, patcher.patch_keystore_generator(safe)[0])):
                (source / 'Generator.smali').write_text(text)
                output = root / f'classes{index}.dex'
                result = subprocess.run(['java', '-cp', classpath, 'com.android.tools.smali.smali.Main',
                                         'assemble', str(source), '--api', '34', '-o', str(output)],
                                        capture_output=True, text=True, timeout=30)
                self.assertTrue(output.is_file(), result.stdout + result.stderr)
                self.assertTrue(output.read_bytes().startswith(b'dex\n'))
            with self.assertRaisesRegex(ValueError, 'encoding limit v15'):
                patcher.patch_keystore_generator(original)


def computer_engine(body, directive='.locals 8', full=True):
    signature = ('Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ'
                 if full else 'Lcom/android/server/pm/pkg/PackageStateInternal;II')
    return ('.class public Lcom/android/server/pm/ComputerEngine;\n'
            '.super Ljava/lang/Object;\n'
            f'.method public shouldFilterApplication({signature})Z\n'
            f'    {directive}\n{body}'
            '    const/4 v0, 0x0\n    return v0\n.end method\n')


class ServicesParameterEncodingTest(unittest.TestCase):
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
