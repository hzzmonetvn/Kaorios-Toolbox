#!/usr/bin/env python3
"""Unit tests for check-framework-samples.py."""

import importlib.util
import os
from pathlib import Path
import shutil
import tempfile
import unittest

SCRIPT_PATH = Path(__file__).with_name("check-framework-samples.py")
spec = importlib.util.spec_from_file_location("check_framework_samples", SCRIPT_PATH)
cfs = importlib.util.module_from_spec(spec)
spec.loader.exec_module(cfs)

audit_apps_filter = cfs.audit_apps_filter
audit_computer_engine = cfs.audit_computer_engine
audit_instrumentation = cfs.audit_instrumentation
audit_keystore_spi = cfs.audit_keystore_spi
audit_settings_provider = cfs.audit_settings_provider
find_sample_base = cfs.find_sample_base
run_audit = cfs.run_audit


class TestCheckFrameworkSamples(unittest.TestCase):
    def setUp(self):
        self.temp_dir = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)

    def test_find_sample_base_nonexistent(self):
        result = find_sample_base(os.path.join(self.temp_dir, "nonexistent"))
        self.assertIsNone(result)

    def test_find_sample_base_custom(self):
        custom = os.path.join(self.temp_dir, "samples")
        os.makedirs(custom, exist_ok=True)
        result = find_sample_base(custom)
        self.assertEqual(result, custom)

    def test_audit_computer_engine_synthetic(self):
        gen_dir = os.path.join(self.temp_dir, "test-gen")
        os.makedirs(gen_dir, exist_ok=True)
        ce_path = os.path.join(gen_dir, "ComputerEngine.smali")
        with open(ce_path, "w", encoding="utf-8") as f:
            f.write(
                ".class public Lcom/android/server/pm/ComputerEngine;\n"
                ".method public shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z\n"
                ".end method\n"
            )
        res = audit_computer_engine(gen_dir)
        self.assertEqual(res["status"], "OK")
        self.assertTrue(res["has_iizz"])
        self.assertEqual(res["overload_count"], 1)

    def test_audit_settings_provider_synthetic(self):
        gen_dir = os.path.join(self.temp_dir, "test-gen", "providers", "settings")
        os.makedirs(gen_dir, exist_ok=True)
        sp_path = os.path.join(gen_dir, "SettingsProvider.smali")
        with open(sp_path, "w", encoding="utf-8") as f:
            f.write(
                ".class public Lcom/android/providers/settings/SettingsProvider;\n"
                ".method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;\n"
                "    invoke-virtual {p0}, Landroid/content/ContentProvider;->getDeviceId()I\n"
                "    invoke-static {p3}, Landroid/provider/Settings;->getRequestingUserId(Landroid/os/Bundle;)I\n"
                ".end method\n"
            )
        res = audit_settings_provider(os.path.join(self.temp_dir, "test-gen"))
        self.assertEqual(res["status"], "OK")
        self.assertTrue(res["has_getDeviceId"])
        self.assertTrue(res["has_getRequestingUserId"])

    def test_audit_apps_filter_synthetic(self):
        gen_dir = os.path.join(self.temp_dir, "test-gen")
        os.makedirs(gen_dir, exist_ok=True)
        base_path = os.path.join(gen_dir, "AppsFilterBase.smali")
        impl_path = os.path.join(gen_dir, "AppsFilterImpl.smali")
        with open(base_path, "w", encoding="utf-8") as f:
            f.write(
                ".class public abstract Lcom/android/server/pm/AppsFilterBase;\n"
                ".method public shouldFilterApplication()Z\n"
                ".end method\n"
            )
        with open(impl_path, "w", encoding="utf-8") as f:
            f.write(
                ".class public Lcom/android/server/pm/AppsFilterImpl;\n"
                "# Inherits shouldFilterApplication\n"
            )
        res = audit_apps_filter(gen_dir)
        self.assertEqual(res["status"], "OK")
        self.assertTrue(res["base_declared"])
        self.assertFalse(res["impl_declared"])

    def test_audit_keystore_spi_synthetic(self):
        gen_dir = os.path.join(self.temp_dir, "test-gen")
        os.makedirs(gen_dir, exist_ok=True)
        ks_path = os.path.join(gen_dir, "AndroidKeyStoreSpi.smali")
        with open(ks_path, "w", encoding="utf-8") as f:
            f.write(
                ".class public Landroid/security/keystore2/AndroidKeyStoreSpi;\n"
                ".method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;\n"
                "    if-nez v2, :cond_e\n"
                "    return-object v1\n"
                "    :cond_e\n"
                "    aput-object v2, v3, v4\n"
                "    return-object v3\n"
                ".end method\n"
            )
        res = audit_keystore_spi(gen_dir)
        self.assertEqual(res["status"], "OK")
        self.assertEqual(res["return_count"], 2)
        self.assertTrue(res["has_populated_array_path"])

    def test_audit_instrumentation_synthetic(self):
        gen_dir = os.path.join(self.temp_dir, "test-gen")
        os.makedirs(gen_dir, exist_ok=True)
        inst_path = os.path.join(gen_dir, "Instrumentation.smali")
        with open(inst_path, "w", encoding="utf-8") as f:
            f.write(
                ".class public Landroid/app/Instrumentation;\n"
                ".method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;\n"
                "    return-object v0\n"
                ".end method\n"
                ".method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;\n"
                "    return-object v0\n"
                ".end method\n"
            )
        res = audit_instrumentation(gen_dir)
        self.assertEqual(res["status"], "OK")
        self.assertEqual(res["overload_count"], 2)


if __name__ == "__main__":
    unittest.main()
