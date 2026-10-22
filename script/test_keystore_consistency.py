#!/usr/bin/env python3
"""Keystore leaf/chain integration and legacy discarded-result regressions."""
import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location('patcher', Path(__file__).with_name('kaorios_patcher.py'))
patcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patcher)

STOCK = '''.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2
    const/4 v0, 0x0
    return-object v0
.end method
.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 3
    const/4 v0, 0x1
    new-array v1, v0, [Ljava/security/cert/Certificate;
    const/4 v0, 0x0
    const/4 v2, 0x0
    aput-object v2, v1, v0
    return-object v1
.end method
'''


class KeystoreConsistencyTest(unittest.TestCase):
    def test_leaf_delegates_and_retains_stock_body(self):
        result, changed = patcher.patch_keystore_spi(STOCK)
        self.assertTrue(changed)
        self.assertIn(':kaorios_certificate_stock\n\n    const/4 v0, 0x0', result)
        patcher.verify_target_content('AndroidKeyStoreSpi.smali', result)
        self.assertEqual((result, False), patcher.patch_keystore_spi(result))

    def test_old_discarded_chain_result_is_repaired(self):
        result, _ = patcher.patch_keystore_spi(STOCK)
        old = result.replace('move-result-object v1', 'move-result-object v2\n    .line 215', 1)
        with self.assertRaises(ValueError):
            patcher.verify_target_content('AndroidKeyStoreSpi.smali', old)
        repaired, changed = patcher.patch_keystore_spi(old)
        self.assertTrue(changed)
        patcher.verify_target_content('AndroidKeyStoreSpi.smali', repaired)

    def test_insufficient_locals_fail_closed(self):
        with self.assertRaisesRegex(ValueError, 'two existing local'):
            patcher.patch_keystore_spi(STOCK.replace('.locals 2', '.locals 1', 1))

    def test_method_lookup_ignores_invoke_references(self):
        result, _ = patcher.patch_keystore_spi(STOCK)
        body = patcher._extract_method_body(result,
            'engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;', 'SPI')
        self.assertTrue(body.startswith('.method'))
        self.assertIn('aput-object', body)

    def test_leaf_dataflow_tampering_is_rejected(self):
        result, _ = patcher.patch_keystore_spi(STOCK)
        with self.assertRaises(ValueError):
            patcher.verify_target_content('AndroidKeyStoreSpi.smali',
                result.replace('aget-object v0, v0, v1', 'aget-object v0, v0, v0'))

    def test_roundtrip_labels_and_debug_lines(self):
        result, _ = patcher.patch_keystore_spi(STOCK)
        result = result.replace(':kaorios_certificate_stock', ':cond_d')
        result = result.replace('    :cond_d\n', '    .line 220\n    :cond_d\n')
        patcher.verify_target_content('AndroidKeyStoreSpi.smali', result)
        self.assertEqual((result, False), patcher.patch_keystore_spi(result))

    def test_register_directive_retained(self):
        result, _ = patcher.patch_keystore_spi(STOCK.replace('.locals 2', '.registers 4', 1))
        self.assertIn('.registers 4', result)
        patcher.verify_target_content('AndroidKeyStoreSpi.smali', result)

    def test_hook_passes_spi_and_alias_for_entry_persistence(self):
        result, _ = patcher.patch_keystore_spi(STOCK)
        self.assertIn(
            'invoke-static {p0, p1, v1}, Landroid/security/kaorios/KaoriosHook;'
            '->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;'
            '[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;', result)
        patcher.verify_target_content('AndroidKeyStoreSpi.smali', result)

    def test_legacy_one_argument_hook_is_upgraded(self):
        legacy = STOCK.replace(
            '    return-object v1\n.end method',
            '    invoke-static {v1}, Landroid/security/kaorios/KaoriosHook;'
            '->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)'
            '[Ljava/security/cert/Certificate;\n'
            '    move-result-object v1\n'
            '    return-object v1\n.end method', 1)
        with self.assertRaisesRegex(ValueError, 'one-argument chain hook must be updated'):
            patcher.verify_target_content('AndroidKeyStoreSpi.smali', legacy)
        upgraded, changed = patcher.patch_keystore_spi(legacy)
        self.assertTrue(changed)
        self.assertNotIn('CertificateChainIfNeeded([Ljava/security/cert/Certificate;)', upgraded)
        patcher.verify_target_content('AndroidKeyStoreSpi.smali', upgraded)
        self.assertEqual((upgraded, False), patcher.patch_keystore_spi(upgraded))

    def test_wide_registers_fail_closed(self):
        with self.assertRaisesRegex(ValueError, 'p0/p1 exceed'):
            patcher.patch_keystore_spi(STOCK.replace('.locals 3', '.registers 18', 1))


if __name__ == '__main__':
    unittest.main()
