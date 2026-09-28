#!/usr/bin/env python3
"""Regression tests for Kaorios A17 Auto-Patcher fail-closed behavior, verifiers, and status distinction."""
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
PATCHER_PY = SCRIPT_DIR / "kaorios_patcher_a17.py"


SAMPLE_ACTIVITY_THREAD_STOCK = """
.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 3
    const/4 v0, 0x0
    iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    return-void
.end method
"""

SAMPLE_ACTIVITY_THREAD_ALREADY_PATCHED = """
.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 3
    const/4 v0, 0x0
    iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
    return-void
.end method
"""

SAMPLE_ACTIVITY_THREAD_UNSUPPORTED = """
.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 3
    const/4 v0, 0x0
    # missing anchor assignment
    return-void
.end method
"""

SAMPLE_SETTINGS_PROVIDER_STOCK = """
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v0
    const/4 v0, 0x0
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    const/4 v0, 0x0
    return-object v0
.end method
"""


class KaoriosPatcherA17Test(unittest.TestCase):
    def test_single_file_stock_patch_and_verify(self):
        with tempfile.TemporaryDirectory() as td:
            f = Path(td) / "ActivityThread.smali"
            f.write_text(SAMPLE_ACTIVITY_THREAD_STOCK, encoding="utf-8")
            res = subprocess.run([sys.executable, str(PATCHER_PY), str(f), "--mode", "1", "--no-delay"], capture_output=True, text=True)
            self.assertEqual(res.returncode, 0, res.stdout + res.stderr)
            self.assertIn("Status: PATCHED", res.stdout)
            patched_content = f.read_text(encoding="utf-8")
            self.assertIn("KaoriosHook;->initActivityThread", patched_content)

    def test_single_file_already_patched(self):
        with tempfile.TemporaryDirectory() as td:
            f = Path(td) / "ActivityThread.smali"
            f.write_text(SAMPLE_ACTIVITY_THREAD_ALREADY_PATCHED, encoding="utf-8")
            res = subprocess.run([sys.executable, str(PATCHER_PY), str(f), "--mode", "1", "--no-delay"], capture_output=True, text=True)
            self.assertEqual(res.returncode, 0, res.stdout + res.stderr)
            self.assertIn("ĐÃ ĐƯỢC PATCH TỪ TRƯỚC", res.stdout)
            self.assertIn("Verifier PASS", res.stdout)

    def test_single_file_unsupported_layout_fails_closed(self):
        with tempfile.TemporaryDirectory() as td:
            f = Path(td) / "ActivityThread.smali"
            f.write_text(SAMPLE_ACTIVITY_THREAD_UNSUPPORTED, encoding="utf-8")
            res = subprocess.run([sys.executable, str(PATCHER_PY), str(f), "--mode", "1", "--no-delay"], capture_output=True, text=True)
            self.assertNotEqual(res.returncode, 0, "Unsupported layout must exit non-zero")
            self.assertIn("BỐ CỤC KHÔNG HỖ TRỢ", res.stdout)
            # Ensure unsafe content was not written
            self.assertEqual(f.read_text(encoding="utf-8"), SAMPLE_ACTIVITY_THREAD_UNSUPPORTED)

    def test_settings_provider_call_and_query_patched(self):
        with tempfile.TemporaryDirectory() as td:
            f = Path(td) / "SettingsProvider.smali"
            f.write_text(SAMPLE_SETTINGS_PROVIDER_STOCK, encoding="utf-8")
            res = subprocess.run([sys.executable, str(PATCHER_PY), str(f), "--mode", "1", "--no-delay"], capture_output=True, text=True)
            self.assertEqual(res.returncode, 0, res.stdout + res.stderr)
            self.assertIn("Status: PATCHED", res.stdout)
            patched_content = f.read_text(encoding="utf-8")
            self.assertIn("filterSettingsCall", patched_content)
            self.assertIn("filterSettingsQueryResult", patched_content)

    def test_directory_scan_fail_closed_if_any_target_fails(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            (root / "android/app").mkdir(parents=True)
            (root / "android/app/ActivityThread.smali").write_text(SAMPLE_ACTIVITY_THREAD_UNSUPPORTED, encoding="utf-8")
            (root / "com/android/providers/settings").mkdir(parents=True)
            (root / "com/android/providers/settings/SettingsProvider.smali").write_text(SAMPLE_SETTINGS_PROVIDER_STOCK, encoding="utf-8")

            res = subprocess.run([sys.executable, str(PATCHER_PY), str(root), "--mode", "1", "--no-delay"], capture_output=True, text=True)
            self.assertNotEqual(res.returncode, 0, "Directory scan with unsupported layout must fail overall")
            self.assertIn("THẤT BẠI", res.stdout)


SAMPLE_APP_PKG_MANAGER_STOCK_LOCALS = """\
.class public Landroid/app/ApplicationPackageManager;
.super Ljava/lang/Object;

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 2
    const/4 v0, 0x0
    const/4 v1, 0x1
    return v0
.end method
"""

SAMPLE_APP_PKG_MANAGER_STOCK_REGISTERS = """\
.class public Landroid/app/ApplicationPackageManager;
.super Ljava/lang/Object;

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 5
    const/4 v0, 0x0
    const/4 v1, 0x1
    return v0
.end method
"""


class PatchAppPkgManagerRegisterTest(unittest.TestCase):
    def _patch_and_get(self, smali_in):
        import importlib.util, sys as _sys
        spec = importlib.util.spec_from_file_location("patcher", str(PATCHER_PY))
        mod = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(mod)
        out, changed = mod.patch_app_pkg_manager(smali_in)
        return out, changed

    def test_locals_count_bumped_and_scratch_is_new_slot(self):
        out, changed = self._patch_and_get(SAMPLE_APP_PKG_MANAGER_STOCK_LOCALS)
        self.assertTrue(changed)
        self.assertIn(".locals 3", out)
        # new slot is v2 (old locals=2 → v{2})
        self.assertIn("move-result-object v2", out)
        self.assertIn("if-eqz v2", out)
        self.assertIn("{v2}", out)
        self.assertIn("move-result v2", out)
        self.assertIn("return v2", out)

    def test_registers_count_bumped_and_scratch_is_new_local(self):
        # .registers 5, params=3 (p0,p1,p2) → locals=2, new local after bump = v{6-3-1}=v2
        out, changed = self._patch_and_get(SAMPLE_APP_PKG_MANAGER_STOCK_REGISTERS)
        self.assertTrue(changed)
        self.assertIn(".registers 6", out)
        self.assertIn("move-result-object v2", out)

    def test_idempotent_already_patched(self):
        out1, _ = self._patch_and_get(SAMPLE_APP_PKG_MANAGER_STOCK_LOCALS)
        out2, changed2 = self._patch_and_get(out1)
        self.assertFalse(changed2)
        self.assertEqual(out1, out2)

    def test_raises_if_method_missing(self):
        with self.assertRaises(ValueError):
            self._patch_and_get(".class public Landroid/app/ActivityThread;\n")


if __name__ == "__main__":
    unittest.main()
