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


SAMPLE_BUILD_STOCK = """\
.class public final Landroid/os/Build;
.super Ljava/lang/Object;

.field public static final BRAND:Ljava/lang/String;
.field public static final DEVICE:Ljava/lang/String;
.field public static final MODEL:Ljava/lang/String;
.field public static final TYPE:Ljava/lang/String;
.field public static final TIME:J
"""

SAMPLE_BUILD_ALREADY_PATCHED = """\
.class public final Landroid/os/Build;
.super Ljava/lang/Object;

.field public static BRAND:Ljava/lang/String; = null
.field public static DEVICE:Ljava/lang/String; = null
.field public static MODEL:Ljava/lang/String; = null
.field public static TYPE:Ljava/lang/String; = null
.field public static TIME:J
"""

SAMPLE_BUILD_VERSION_STOCK = """\
.class public static final Landroid/os/Build$VERSION;
.super Ljava/lang/Object;

.field public static final RELEASE:Ljava/lang/String;
.field public static final SECURITY_PATCH:Ljava/lang/String;
"""

SAMPLE_BUILD_VERSION_ALREADY_PATCHED = """\
.class public static final Landroid/os/Build$VERSION;
.super Ljava/lang/Object;

.field public static RELEASE:Ljava/lang/String;
.field public static SECURITY_PATCH:Ljava/lang/String;
"""


class PatchBuildTest(unittest.TestCase):
    def _load_patcher(self):
        import importlib.util
        spec = importlib.util.spec_from_file_location("patcher", str(PATCHER_PY))
        mod = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(mod)
        return mod

    def test_patch_build_removes_final_and_sets_null(self):
        mod = self._load_patcher()
        out, changed = mod.patch_build(SAMPLE_BUILD_STOCK)
        self.assertTrue(changed)
        self.assertNotIn("final BRAND", out)
        self.assertIn("= null", out)
        self.assertNotIn("final TIME", out)

    def test_patch_build_already_patched_returns_false(self):
        mod = self._load_patcher()
        out, changed = mod.patch_build(SAMPLE_BUILD_ALREADY_PATCHED)
        self.assertFalse(changed, "Already-patched Build.smali must return changed=False, not ALREADY_PATCHED falsely")

    def test_patch_build_unknown_layout_raises(self):
        mod = self._load_patcher()
        with self.assertRaises(ValueError):
            mod.patch_build(".class public final Landroid/os/Build;\n.field public static SOMETHING:I\n")

    def test_patch_build_version_removes_final(self):
        mod = self._load_patcher()
        out, changed = mod.patch_build_version(SAMPLE_BUILD_VERSION_STOCK)
        self.assertTrue(changed)
        self.assertNotIn("final RELEASE", out)
        self.assertNotIn("final SECURITY_PATCH", out)

    def test_patch_build_version_already_patched_returns_false(self):
        mod = self._load_patcher()
        out, changed = mod.patch_build_version(SAMPLE_BUILD_VERSION_ALREADY_PATCHED)
        self.assertFalse(changed)

    def test_patch_build_version_unknown_layout_raises(self):
        mod = self._load_patcher()
        with self.assertRaises(ValueError):
            mod.patch_build_version(".class public static final Landroid/os/Build$VERSION;\n.field public static SOMETHING:I\n")


