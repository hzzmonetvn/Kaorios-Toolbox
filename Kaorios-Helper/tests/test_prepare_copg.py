# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import importlib.util
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('prepare_copg', ROOT / 'tools/prepare_copg.py')
preparer = importlib.util.module_from_spec(spec)
spec.loader.exec_module(preparer)
PIN = json.loads((ROOT / 'upstreams.json').read_text())['copg']['commit']

DATA = '''  const MODULE_DIR = '/data/adb/modules/COPG';
  const CONFIG_PATH = `${MODULE_DIR}/COPG.json`;
      await execCommand(`echo '${shq(cfgStr)}' > ${CONFIG_PATH}`);
      await execCommand(`echo '${shq(listStr)}' > ${LIST_PATH}`);
      await execCommand(`chmod 644 ${CONFIG_PATH} ${LIST_PATH}`);
  const LIST_PATH = `${MODULE_DIR}/list.json`;
  const BACKUP_DIR = '/sdcard/Download/COPG';
  const LOG_DIR = '/sdcard/Download/COPG/LOGS';
  const SYNC_CONFIG_URL = 'https://raw.githubusercontent.com/AlirezaParsi/COPG/refs/heads/JSON/module/COPG.json';
  const SYNC_LIST_URL = 'https://raw.githubusercontent.com/AlirezaParsi/COPG/refs/heads/JSON/module/list.json';
  readFilePreview('../COPG.json'); readFilePreview('../list.json');
  tryCmd('cat /data/adb/modules/COPG/module.prop');
  tryCmd('ls /data/adb/modules/COPG/disable');
  const ICON_DIR_ABS = '/data/adb/modules/COPG/webroot/icons';
  const ICON_SCRIPT = '/data/adb/modules/COPG/icons_fetch.sh';
  const MODULE_ID = 'COPG';
  function moduleInterface() { return w['$' + SANITIZED_ID] || w.$COPG || w.$copg || null; }
    else if (primary && primary.name === 'Magisk') zygisk = { variant: 'Magisk Zygisk', version: '', on: true };
'''


class CopgPreparationTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.source = Path(self.temp.name)
        self.files = {
            'src/spoof_module.cpp': 'REGISTER_ZYGISK_MODULE(COPGModule)\nREGISTER_ZYGISK_COMPANION(companion)\n'
                '#include <jni.h>\n'
                '        std::string command = buffer;\n'
                '        struct stat file_stat;\n        if (stat(config_path.c_str(), &file_stat) != 0) return;\n\n'
                '        time_t current_mtime = file_stat.st_mtime;\n        if (!force && current_mtime == last_config_mtime) return;\n\n'
                '        CONFIG_LOG("Loading config...");\n        std::ifstream file(config_path);\n        if (!file.is_open()) return;\n\n'
                '        try {\n            json config = json::parse(file);\n'
                '            last_config_mtime = current_mtime;\n'
                '        file.close();\n    }\n\n    void spoofDevice\n'
                'config=/data/adb/modules/COPG/COPG.json\ncpu=/data/adb/modules/COPG/cpuinfo_spoof\n',
            'src/unified_controller.cpp': '    #include <sys/inotify.h>\n'
                'config=/data/adb/modules/COPG/COPG.json\ndefaults=/data/adb/copg_defaults\nint main() {\nreturn 0;\n}\n',
            'webroot/js/copg-data.js': DATA,
            'webroot/js/library.js': 'Saved to /data/adb/modules/COPG\n',
            'src/include/zygisk.hpp': '/* Original Zygisk permission notice */\n#define ZYGISK_API_VERSION 4\n',
            'src/atexit.cpp': '/* Original AOSP redistribution notice */\nvoid originalAtexit();\n',
            'module/COPG.json': '{"PACKAGES_TEST": ["com.example.test"]}\n',
        }
        for name, content in self.files.items():
            path = self.source / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(content)

    def prepare(self):
        with patch.object(preparer.subprocess, 'check_output', side_effect=[PIN + '\n', '']):
            preparer.prepare(self.source)

    def test_wrong_pin_and_dirty_checkout_cannot_change_source(self):
        for answers, message in ((['wrong\n'], 'pinned commit'),
                                 ([PIN + '\n', ' M source.cpp\n'], 'clean source checkout')):
            with self.subTest(message=message), patch.object(preparer.subprocess, 'check_output', side_effect=answers):
                with self.assertRaisesRegex(ValueError, message):
                    preparer.prepare(self.source)
            for name, content in self.files.items():
                self.assertEqual(content, (self.source / name).read_text())

    def test_unexpected_upstream_is_rejected_before_any_write(self):
        path = self.source / 'webroot/js/copg-data.js'
        path.write_text(DATA.replace("const MODULE_ID = 'COPG';", "const MODULE_ID = 'changed';"))
        before = {p: p.read_bytes() for p in self.source.rglob('*') if p.is_file()}
        with self.assertRaisesRegex(ValueError, 'copg-data.js'):
            self.prepare()
        self.assertEqual(before, {p: p.read_bytes() for p in self.source.rglob('*') if p.is_file()})

    def test_factory_keeps_companion_and_controller_namespaces_are_isolated(self):
        self.prepare()
        native = (self.source / 'src/spoof_module.cpp').read_text()
        self.assertNotIn('REGISTER_ZYGISK_MODULE', native)
        self.assertIn('helperCopgModule()', native)
        self.assertIn('helperCompanionRequest(fd, command', native)
        self.assertIn('helperCopgConfig(api, config_text)', native)
        self.assertNotIn('json::parse(file)', native)
        self.assertNotIn('last_config_mtime = current_mtime', native)
        self.assertNotIn('file.close()', native)
        self.assertIn('REGISTER_ZYGISK_COMPANION(companion)', native)
        self.assertIn(preparer.CONFIG_DIR + '/COPG.json', native)
        self.assertIn(preparer.MODULE_DIR + '/copg/cpuinfo_spoof', native)
        controller = (self.source / 'src/unified_controller.cpp').read_text()
        self.assertIn('#include <fcntl.h>', controller)
        self.assertIn(preparer.CONFIG_DIR + '/defaults', controller)
        self.assertIn('--check-config', controller)
        self.assertEqual(self.files['module/COPG.json'], (self.source / 'module/COPG.json').read_text())

    def test_editor_uses_persistent_config_and_helper_bridge_without_unverified_builtin_status(self):
        self.prepare()
        data = (self.source / 'webroot/js/copg-data.js').read_text()
        self.assertIn('${CONFIG_DIR}/COPG.json', data)
        self.assertIn('${CONFIG_DIR}/list.json', data)
        self.assertIn('umask 077; echo', data)
        self.assertIn('chmod 600 ${CONFIG_PATH} ${LIST_PATH}', data)
        self.assertNotIn('chmod 644 ${CONFIG_PATH} ${LIST_PATH}', data)
        self.assertIn(preparer.MODULE_DIR + '/webroot/copg/icons', data)
        self.assertIn(preparer.MODULE_DIR + '/module.prop', data)
        self.assertIn("MODULE_ID = 'kaorios_helper'", data)
        self.assertNotIn('w.$COPG', data)
        self.assertNotIn('Magisk Zygisk', data)
        self.assertEqual(2, data.count(PIN + '/module/'))
        self.assertNotIn('refs/heads/JSON', data)
        self.assertNotIn('/data/adb/modules/COPG', data)

    def test_original_notices_and_reproducible_provenance_are_distributed(self):
        self.prepare()
        directory = self.source / 'helper-dependencies/licenses'
        self.assertEqual(3, len(list(directory.glob('*LICENSE*.txt'))))
        self.assertIn('Original Zygisk permission notice', (directory / 'ZYGISK-LICENSE-ISC.txt').read_text())
        self.assertIn('Original AOSP redistribution notice', (directory / 'ATEXIT-LICENSE-BSD-2-Clause.txt').read_text())
        self.assertIn('Evan Nemerson', (directory / 'JSON-HEDLEY-LICENSE-MIT.txt').read_text())
        self.assertEqual(self.files['src/atexit.cpp'], (self.source / 'src/atexit.cpp').read_text())
        provenance = (self.source / 'KAORIOS-CHANGES.md').read_text()
        self.assertIn(PIN, provenance)
        self.assertIn('5.1.1', provenance)
        self.assertIn('prepare_copg.py', provenance)


