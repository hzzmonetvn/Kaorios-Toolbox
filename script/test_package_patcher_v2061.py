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

    def test_extracted_entrypoints_reject_provider_only_input(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive_path = root / 'package.zip'
            packager.package(SOURCE_ROOT, archive_path)
            extracted = root / 'extracted'
            extracted.mkdir()
            with zipfile.ZipFile(archive_path) as archive:
                archive.extractall(extracted)
            provider = root / 'SettingsProvider.smali'
            provider.write_bytes(b'stock provider bytes\r\n')
            commands = (
                [sys.executable, '-I', str(extracted / 'script/kaorios_patcher.py'), str(provider),
                 '--android-version', '17', '--mode', '1', '--no-delay'],
                [sys.executable, '-I', str(extracted / 'script/patch-settingsprovider-a17.py'), str(provider)],
                ['bash', str(extracted / 'script/patch-settingsprovider-a17-artifact.sh'),
                 '--input', str(provider), '--output', str(root / 'patched.apk')],
            )
            for index, command in enumerate(commands):
                with self.subTest(command=command):
                    result = subprocess.run(command, cwd=root, capture_output=True, text=True, timeout=10)
                    self.assertNotEqual(0, result.returncode)
                    self.assertIn('SettingsProvider.smali' if index == 0 else 'Fake Settings has been removed',
                                  result.stdout + result.stderr)
                    self.assertEqual(b'stock provider bytes\r\n', provider.read_bytes())
                    self.assertFalse((root / 'patched.apk').exists())


if __name__ == '__main__':
    unittest.main()