class VerifyTargetContentMethodBodyTest(unittest.TestCase):
    """Verifier must check hook is inside the target method, not just anywhere in the file."""

    def _load_patcher(self):
        import importlib.util
        spec = importlib.util.spec_from_file_location("patcher", str(PATCHER_PY))
        mod = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(mod)
        return mod

    def _smali_with_hook_outside_method(self, method_anchor, method_body_lines, hook_line):
        """Build smali where hook appears in a comment header but NOT inside the target method."""
        return (
            f".class public Landroid/test/Fake;\n"
            f"# {hook_line}\n"   # hook text in a comment, outside any method
            f".method public {method_anchor}\n"
            f"    .locals 1\n"
            + "\n".join(f"    {l}" for l in method_body_lines)
            + "\n.end method\n"
        )

    def test_keystore_keypair_hook_outside_method_raises(self):
        mod = self._load_patcher()
        content = self._smali_with_hook_outside_method(
            "generateKeyPair()Ljava/security/KeyPair;",
            ["const/4 v0, 0x0", "return-object v0"],
            "KaoriosHook;->initGenerateSoftwareKeyPair"
        )
        with self.assertRaises(ValueError, msg="Hook outside method body must raise ValueError"):
            mod.verify_target_content("AndroidKeyStoreKeyPairGeneratorSpi.smali", content)

    def test_keystore_spi_hook_outside_method_raises(self):
        mod = self._load_patcher()
        content = self._smali_with_hook_outside_method(
            "engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;",
            ["const/4 v0, 0x0", "return-object v0"],
            "KaoriosHook;->CertificateChainIfNeeded"
        )
        with self.assertRaises(ValueError):
            mod.verify_target_content("AndroidKeyStoreSpi.smali", content)

    def test_instrumentation_hook_outside_both_methods_raises(self):
        mod = self._load_patcher()
        content = (
            ".class public Landroid/test/Fake;\n"
            "# KaoriosHook;->initContext\n"
            ".method public newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;\n"
            "    .locals 1\n"
            "    return-object v0\n"
            ".end method\n"
            ".method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;\n"
            "    .locals 1\n"
            "    return-object v0\n"
            ".end method\n"
        )
        with self.assertRaises(ValueError):
            mod.verify_target_content("Instrumentation.smali", content)

    def test_apk_manager_hook_outside_method_raises(self):
        mod = self._load_patcher()
        content = (
            ".class public Landroid/app/ApplicationPackageManager;\n"
            "# KaoriosHook;->hasSystemFeature\n"
            ".method public hasSystemFeature(Ljava/lang/String;I)Z\n"
            "    .locals 1\n"
            "    const/4 v0, 0x0\n"
            "    return v0\n"
            ".end method\n"
        )
        with self.assertRaises(ValueError):
            mod.verify_target_content("ApplicationPackageManager.smali", content)


SAMPLE_KEYSTORE_SPI_TWO_RETURNS = """\
.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4

    if-eqz p1, :cond_null

    aput-object v0, v1, v2
    return-object v1

    :cond_null
    aput-object v0, v3, v2
    return-object v3
.end method
"""

SAMPLE_INSTRUMENTATION_TWO_RETURNS = """\
.method public newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 2

    if-eqz p1, :cond_null

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    return-object p2

    :cond_null
    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 2

    if-eqz p1, :cond_null2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    return-object p3

    :cond_null2
    return-object v0
.end method
"""


class PatchMultiReturnPathTest(unittest.TestCase):
    def _load_patcher(self):
        import importlib.util
        spec = importlib.util.spec_from_file_location("patcher", str(PATCHER_PY))
        mod = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(mod)
        return mod

    def test_keystore_spi_both_return_paths_patched(self):
        mod = self._load_patcher()
        content = SAMPLE_KEYSTORE_SPI_TWO_RETURNS
        patched, changed = mod.patch_keystore_spi(content)
        self.assertTrue(changed)
        # Collect all return-object lines; each must be preceded by the hook call
        lines = patched.split('\n')
        for i, line in enumerate(lines):
            if 'return-object' in line and 'KaoriosHook' not in line:
                # Check the preceding non-empty lines contain the hook
                preceding = '\n'.join(lines[max(0, i - 4):i])
                self.assertIn(
                    'CertificateChainIfNeeded', preceding,
                    f"return-object at line {i} not preceded by CertificateChainIfNeeded hook"
                )

    def test_keystore_spi_idempotent(self):
        mod = self._load_patcher()
        patched, _ = mod.patch_keystore_spi(SAMPLE_KEYSTORE_SPI_TWO_RETURNS)
        _, changed = mod.patch_keystore_spi(patched)
        self.assertFalse(changed)

    def test_instrumentation_both_return_paths_patched(self):
        mod = self._load_patcher()
        content = SAMPLE_INSTRUMENTATION_TWO_RETURNS
        patched, changed = mod.patch_instrumentation(content)
        self.assertTrue(changed)
        lines = patched.split('\n')
        for i, line in enumerate(lines):
            if 'return-object' in line and 'KaoriosHook' not in line:
                preceding = '\n'.join(lines[max(0, i - 4):i])
                self.assertIn(
                    'initContext', preceding,
                    f"return-object at line {i} not preceded by initContext hook"
                )

    def test_instrumentation_idempotent(self):
        mod = self._load_patcher()
        content = SAMPLE_INSTRUMENTATION_TWO_RETURNS
        patched, _ = mod.patch_instrumentation(content)
        _, changed = mod.patch_instrumentation(patched)
        self.assertFalse(changed)


if __name__ == "__main__":
    unittest.main()
