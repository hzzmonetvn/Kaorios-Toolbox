#!/usr/bin/env python3
"""Ensure retired provider commands never modify an input or publish an APK."""
import contextlib
import importlib.util
import io
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

SCRIPT_DIR = Path(__file__).resolve().parent


def load(filename, name):
    spec = importlib.util.spec_from_file_location(name, SCRIPT_DIR / filename)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


patcher = load('kaorios_patcher.py', 'patcher')
provider = load('patch-settingsprovider-a17.py', 'provider')

GENERATOR = '''.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method
'''


class RetiredProviderTest(unittest.TestCase):
    def test_main_patcher_keeps_provider_while_patching_framework(self):
        for mode in ('1', '3'):
            with self.subTest(mode=mode), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                stock = b'provider stock bytes\r\n'
                apk = root / 'SettingsProvider.smali'
                apk.write_bytes(stock)
                generator = root / 'AndroidKeyStoreKeyPairGeneratorSpi.smali'
                generator.write_text(GENERATOR)
                with contextlib.redirect_stdout(io.StringIO()):
                    self.assertTrue(patcher.process_files(root, mode, slow=False))
                self.assertEqual(stock, apk.read_bytes())
                self.assertIn('initGenerateSoftwareKeyPair', generator.read_text())

    def test_provider_only_input_is_not_a_patch_target(self):
        with tempfile.TemporaryDirectory() as directory:
            file = Path(directory) / 'SettingsProvider.smali'
            file.write_bytes(b'stock')
            with contextlib.redirect_stdout(io.StringIO()):
                self.assertFalse(patcher.process_files(file, '1', slow=False))
            self.assertEqual(b'stock', file.read_bytes())

    def test_old_python_api_rejects_provider_patching(self):
        with self.assertRaisesRegex(ValueError, 'Fake Settings has been removed'):
            provider.patch('stock')
        with self.assertRaisesRegex(ValueError, 'Fake Settings has been removed'):
            provider.verify('stock')

    def test_old_commands_do_not_write_input_or_output(self):
        with tempfile.TemporaryDirectory() as directory:
            apk = Path(directory) / 'SettingsProvider.apk'
            output = Path(directory) / 'patched.apk'
            apk.write_bytes(b'stock APK')
            commands = [
                [sys.executable, str(SCRIPT_DIR / 'patch-settingsprovider-a17.py'), str(apk)],
                ['bash', str(SCRIPT_DIR / 'patch-settingsprovider-a17-artifact.sh'),
                 '--input', str(apk), '--output', str(output)],
            ]
            for command in commands:
                with self.subTest(command=command[0]):
                    result = subprocess.run(command, capture_output=True, text=True)
                    self.assertNotEqual(0, result.returncode)
                    self.assertIn('Fake Settings has been removed', result.stdout + result.stderr)
                    self.assertEqual(b'stock APK', apk.read_bytes())
                    self.assertFalse(output.exists())


if __name__ == '__main__':
    unittest.main()
