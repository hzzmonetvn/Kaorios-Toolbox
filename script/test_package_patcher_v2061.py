#!/usr/bin/env python3
"""Regress the release ZIP's inventory, bytes, and extracted entrypoints."""
import importlib.util
from pathlib import Path
import stat
import subprocess
import sys
import tempfile
import unittest
import zipfile

spec = importlib.util.spec_from_file_location('packager', Path(__file__).with_name('package_patcher_v2061.py'))
packager = importlib.util.module_from_spec(spec)
spec.loader.exec_module(packager)
SOURCE_ROOT = Path(__file__).resolve().parent.parent


class PatcherPackageTest(unittest.TestCase):
    def test_reproducible_sorted_zip_and_source_bytes(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            first, second = root / 'first.zip', root / 'second.zip'
            packager.package(SOURCE_ROOT, first)
            packager.package(SOURCE_ROOT, second)
            self.assertEqual(first.read_bytes(), second.read_bytes())
            with zipfile.ZipFile(first) as archive:
                self.assertEqual(sorted(packager.MEMBERS), archive.namelist())
                self.assertEqual(len(packager.MEMBERS), len(archive.namelist()))
                self.assertFalse(any('settingsprovider' in name.lower() for name in archive.namelist()))
                for info in archive.infolist():
                    self.assertEqual((1980, 1, 1, 0, 0, 0), info.date_time)
                    self.assertEqual(zipfile.ZIP_STORED, info.compress_type)
                    self.assertTrue(stat.S_ISREG(info.external_attr >> 16))
                    source = SOURCE_ROOT / (packager.README_SOURCE if info.filename == 'README.txt' else info.filename)
                    self.assertEqual(0o755 if source.stat().st_mode & 0o111 else 0o644,
                                     (info.external_attr >> 16) & 0o777)
                    self.assertEqual(source.read_bytes(), archive.read(info))

    def test_rejects_duplicate_traversal_symlink_and_existing_output(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'script').mkdir()
            (root / 'script' / 'safe.py').write_bytes(b'print(1)\n')
            (root / 'script' / 'link.py').symlink_to('safe.py')
            (root / 'linked').symlink_to(root / 'script', target_is_directory=True)
            output = root / 'package.zip'
            for members in (('script/safe.py', 'script/safe.py'), ('../escape.py',),
                            ('/absolute.py',), ('script/../safe.py',), ('script\\safe.py',),
                            ('script/link.py',), ('linked/safe.py',)):
                with self.subTest(members=members), self.assertRaises(ValueError):
                    packager.package(root, output, members)
                self.assertFalse(output.exists())
            output.write_bytes(b'original')
            with self.assertRaisesRegex(ValueError, 'already exists'):
                packager.package(root, output, ('script/safe.py',))
            self.assertEqual(b'original', output.read_bytes())

    def test_extracted_patcher_ignores_provider_only_and_mixed_directories(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive_path = root / 'package.zip'
            packager.package(SOURCE_ROOT, archive_path)
            extracted = root / 'extracted'
            extracted.mkdir()
            with zipfile.ZipFile(archive_path) as archive:
                archive.extractall(extracted)
            stock = b'stock provider bytes\r\n'
            provider = root / 'SettingsProvider.smali'
            provider.write_bytes(stock)
            patcher = extracted / 'script/kaorios_patcher.py'
            for mode in ('1', '3'):
                with self.subTest(mode=mode):
                    command = [sys.executable, '-I', str(patcher), str(provider),
                               '--android-version', '17', '--mode', mode, '--no-delay']
                    result = subprocess.run(command, cwd=root, capture_output=True, text=True, timeout=10)
                    self.assertNotEqual(0, result.returncode)
                    self.assertIn('SettingsProvider.smali', result.stdout + result.stderr)
                    self.assertEqual(stock, provider.read_bytes())

                    mixed = root / f'mixed-{mode}'
                    mixed.mkdir()
                    mixed_provider = mixed / 'SettingsProvider.smali'
                    mixed_provider.write_bytes(stock)
                    generator = mixed / 'AndroidKeyStoreKeyPairGeneratorSpi.smali'
                    generator.write_text(
                        '.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;\n'
                        '.super Ljava/security/KeyPairGeneratorSpi;\n'
                        '.method public generateKeyPair()Ljava/security/KeyPair;\n'
                        '    .locals 1\n'
                        '    const/4 v0, 0x0\n'
                        '    return-object v0\n'
                        '.end method\n')
                    command[3] = str(mixed)
                    result = subprocess.run(command, cwd=root, capture_output=True, text=True, timeout=10)
                    self.assertEqual(0, result.returncode, result.stdout + result.stderr)
                    self.assertEqual(stock, mixed_provider.read_bytes())
                    self.assertIn('initGenerateSoftwareKeyPair', generator.read_text())


if __name__ == '__main__':
    unittest.main()
