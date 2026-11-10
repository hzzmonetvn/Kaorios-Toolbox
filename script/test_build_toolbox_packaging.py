#!/usr/bin/env python3
"""Check packaging and upload safeguards in the public build workflow."""
from pathlib import Path
import re
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parent.parent
WORKFLOW = ROOT / '.github/workflows/build-toolbox.yml'


class BuildToolboxPackagingTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.workflow = WORKFLOW.read_text()
        start = cls.workflow.index('      - name: Upload build artifacts to tempfile')
        cls.upload = cls.workflow[start:]
        cls.package_start = cls.workflow.index('      - name: Prepare APKs and extract full framework DEX/Toolbox native library')
        cls.package_end = cls.workflow.index('      - name: Upload build artifacts to tempfile')
        cls.package = cls.workflow[cls.package_start:cls.package_end]

    def test_complete_release_requires_both_native_targets_and_abis(self):
        for abi in ('arm64-v8a', 'armeabi-v7a'):
            for library in ('libkaoripif.so', 'libkaoripif_diagnostic.so'):
                self.assertIn(f'lib/{abi}/{library}', self.package)
        self.assertIn('cmake --build "$build"', self.package)
        self.assertIn('Java_android_security_kaorios_KaoriosPifInstaller_nativeInstallPif', self.package)
        self.assertIn('Java_android_security_kaorios_PifNative_nativeResolve', self.package)
        self.assertIn('GLOBAL +DEFAULT +[0-9]+', self.package)

    def test_release_preserves_r8_evidence_and_directory_layout(self):
        self.assertIn('mapping.txt usage.txt seeds.txt configuration.txt', self.package)
        self.assertIn('test -s "framework/build/outputs/mapping/release/$report"', self.package)
        self.assertIn('tar -czf "$RUNNER_TEMP/Kaorios-complete.tar.gz" -C dist .', self.package)
        self.assertIn('sha256sum --check SHA256SUMS', self.package)
        self.assertIn('sha256sum Kaorios-complete.tar.gz', self.package)

    def test_checksum_paths_are_relative_to_dist(self):
        self.assertIn('cd dist', self.package)
        start = self.package.index('              KaoriosToolbox-release.apk')
        checksum_block = self.package[start:self.package.index('              > SHA256SUMS', start)]
        names = re.findall(r'^\s+([A-Za-z0-9_./-]+)\s+\\?$', checksum_block, re.MULTILINE)
        self.assertTrue(names)
        for name in names:
            self.assertFalse(name.startswith('dist/'), name)
            self.assertTrue((ROOT / 'dist' / name).as_posix().endswith(name))

    def test_upload_discovers_nested_files_and_rejects_partial_uploads(self):
        self.assertIn('find dist -type f -print0', self.upload)
        self.assertIn('uploaded != expected', self.upload)
        self.assertIn('curl --fail --silent --show-error', self.upload)
        self.assertIn('https://tmpfiles.org/*', self.upload)
        self.assertIn("*']('*", self.upload)
        self.assertIn("*']'*", self.upload)

    def test_release_packaging_starts_with_clean_dist(self):
        self.assertIn('rm -rf -- dist\n          mkdir -p dist', self.package)

    def test_unsigned_apk_is_a_hard_failure(self):
        self.assertIn('refusing to package an unsigned release APK', self.workflow)
        self.assertIn('exit 1', self.workflow[self.workflow.index('refusing to package an unsigned release APK'):])
        self.assertNotIn('NOTICE: Toolbox APK is unsigned.', self.workflow)

    def test_checksum_verification_works_from_dist_directory(self):
        with tempfile.TemporaryDirectory() as directory:
            dist = Path(directory) / 'dist'
            (dist / 'lib/arm64-v8a').mkdir(parents=True)
            (dist / 'lib/arm64-v8a/libkaorios_toolbox.so').write_bytes(b'toolbox')
            (dist / 'classes.dex').write_bytes(b'dex\n')
            result = subprocess.run(
                ['bash', '-euo', 'pipefail', '-c',
                 'cd "$1"; sha256sum classes.dex lib/arm64-v8a/libkaorios_toolbox.so > SHA256SUMS; sha256sum --check SHA256SUMS',
                 'test', str(dist)], capture_output=True, text=True, check=False)
            self.assertEqual(0, result.returncode, result.stdout + result.stderr)

    def test_unsigned_marker_is_checksummed_when_present(self):
        self.assertIn('sha256sum UNSIGNED-TEST.txt >> SHA256SUMS', self.package)
        with tempfile.TemporaryDirectory() as directory:
            dist = Path(directory)
            (dist / 'UNSIGNED-TEST.txt').write_text('unsigned\n')
            (dist / 'classes.dex').write_bytes(b'dex\n')
            script = ('cd "$1"; sha256sum classes.dex > SHA256SUMS; '
                      'if [[ -f UNSIGNED-TEST.txt ]]; then '
                      'sha256sum UNSIGNED-TEST.txt >> SHA256SUMS; fi; '
                      'rm UNSIGNED-TEST.txt; sha256sum --check SHA256SUMS')
            result = subprocess.run(
                ['bash', '-euo', 'pipefail', '-c', script, 'test', str(dist)],
                capture_output=True, text=True, check=False)
            self.assertNotEqual(0, result.returncode)
            self.assertIn('UNSIGNED-TEST.txt', result.stderr)

    def test_summary_does_not_reference_a_nonexistent_release_checksum(self):
        self.assertNotIn('v2.0.6.1 release notes', self.workflow)
        self.assertIn('no published release checksum exists', self.workflow)

    def test_sha256_sidecar_is_summarized_instead_of_uploaded(self):
        self.assertIn('"$fname" == *.sha256', self.upload)
        self.assertIn('SHA-256 for', self.upload)
        result = subprocess.run(
            ['bash', '-c', 'f="Kaorios-complete.tar.gz.sha256"; '
             'if [[ "$f" == *.sha256 ]]; then echo "${f%.sha256}"; fi'],
            capture_output=True, text=True, check=False)
        self.assertEqual('Kaorios-complete.tar.gz\n', result.stdout)

    def test_upload_rejects_markdown_link_injection_characters(self):
        result = subprocess.run(
            ['bash', '-euo', 'pipefail', '-c',
             "url='https://tmpfiles.org/file](https://attacker.example)'; "
             "if [[ $url == *']('* || $url == *')'* || $url == *'['* || $url == *']'* || $url == *' '* ]]; then exit 0; fi; exit 1",
             'test'], capture_output=True, text=True, check=False)
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)

    def test_upload_gate_fails_when_one_expected_file_is_missing(self):
        result = subprocess.run(
            ['bash', '-euo', 'pipefail', '-c',
             'expected=2; uploaded=1; if (( expected == 0 || uploaded != expected )); then exit 1; fi',
             'test'], capture_output=True, text=True, check=False)
        self.assertNotEqual(0, result.returncode)


if __name__ == '__main__':
    unittest.main()
