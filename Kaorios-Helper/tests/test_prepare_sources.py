# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('prepare_sources', ROOT / 'tools/prepare_sources.py')
preparer = importlib.util.module_from_spec(spec)
spec.loader.exec_module(preparer)

SERVICE = 'zygote/src/main/java/org/frknkrc44/hma_oss/zygote/service/'
STARTUP = '''object SystemServerHook {
    fun onSystemServer(loader: ClassLoader?) {
        assert(loader != null) { "Class loader is null, aborting!" }
        classLoader = loader
        thread {
            val pms = waitForService(PACKAGE_MANAGER_SERVICE) as IPackageManager
            val pmn = waitForService(PACKAGE_MANAGER_NATIVE_SERVICE)
            logD(TAG) { "Got pms: $pms, $pmn" }

            try {
                UserService.register(pms, pmn)
                logI(TAG) { "User service started" }
            } catch (cause: Throwable) {
                logE(TAG, cause) { "System service crashed" }
            }
        }
    }
}
'''
STORAGE = '''if (it.startsWith("hide_my_applist")) { migrate() }
if (it.startsWith("hide_my_applist")) { reuseOrDelete() }
dataDir = "/data/misc/hide_my_applist_" + random()
configFile = File(dataDir, "config.json")
'''


class HmaPreparationTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.source = Path(self.temp.name)
        self.files = {
            SERVICE + 'SystemServerHook.kt': STARTUP,
            SERVICE + 'HMAService.kt': STORAGE,
            'app/src/main/java/icu/nullptr/hidemyapplist/ui/fragment/SettingsFragment.kt':
                'val prefs = "hide_my_applist"\nrm -rf /data/misc/hide_my_applist*\n',
            'app/src/main/res/values/strings.xml':
                '<resources><string name="cleanup">/data/misc/hide_my_applist_*</string></resources>\n',
            'app/src/main/res/values-vi-rVN/strings.xml':
                '<resources><string name="cleanup">/data/misc/hide_my_applist_*</string></resources>\n',
            'app/src/main/res/values-zh-rCN/strings.xml':
                '<resources><string name="cleanup">/data/misc/hide_my_applist_*</string></resources>\n',
            'app/src/main/res/values-id/strings.xml':
                '<resources><string name="unrelated">hide_my_applist</string></resources>\n',
        }
        for name, content in self.files.items():
            path = self.source / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(content)

    def test_startup_worker_catches_lookup_and_cast_failures(self):
        preparer.prepare_hma_runtime(self.source)
        text = (self.source / (SERVICE + 'SystemServerHook.kt')).read_text()
        worker = text[text.index('        thread {'):]
        protected = worker[worker.index('try {'):worker.index('} catch (cause: Throwable)')]
        for statement in ('waitForService(PACKAGE_MANAGER_SERVICE) as IPackageManager',
                          'waitForService(PACKAGE_MANAGER_NATIVE_SERVICE)',
                          'UserService.register(pms, pmn)'):
            self.assertIn(statement, protected)
        self.assertNotIn('waitForService', worker[:worker.index('try {')])
        self.assertLess(text.index('requireNotNull(loader)'), text.index('classLoader = loader'))
        self.assertNotIn('assert(loader', text)

    def test_storage_and_cleanup_leave_legacy_namespace_untouched(self):
        preparer.prepare_hma_runtime(self.source)
        service = (self.source / (SERVICE + 'HMAService.kt')).read_text()
        self.assertEqual(2, service.count('it.startsWith("kaorios_helper_hma_")'))
        self.assertIn('/data/misc/kaorios_helper_hma_', service)
        self.assertNotIn('hide_my_applist', service)
        self.assertIn('configFile = File(dataDir, "config.json")', service)
        settings = (self.source / 'app/src/main/java/icu/nullptr/hidemyapplist/ui/fragment/SettingsFragment.kt').read_text()
        self.assertIn('rm -rf /data/misc/kaorios_helper_hma_*', settings)
        self.assertIn('val prefs = "hide_my_applist"', settings)
        for locale in ('values', 'values-vi-rVN', 'values-zh-rCN'):
            self.assertIn('/data/misc/kaorios_helper_hma_*',
                          (self.source / f'app/src/main/res/{locale}/strings.xml').read_text())
        self.assertEqual(self.files['app/src/main/res/values-id/strings.xml'],
                         (self.source / 'app/src/main/res/values-id/strings.xml').read_text())

    def test_unexpected_upstream_startup_is_rejected(self):
        path = self.source / (SERVICE + 'SystemServerHook.kt')
        path.write_text(STARTUP.replace('        thread {', '        launchWorker {'))
        with self.assertRaisesRegex(ValueError, 'SystemServerHook.kt'):
            preparer.prepare_hma_runtime(self.source)

    def test_prepared_source_cannot_be_applied_again(self):
        preparer.prepare_hma_runtime(self.source)
        before = (self.source / (SERVICE + 'SystemServerHook.kt')).read_text()
        with self.assertRaises(ValueError):
            preparer.prepare_hma_runtime(self.source)
        self.assertEqual(before, (self.source / (SERVICE + 'SystemServerHook.kt')).read_text())

    def test_wrong_pin_and_dirty_checkout_rejected_before_editing(self):
        pin = json.loads((ROOT / 'upstreams.json').read_text())['hma']['commit']
        for answers, message in ((['wrong-pin\n'], 'pinned commit'),
                                 ([pin + '\n', ' M existing.kt\n'], 'clean source checkout')):
            with self.subTest(message=message), patch.object(preparer.subprocess, 'check_output', side_effect=answers):
                with self.assertRaisesRegex(ValueError, message):
                    preparer.prepare('hma', self.source)
            for name, content in self.files.items():
                self.assertEqual(content, (self.source / name).read_text())


if __name__ == '__main__':
    unittest.main()
