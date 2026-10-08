# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]


class ZygiskDetectionTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.adb = self.base / 'adb'
        self.bin = self.base / 'bin'
        self.bin.mkdir()
        magisk = self.bin / 'magisk'
        magisk.write_text('#!/bin/sh\nprintf "value=%s\\n" "$HELPER_TEST_BUILTIN"\n')
        magisk.chmod(0o755)
        self.script = (ROOT / 'module/zygisk.sh').read_text().replace('/data/adb', str(self.adb))

    def runtime(self, name, pending=False, flag=None):
        directory = self.adb / ('modules_update' if pending else 'modules') / name
        (directory / 'bin').mkdir(parents=True)
        (directory / 'module.prop').write_text(f'id={name}\nname=Same display name\n')
        (directory / 'bin/zygiskd64').touch()
        if flag:
            (directory / flag).touch()

    def detect(self, **settings):
        env = dict(os.environ, PATH=str(self.bin) + os.pathsep + os.environ['PATH'],
                   KSU='', APATCH='', ZYGISK_ENABLED='', HELPER_TEST_BUILTIN='0')
        env.update(settings)
        return subprocess.run(['sh', '-c', self.script + '\nzygisk_detect\nhelper_result=$?\n'
                               'echo "$ZYGISK_COUNT:$ZYGISK_STATE:$ZYGISK_PROVIDERS"\nexit "$helper_result"'],
                              env=env, text=True, capture_output=True, timeout=5)

    def test_missing_runtime_is_rejected(self):
        result = self.detect()
        self.assertNotEqual(0, result.returncode)
        self.assertIn('0:missing', result.stdout)

    def test_magisk_builtin_from_installer_or_database(self):
        for settings in ({'ZYGISK_ENABLED': '1'}, {'HELPER_TEST_BUILTIN': '1'}):
            result = self.detect(**settings)
            self.assertEqual(0, result.returncode)
            self.assertIn('1:configured: magisk-builtin', result.stdout)

    def test_kernel_su_and_apatch_require_external_runtime(self):
        for root in ('KSU', 'APATCH'):
            self.assertNotEqual(0, self.detect(**{root: 'true', 'ZYGISK_ENABLED': '1'}).returncode)
        self.runtime('rezygisk')
        for root in ('KSU', 'APATCH'):
            self.assertEqual(0, self.detect(**{root: 'true', 'ZYGISK_ENABLED': '1'}).returncode)

    def test_same_display_names_do_not_hide_duplicate_providers(self):
        self.runtime('zygisk_next')
        self.runtime('rezygisk')
        result = self.detect()
        self.assertNotEqual(0, result.returncode)
        self.assertIn('2:conflict', result.stdout)

    def test_builtin_and_external_runtime_conflict(self):
        self.runtime('zygisk_next')
        result = self.detect(ZYGISK_ENABLED='1')
        self.assertNotEqual(0, result.returncode)
        self.assertIn('2:conflict', result.stdout)

    def test_pending_runtime_is_reported_as_pending_reboot(self):
        self.runtime('rezygisk', pending=True)
        result = self.detect()
        self.assertEqual(0, result.returncode)
        self.assertIn('1:pending-reboot', result.stdout)

    def test_update_of_same_provider_is_not_counted_twice(self):
        self.runtime('rezygisk')
        self.runtime('rezygisk', pending=True)
        result = self.detect()
        self.assertEqual(0, result.returncode)
        self.assertIn('1:pending-reboot', result.stdout)

    def test_pending_disabled_replacement_is_not_a_reboot_provider(self):
        self.runtime('rezygisk')
        self.runtime('rezygisk', pending=True, flag='disable')
        self.assertNotEqual(0, self.detect().returncode)

    def test_pending_removing_replacement_is_not_a_reboot_provider(self):
        self.runtime('rezygisk')
        self.runtime('rezygisk', pending=True, flag='remove')
        self.assertNotEqual(0, self.detect().returncode)

    def test_disabled_and_removing_runtime_are_not_selected(self):
        self.runtime('zygisk_next', flag='disable')
        self.runtime('rezygisk', pending=True, flag='remove')
        self.assertNotEqual(0, self.detect().returncode)

    def test_pending_different_provider_conflicts_with_installed_provider(self):
        self.runtime('zygisk_next')
        self.runtime('rezygisk', pending=True)
        result = self.detect()
        self.assertNotEqual(0, result.returncode)
        self.assertIn('2:conflict', result.stdout)

    def test_full_helper_rejects_builtin_while_accepting_one_external(self):
        script = 'abort() { echo "$1"; exit 1; }; ui_print() { :; };\n' + self.script + '\nzygisk_require_external\n'
        env = dict(os.environ, PATH=str(self.bin) + os.pathsep + os.environ['PATH'], KSU='', APATCH='',
                   ZYGISK_ENABLED='1', HELPER_TEST_BUILTIN='0')
        result = subprocess.run(['sh', '-c', script], env=env, capture_output=True, text=True, timeout=5)
        self.assertNotEqual(0, result.returncode)
        self.assertIn('COPG requires', result.stdout)
        self.runtime('rezygisk')
        env['ZYGISK_ENABLED'] = '0'
        result = subprocess.run(['sh', '-c', script], env=env, capture_output=True, text=True, timeout=5)
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)


if __name__ == '__main__':
    unittest.main()
