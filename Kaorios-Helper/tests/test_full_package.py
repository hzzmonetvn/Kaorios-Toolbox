# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import json
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'tools'))
import package_copg
import package_helper
import test_helper as fixtures


class FullPackageTest(unittest.TestCase):
    def setUp(self):
        self.fixture = fixtures.HelperPackagingTest()
        self.fixture.setUp()
        self.addCleanup(self.fixture.doCleanups)
        self.base = self.fixture.base
        self.source = self.base / 'copg'
        (self.source / 'module').mkdir(parents=True)
        (self.source / 'webroot').mkdir()
        (self.source / 'KAORIOS-CHANGES.md').write_text('Host source boundary')
        self.config = {'PACKAGES_PHONE': ['com.example.target:got'],
                       'PACKAGES_PHONE_DEVICE': {'MODEL': 'Host fixture'},
                       'cpu_spoof': {'blacklist': ['com.example.block'], 'cpu_only_packages': ['com.example.cpu']}}
        (self.source / 'module/COPG.json').write_text(json.dumps(self.config))
        (self.source / 'module/list.json').write_text('{"com.example.target":"Host fixture"}')
        (self.source / 'module/cpuinfo_spoof').write_text('Host CPU fixture')
        (self.source / 'webroot/index.html').write_text('Host editor boundary')
        (self.source / 'module/service.sh').write_text('Forbidden upstream lifecycle')
        self.native = self.base / 'native'
        for name in ('zygisk/arm64-v8a.so', 'copg/controller'):
            path = self.native / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(fixtures.elf() + b'composite host boundary')
        (self.native / 'native-build.json').write_text('{"abi":"arm64-v8a"}')
        self.fixture.hma_files['action.sh'] = b'upstream Action'
        self.fixture.hma_files['webroot/index.html'] = b'upstream WebUI'
        fixtures.write_zip(self.fixture.hma, self.fixture.hma_files)
        self.copg = self.base / 'copg.zip'

    def build_inputs(self):
        package_copg.package(self.source, self.native, self.copg)

    def build_full(self):
        self.build_inputs()
        package_helper.package(self.fixture.hma, self.fixture.tee, self.fixture.licenses,
                               self.fixture.out, self.copg)
        return package_helper.read_zip(self.fixture.out)

    def test_one_composite_runtime_preserves_hma_and_tee_payloads(self):
        files = self.build_full()
        self.assertEqual(b'profile=full\n', files['helper.prop'])
        self.assertEqual(self.fixture.hma_files['classes.dex'], files['classes.dex'])
        self.assertEqual(self.fixture.tee_files['classes.dex'], files['tee/classes.dex'])
        self.assertEqual((self.native / 'zygisk/arm64-v8a.so').read_bytes(), files['zygisk/arm64-v8a.so'])
        self.assertNotIn('webroot/index.html', files)
        self.assertNotIn('webroot/copg/index.html', files)
        self.assertNotIn('action.sh', files)
        self.assertNotIn('copg/service.sh', files)
        self.assertIn(b'zygisk_require_external', files['customize.d/22-check-zygisk.sh'])
        package_helper.verify(self.fixture.out)

    def test_no_upstream_profiles_or_targets_are_packaged(self):
        self.build_inputs()
        files = package_helper.read_zip(self.copg)
        config = json.loads(files['copg/COPG.json'])
        self.assertEqual({'cpu_spoof': {'blacklist': [], 'cpu_only_packages': []}}, config)
        self.assertNotIn('copg/list.json', files)
        self.assertNotIn('webroot/copg/index.html', files)
        self.assertEqual(self.config, json.loads((self.source / 'module/COPG.json').read_text()))

    def test_missing_composite_cannot_fall_back_to_hma_only_binary(self):
        self.build_inputs()
        files = package_helper.read_zip(self.copg)
        del files['zygisk/arm64-v8a.so']
        fixtures.write_zip(self.copg, files)
        with self.assertRaisesRegex(ValueError, 'composite Zygisk'):
            package_helper.package(self.fixture.hma, self.fixture.tee, self.fixture.licenses,
                                   self.fixture.out, self.copg)

    def test_copg_requires_full_profile_and_cannot_override_lifecycle(self):
        self.build_inputs()
        with self.assertRaisesRegex(ValueError, 'TEE runtime'):
            package_helper.package(self.fixture.hma, None, self.fixture.licenses, self.fixture.out, self.copg)
        files = package_helper.read_zip(self.copg)
        files['service.sh'] = b'unexpected script'
        fixtures.write_zip(self.copg, files)
        with self.assertRaisesRegex(ValueError, 'Unexpected COPG'):
            package_helper.package(self.fixture.hma, self.fixture.tee, self.fixture.licenses,
                                   self.fixture.out, self.copg)

    def test_missing_or_corrupt_component_is_rejected(self):
        files = self.build_full()
        for member in ('copg/controller', 'copg/COPG.json', 'copg/cpuinfo_spoof', 'copg/native-build.json'):
            missing = dict(files)
            del missing[member]
            with self.assertRaises(ValueError):
                package_helper.check_payload(missing)
        files['copg/controller'] = b'not compiled arm64'
        with self.assertRaisesRegex(ValueError, 'arm64 ELF'):
            package_helper.check_payload(files)


if __name__ == '__main__':
    unittest.main()
