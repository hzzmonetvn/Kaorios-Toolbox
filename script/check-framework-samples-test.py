#!/usr/bin/env python3
"""Unit tests for check-framework-samples.py."""

import importlib.util
import os
from pathlib import Path
import shutil
import subprocess
import sys
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
        self.assertEqual(res["status"], "FOUND")
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
        self.assertEqual(res["status"], "FOUND")
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
        self.assertEqual(res["status"], "FOUND")
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
        self.assertEqual(res["status"], "FOUND")
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
        self.assertEqual(res["status"], "FOUND")
        self.assertEqual(res["overload_count"], 2)

    def test_raw_archive_is_not_class_not_found(self):
        root = Path(self.temp_dir) / "os4-a17"
        root.mkdir()
        (root / "framework.jar").write_bytes(b"raw")
        data = run_audit(self.temp_dir)["os4-a17"]
        self.assertEqual("RAW_ARCHIVE_NOT_DECOMPILED", data["status"])
        self.assertEqual("RAW_ARCHIVE_NOT_DECOMPILED", data["computer_engine"]["status"])
        for strict, expected in [(False, 0), (True, 1)]:
            command = [sys.executable, str(SCRIPT_PATH), "--sample-dir", self.temp_dir]
            if strict:
                command.append("--strict")
            result = subprocess.run(command, capture_output=True, text=True)
            self.assertEqual(expected, result.returncode)
            self.assertIn("RAW_ARCHIVE_NOT_DECOMPILED", result.stdout)
            self.assertNotIn("NOT_FOUND", result.stdout)

    def test_missing_dataset_and_decompiled_missing_class_are_distinct(self):
        root = Path(self.temp_dir) / "os4-a17"
        root.mkdir()
        (root / "Instrumentation.smali").write_text(".class public Landroid/app/Instrumentation;\n")
        data = run_audit(self.temp_dir)
        self.assertEqual("FOUND", data["os4-a17"]["status"])
        self.assertEqual("NOT_FOUND", data["os4-a17"]["computer_engine"]["status"])
        self.assertEqual("SAMPLE_MISSING", data["miui14-a13"]["status"])
        result = subprocess.run([sys.executable, str(SCRIPT_PATH), "--sample-dir", str(root / "absent"), "--strict"], capture_output=True)
        self.assertEqual(1, result.returncode)

    def test_leaf_path_requires_same_array_and_only_debug_between(self):
        valid = "aput-object v1, v2, v3\n.line 42\n.local v2, \"chain\":[Ljava/security/cert/Certificate;\nreturn-object v2"
        self.assertTrue(cfs.populated_leaf(valid))
        for invalid in [valid.replace("return-object v2", "return-object v3"),
                        valid.replace(".line 42", "move-object v2, v4"),
                        valid.replace(".line 42", ":join"),
                        "aput-object v1, v2, v3\nreturn-object v4\nreturn-object v2"]:
            self.assertFalse(cfs.populated_leaf(invalid))

    def test_conflicting_copies_report_unsupported_analysis(self):
        root = Path(self.temp_dir)
        for index in (1, 2):
            child = root / str(index)
            child.mkdir()
            (child / "ComputerEngine.smali").write_text(f".class public Ldifferent{index};")
        self.assertEqual("UNSUPPORTED_ANALYSIS", audit_computer_engine(root)["status"])


if __name__ == "__main__":
    unittest.main()
