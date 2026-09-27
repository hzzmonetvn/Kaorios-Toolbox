#!/usr/bin/env python3
"""Comprehensive test suite for Android 17 SettingsProvider patcher and verifier."""
import importlib.util
import shutil
import tempfile
import unittest
from pathlib import Path

TOOLS_DIR = Path(__file__).resolve().parent


def load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


patcher = load_module("patch_settingsprovider_a17", TOOLS_DIR / "patch-settingsprovider-a17.py")
verifier = load_module("verify_settingsprovider_a17_hooks", TOOLS_DIR / "verify-settingsprovider-a17-hooks.py")

STOCK_SMALI = """\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I
    move-result v0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v1

    new-instance v2, Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    return-object v2
.end method
"""

LOW_REGISTERS_SMALI = """\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v0
    return-object p3
.end method
"""

ZERO_LOCALS_SMALI = """\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v0
    return-object p3
.end method
"""


class TestPatchSettingsProviderA17(unittest.TestCase):
    def test_stock_patches_and_verifies(self):
        patched, changed = patcher.patch(STOCK_SMALI)
        self.assertTrue(changed)
        self.assertIn("filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;", patched)
        patcher.verify(patched)

    def test_already_patched_is_idempotent(self):
        patched_once, changed1 = patcher.patch(STOCK_SMALI)
        self.assertTrue(changed1)
        patched_twice, changed2 = patcher.patch(patched_once)
        self.assertFalse(changed2)
        self.assertEqual(patched_once, patched_twice)
        patcher.verify(patched_twice)

    def test_query_hook_patched_when_query_method_present(self):
        query_smali = STOCK_SMALI + """\
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    const/4 v0, 0x0
    return-object v0
.end method
"""
        patched, changed = patcher.patch(query_smali)
        self.assertTrue(changed)
        self.assertIn("filterSettingsQuery", patched)
        patcher.verify(patched)

    def test_query_multiple_returns_and_register_aliases(self):
        query = """\
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    move-object v3, v4
    if-eqz v3, :other
    return-object v0
    :other
    return-object v1
.end method
"""
        patched, changed = patcher.patch(STOCK_SMALI + query)
        self.assertTrue(changed)
        self.assertEqual(2, patched.count(patcher.QUERY_HOOK_TARGET))
        self.assertIn("move-object v3, v4", patched)
        self.assertIn("invoke-static {v0, p1, p3, p4}", patched)
        self.assertIn("invoke-static {v1, p1, p3, p4}", patched)
        patcher.verify(patched)
        self.assertFalse(patcher.patch(patched)[1])

    def test_query_locals_and_partial_hook_rejected(self):
        query = """\
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    return-object v0
    return-object v1
.end method
"""
        patched, _ = patcher.patch(STOCK_SMALI + query)
        patcher.verify(patched)
        partial = patched.replace(
            "    invoke-static {v1, p1, p3, p4}, " + patcher.QUERY_HOOK_TARGET + "\n    move-result-object v1\n",
            "",
        )
        with self.assertRaises(ValueError):
            patcher.verify(partial)

    def test_query_unknown_layout_fails_closed(self):
        header = ".method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;\n"
        for body in (
            "    .locals 1\n.end method\n",
            "    return-object v0\n.end method\n",
            "    .locals 1\n    .registers 7\n    return-object v0\n.end method\n",
            "    .locals 1\n    .catch Ljava/lang/Exception; {:a .. :b} :handler\n    return-object v0\n.end method\n",
        ):
            with self.subTest(body=body), self.assertRaises(ValueError):
                patcher.patch(STOCK_SMALI + header + body)

    def test_corrupted_or_missing_method_raises_error(self):
        corrupted = ".class public Lcom/android/providers/settings/SettingsProvider;\n"
        with self.assertRaises(ValueError):
            patcher.patch(corrupted)

    def test_missing_device_id_anchor_raises_error(self):
        missing_anchor = """\\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    const/4 v0, 0x0
    return-object v0
.end method
"""
        with self.assertRaises(ValueError):
            patcher.patch(missing_anchor)

    def test_low_registers_bumped_safely(self):
        patched, changed = patcher.patch(LOW_REGISTERS_SMALI)
        self.assertTrue(changed)
        self.assertIn(".locals 1", patched)
        patcher.verify(patched)

    def test_zero_locals_bumped_safely(self):
        patched, changed = patcher.patch(ZERO_LOCALS_SMALI)
        self.assertTrue(changed)
        self.assertIn(".locals 1", patched)
        patcher.verify(patched)

    def test_multi_dex_tree_discovery_and_verification(self):
        temp_dir = Path(tempfile.mkdtemp(prefix="settingsprovider_test_"))
        try:
            target_file = (
                temp_dir
                / "smali_classes2"
                / "com"
                / "android"
                / "providers"
                / "settings"
                / "SettingsProvider.smali"
            )
            target_file.parent.mkdir(parents=True)
            target_file.write_text(STOCK_SMALI, encoding="utf-8")

            # Verify caller before patch fails
            with self.assertRaises(ValueError):
                verifier.verify_caller(temp_dir)

            # Patch file
            patched, changed = patcher.patch(target_file.read_text(encoding="utf-8"))
            self.assertTrue(changed)
            target_file.write_text(patched, encoding="utf-8")

            # Verify caller after patch succeeds
            found_path = verifier.verify_caller(temp_dir)
            self.assertEqual(found_path, target_file)
        finally:
            shutil.rmtree(temp_dir)

    def test_disk_fixtures(self):
        fixtures_dir = TOOLS_DIR / "fixtures" / "settingsprovider"
        stock = (fixtures_dir / "stock_settings_provider.smali").read_text(encoding="utf-8")
        patched, changed = patcher.patch(stock)
        self.assertTrue(changed)
        patcher.verify(patched)

        already = (fixtures_dir / "already_patched_settings_provider.smali").read_text(encoding="utf-8")
        patched2, changed2 = patcher.patch(already)
        self.assertFalse(changed2)
        patcher.verify(patched2)

        corrupted = (fixtures_dir / "corrupted_settings_provider.smali").read_text(encoding="utf-8")
        with self.assertRaises(ValueError):
            patcher.patch(corrupted)

        low = (fixtures_dir / "low_registers_settings_provider.smali").read_text(encoding="utf-8")
        patched3, changed3 = patcher.patch(low)
        self.assertTrue(changed3)
        self.assertIn(".locals 1", patched3)
        patcher.verify(patched3)

        zero = (fixtures_dir / "zero_locals_settings_provider.smali").read_text(encoding="utf-8")
        patched4, changed4 = patcher.patch(zero)
        self.assertTrue(changed4)
        self.assertIn(".locals 1", patched4)
        patcher.verify(patched4)

    def test_settings_verifier_rejects_structural_defects(self):
        # Hook before getDeviceId()
        hook_before_anchor = """\\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v0
    if-eqz v0, :cond_stock
    return-object v0
    :cond_stock
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v1
    return-object p3
.end method
"""
        with self.assertRaises(ValueError):
            patcher.verify(hook_before_anchor)

        # Hook after Binder.clearCallingIdentity
        hook_after_clear = """\\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    move-result-wide v0
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v0
    if-eqz v0, :cond_stock
    return-object v0
    :cond_stock
    return-object p3
.end method
"""
        with self.assertRaises(ValueError):
            patcher.verify(hook_after_clear)

        # Wrong registers {p0, p1} instead of {p1, p2}
        wrong_regs = """\\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v1
    invoke-static {p0, p1}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v0
    if-eqz v0, :cond_stock
    return-object v0
    :cond_stock
    return-object p3
.end method
"""
        with self.assertRaises(ValueError):
            patcher.verify(wrong_regs)


if __name__ == "__main__":
    unittest.main()
