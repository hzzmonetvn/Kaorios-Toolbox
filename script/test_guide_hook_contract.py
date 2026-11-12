"""Keep both manual guides aligned with the caller manifest and current ABI."""
from pathlib import Path
import re
import importlib.util
import os
import subprocess
import tempfile
import unittest


class GuideHookContractTest(unittest.TestCase):
    @unittest.skipUnless((Path(__file__).resolve().parents[1] / "Toolbox-docs").exists(), "Guide files are not included in the standalone patcher ZIP")
    def test_bilingual_call_signatures_match(self):
        docs = Path(__file__).resolve().parents[1] / 'Toolbox-docs/2.0.6+'
        signatures = []
        for suffix in ('', '_VI'):
            text = (docs / f'Patch_Guide_2.0.6.2{suffix}.md').read_text()
            self.assertNotIn('vN', text)
            self.assertNotIn('recheck/smali_framework --caller-only', text)
            self.assertIn('invoke-virtual/range {v2 .. v2}, Ljava/lang/Boolean;->booleanValue()Z', text)
            calls = set(re.findall(r'KaoriosHook;->([^\s]+)', text))
            for name in ('initContext', 'initActivityThread', 'initSystemServer',
                         'shouldHideAppListForCaller', 'filterInstallerPackageName'):
                self.assertTrue(any(call.startswith(name + '(') for call in calls), name)
            self.assertIn('hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;', calls)
            self.assertIn('initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;', calls)
            self.assertIn('CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;', calls)
            self.assertIn('shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;', calls)
            self.assertNotIn('shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z', calls)
            signatures.append(calls)
        self.assertEqual(*signatures)


if __name__ == '__main__':
    unittest.main()

class CompleteCallerAssemblyTest(unittest.TestCase):
    @unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), 'Real smali classpath not supplied')
    def test_all_six_owners_assemble_after_patch(self):
        path = Path(__file__).with_name('test_name_value_cache_hooks.py')
        spec = importlib.util.spec_from_file_location('complete_callers', path)
        fixtures = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(fixtures)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            fixtures.caller_tree(root / 'smali')
            fixtures.tree_patcher.patch_root(root / 'smali')
            result = subprocess.run(['java', '-cp', os.environ['KAORIOS_SMALI_CLASSPATH'],
                'com.android.tools.smali.smali.Main', 'assemble', str(root / 'smali'),
                '-o', str(root / 'classes.dex')], capture_output=True, text=True)
            self.assertEqual(0, result.returncode, result.stdout + result.stderr)
            self.assertTrue((root / 'classes.dex').is_file(), result.stderr)
