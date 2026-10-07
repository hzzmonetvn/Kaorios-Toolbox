# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import importlib.util
from pathlib import Path
import subprocess
import tempfile
import os
import unittest
import zipfile

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('package_helper', ROOT / 'tools/package_helper.py')
packager = importlib.util.module_from_spec(spec)
spec.loader.exec_module(packager)


def elf():
    data = bytearray(64)
    data[:5] = b'\x7fELF\x02'
    data[18:20] = (183).to_bytes(2, 'little')
    return bytes(data)


def write_zip(path, files):
    with zipfile.ZipFile(path, 'w') as archive:
        for name, data in files.items():
            archive.writestr(name, data)


class HelperPackagingTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.hma = self.base / 'hma.zip'
        self.tee = self.base / 'tee.zip'
        self.out = self.base / 'helper.zip'
        self.licenses = self.base / 'licenses'
        self.licenses.mkdir()
        (self.licenses / 'LICENSE').write_text('Synthetic host fixture, not a module license.')
        self.hma_files = {
            'module.prop': b'id=hma_oss_zygisk\nversion=upstream\nupdateJson=https://example.invalid\n',
            'manager.apk': b'host APK boundary', 'classes.dex': b'dex\n035\0HMA',
            'zygisk/arm64-v8a.so': elf(), 'zygisk/x86.so': b'not arm64',
            'packages/android': b'', 'hmaoss.sh': b'# host boundary',
            'customize.d/00-verify-resources.sh': b'old checksums'
        }
        for name in packager.INSTALL_PARTS:
            self.hma_files['customize.d/' + name] = b': # host boundary\n'
        self.tee_files = {'classes.dex': b'dex\n035\0TEE', 'daemon': b'#!/system/bin/sh', 'sepolicy.rule': b'# test'}
        for name in ('libinject.so', 'libsupervisor.so', 'libTEESimulator.so', 'libcertgen.so'):
            self.tee_files[f'lib/arm64-v8a/{name}'] = elf()
        write_zip(self.hma, self.hma_files)
        write_zip(self.tee, self.tee_files)

    def package(self):
        packager.package(self.hma, self.tee, self.licenses, self.out)

    def test_separate_dex_arm64_only_and_complete_checksums(self):
        self.package()
        files = packager.read_zip(self.out)
        self.assertNotEqual(files['classes.dex'], files['tee/classes.dex'])
        self.assertNotIn('zygisk/x86.so', files)
        self.assertIn(b'id=kaorios_helper\n', files['module.prop'])
        self.assertNotIn(b'updateJson=', files['module.prop'])
        self.assertNotIn('customize.d/00-verify-resources.sh', files)
        packager.verify(self.out)
        files['tee/classes.dex'] += b'corrupt'
        write_zip(self.out, files)
        with self.assertRaises(ValueError):
            packager.verify(self.out)

    def run_installer(self, arch='arm64', corrupt=False, conflict=False):
        for name in ('10-enforce-api-version.sh', '11-enforce-arch.sh', '20-enforce-magisk-version.sh',
                     '21-enforce-ksu-kernel.sh', '22-check-zygisk.sh'):
            self.hma_files['customize.d/' + name] = b': # host boundary\n'
        write_zip(self.hma, self.hma_files)
        self.package()
        if corrupt:
            files = packager.read_zip(self.out)
            files['manager.apk'] += b'corrupt'
            write_zip(self.out, files)
        adb = self.base / 'adb'
        if conflict:
            other = adb / 'modules_update/tricky_store'
            other.mkdir(parents=True)
            (other / 'module.prop').write_text('id=tricky_store\n')
        modpath = self.base / 'installed'
        modpath.mkdir(exist_ok=True)
        calls = self.base / 'pm-calls'
        env = dict(os.environ, BOOTMODE='true', ARCH=arch, API='37', ZIPFILE=str(self.out), MODPATH=str(modpath))
        script = (ROOT / 'module/customize.sh').read_text().replace('/data/adb', str(adb))
        boundary = f"""abort() {{ echo "$1"; exit 1; }}
ui_print() {{ echo "$1"; }}
set_perm_recursive() {{ :; }}
set_perm() {{ :; }}
pm() {{ touch '{calls}'; return 0; }}
"""
        result = subprocess.run(['sh', '-c', boundary + script], env=env, text=True, capture_output=True, timeout=5)
        return result, calls, adb

    def test_installer_verifies_before_pm_and_stays_off_on_first_install(self):
        result, calls, adb = self.run_installer()
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertTrue(calls.exists())
        self.assertFalse((adb / 'kaorios_helper/tee.enabled').exists())
        self.assertEqual('', (adb / 'kaorios_helper/tee/target.txt').read_text())
        self.assertFalse((adb / 'boot-completed.d/kaorios_helper_hma.sh').exists())

    def test_installer_rejects_corruption_and_conflicts_before_manager_install(self):
        result, calls, _ = self.run_installer(corrupt=True)
        self.assertNotEqual(0, result.returncode)
        self.assertFalse(calls.exists())
        result, calls, _ = self.run_installer(conflict=True)
        self.assertNotEqual(0, result.returncode)
        self.assertFalse(calls.exists())

    def test_no_key_material_or_wrong_architecture(self):
        for member, data in [('keybox.xml', b'placeholder'), ('secret.jks', b'placeholder'),
                             ('lib/arm64-v8a/libbad.so', b'not an ELF')]:
            bad = dict(self.hma_files)
            bad[member] = data
            write_zip(self.hma, bad)
            with self.assertRaises(ValueError):
                self.package()

    def test_missing_native_runtime_is_rejected(self):
        del self.tee_files['lib/arm64-v8a/libcertgen.so']
        write_zip(self.tee, self.tee_files)
        with self.assertRaises((KeyError, ValueError)):
            self.package()

    def test_missing_installer_compatibility_script_is_rejected(self):
        del self.hma_files['customize.d/22-check-zygisk.sh']
        write_zip(self.hma, self.hma_files)
        with self.assertRaisesRegex(ValueError, '22-check-zygisk.sh'):
            self.package()

    def test_zip_traversal_and_duplicate_entries_are_rejected(self):
        for member in ('../outside', '/outside', 'bad\\path', 'bad\npath'):
            write_zip(self.hma, {member: b'x'})
            with self.assertRaises(ValueError):
                packager.read_zip(self.hma)
        with zipfile.ZipFile(self.hma, 'w') as archive:
            archive.writestr('duplicate', b'a')
            archive.writestr('duplicate', b'b')
        with self.assertRaises(ValueError):
            packager.read_zip(self.hma)


class HelperLifecycleTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.adb = self.base / 'adb'
        self.module = self.adb / 'modules/kaorios_helper'
        self.module.mkdir(parents=True)
        self.config = self.adb / 'kaorios_helper/tee'
        self.config.mkdir(parents=True)
        script = (ROOT / 'module/helperctl.sh').read_text().replace('/data/adb', str(self.adb))
        script = script.replace('id -u', 'printf 0')
        (self.module / 'helperctl.sh').write_text(script)
        (self.module / 'module.prop').write_text('version=host-fixture\n')

    def run_ctl(self, action):
        return subprocess.run(['sh', str(self.module / 'helperctl.sh'), action], text=True,
                              capture_output=True, timeout=5)

    def test_first_boot_does_not_start_tee(self):
        result = self.run_ctl('start')
        self.assertEqual(0, result.returncode)
        self.assertIn('disabled', result.stdout)
        self.assertFalse((self.adb / 'kaorios_helper/tee-supervisor.pid').exists())

    def test_enable_requires_config_and_does_not_write_flag_on_failure(self):
        self.assertNotEqual(0, self.run_ctl('enable-tee').returncode)
        self.assertFalse((self.adb / 'kaorios_helper/tee.enabled').exists())

    def test_disabled_or_removing_helper_cannot_persist_tee_opt_in(self):
        (self.config / 'keybox.xml').write_text('opaque user-owned placeholder')
        (self.config / 'target.txt').write_text('com.example.target\n')
        runtime = self.module / 'tee'
        runtime.mkdir()
        for name in ('daemon', 'supervisor', 'inject', 'libTEESimulator.so', 'libcertgen.so', 'classes.dex'):
            (runtime / name).write_text('host runtime boundary')
        for state in ('disable', 'remove'):
            marker = self.module / state
            marker.touch()
            self.assertNotEqual(0, self.run_ctl('enable-tee').returncode)
            self.assertFalse((self.adb / 'kaorios_helper/tee.enabled').exists(), state)
            self.assertFalse((self.adb / 'kaorios_helper/tee-supervisor.pid').exists())
            marker.unlink()

    def test_conflicting_disabled_or_pending_module_is_rejected(self):
        conflict = self.adb / 'modules_update/tricky_store'
        conflict.mkdir(parents=True)
        (conflict / 'module.prop').write_text('id=tricky_store\n')
        (conflict / 'disable').touch()
        result = self.run_ctl('enable-tee')
        self.assertNotEqual(0, result.returncode)
        self.assertIn('Conflicting module', result.stdout)

    def test_stop_never_kills_an_unrelated_pid_or_deletes_user_keys(self):
        process = subprocess.Popen(['sleep', '20'])
        self.addCleanup(lambda: (process.terminate(), process.wait()))
        pidfile = self.adb / 'kaorios_helper/tee-supervisor.pid'
        pidfile.write_text(str(process.pid))
        keyfile = self.config / 'keybox.xml'
        keyfile.write_text('opaque user-owned placeholder')
        (self.adb / 'kaorios_helper/tee.enabled').touch()
        self.assertEqual(0, self.run_ctl('disable-tee').returncode)
        self.assertIsNone(process.poll())
        self.assertEqual('opaque user-owned placeholder', keyfile.read_text())
        self.assertFalse(pidfile.exists())

    def test_all_installer_scripts_have_valid_shell_syntax(self):
        for script in (ROOT / 'module').glob('*.sh'):
            subprocess.run(['sh', '-n', str(script)], check=True, capture_output=True)


if __name__ == '__main__':
    unittest.main()