@unittest.skipUnless(os.environ.get('HELPER_COPG_SOURCE') and shutil.which('g++'),
                     'Set HELPER_COPG_SOURCE to the pinned COPG checkout for native host checks')
class CopgConfigCheckTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.temp = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.temp.cleanup)
        cls.directory = Path(cls.temp.name)
        cls.config = cls.directory / 'config.json'
        cls.marker = cls.directory / 'daemon-started'
        cls.binary = cls.directory / 'check-config'
        code = '#include <fstream>\n#include <string>\n#include "json.hpp"\nusing json = nlohmann::json;\n'
        code += preparer.CHECK_CONFIG.replace(preparer.CONFIG_DIR + '/COPG.json', str(cls.config))
        code += 'std::ofstream("' + str(cls.marker) + '") << "daemon";\nreturn 0;\n}\n'
        source = cls.directory / 'check-config.cpp'
        source.write_text(code)
        include = Path(os.environ['HELPER_COPG_SOURCE']) / 'src/include'
        subprocess.run(['g++', '-std=c++17', '-I', str(include), str(source), '-o', str(cls.binary)], check=True, capture_output=True)

    def check(self, config):
        self.config.write_text(config if isinstance(config, str) else json.dumps(config))
        result = subprocess.run([str(self.binary), '--check-config'], capture_output=True)
        self.assertFalse(self.marker.exists(), 'Configuration validation started the daemon')
        self.assertEqual(b'', result.stdout)
        self.assertEqual(b'', result.stderr)
        return result.returncode

    def test_valid_typed_targets_pass_without_daemon_or_state_changes(self):
        for config in ({'cpu_spoof': {'cpu_only_packages': ['com.example.test:dnd']}},
                       {'PACKAGES_TEST': ['com.example.test'], 'PACKAGES_TEST_DEVICE': {'MODEL': 'Test'}}):
            with self.subTest(config=config):
                self.assertEqual(0, self.check(config))

    def test_invalid_schema_or_empty_targets_fail_without_state_changes(self):
        for config in ('{', [], {}, {'cpu_spoof': []}, {'cpu_spoof': {'blacklist': []}},
                       {'cpu_spoof': {'blacklist': [1]}}, {'cpu_spoof': {'blacklist': [':got']}},
                       {'cpu_spoof': {'blacklist': ['com.test;command']}}, {'PACKAGES_TEST': ['com.example.test']},
                       {'PACKAGES_TEST': 'com.example.test'}, {'PACKAGES_TEST_DEVICE': []},
                       {'PACKAGES_TEST': ['com.example.test'], 'PACKAGES_TEST_DEVICE': {'MODEL': 1}},
                       {'PACKAGES_TEST': ['com.example.test'], 'PACKAGES_TEST_DEVICE': {'PROPS': {'ro.test': False}}}):
            with self.subTest(config=config):
                self.assertEqual(1, self.check(config))
        self.config.unlink()
        result = subprocess.run([str(self.binary), '--check-config'], capture_output=True)
        self.assertEqual(1, result.returncode)
        self.assertFalse(self.marker.exists())

    def test_unknown_arguments_are_rejected_without_daemon_start(self):
        result = subprocess.run([str(self.binary), '--unexpected'], capture_output=True)
        self.assertEqual(2, result.returncode)
        self.assertFalse(self.marker.exists())


if __name__ == '__main__':
    unittest.main()
