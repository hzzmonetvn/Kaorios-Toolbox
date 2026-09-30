#!/usr/bin/env python3
"""Comprehensive test suite for Android 17 services.jar package-visibility patcher and verifier."""
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


patcher = load_module("patch_services_a17", TOOLS_DIR / "patch-services-a17.py")
verifier = load_module("verify_services_a17_hooks", TOOLS_DIR / "verify-services-a17-hooks.py")

STOCK_7_PARAM_SMALI = """\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .registers 10
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z
    .param p7, "filterArchived"    # Z

    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z
    move-result v0
    if-eqz v0, :cond_stock

    const/4 v0, 0x0
    return v0

    :cond_stock
    const/4 v0, 0x0
    return v0
.end method
"""

STOCK_3_PARAM_SMALI = """\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 10
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    const/4 v0, 0x0
    return v0
.end method
"""

LOW_REGISTERS_SMALI = """\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .registers 8
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z
    .param p7, "filterArchived"    # Z

    const/4 v0, 0x0
    return v0
.end method
"""

ZERO_LOCALS_SMALI = """\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .locals 0
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z
    .param p7, "filterArchived"    # Z

    const/4 v0, 0x0
    return v0
.end method
"""


class TestPatchServicesA17(unittest.TestCase):
    def test_stock_7_param_patches_and_verifies(self):
        patched, changed = patcher.patch(STOCK_7_PARAM_SMALI)
        self.assertTrue(changed)
        self.assertIn("shouldHideAppListForCaller(ILjava/lang/String;I)Z", patched)
        self.assertIn("p5", patched)
        patcher.verify(patched)

    def test_stock_3_param_patches_and_verifies(self):
        patched, changed = patcher.patch(STOCK_3_PARAM_SMALI)
        self.assertTrue(changed)
        self.assertIn("shouldHideAppListForCaller(ILjava/lang/String;I)Z", patched)
        self.assertIn("p3", patched)
        patcher.verify(patched)

    def test_already_patched_is_idempotent(self):
        patched_once, changed1 = patcher.patch(STOCK_7_PARAM_SMALI)
        self.assertTrue(changed1)
        patched_twice, changed2 = patcher.patch(patched_once)
        self.assertFalse(changed2)
        self.assertEqual(patched_once, patched_twice)
        patcher.verify(patched_twice)

    def test_corrupted_or_missing_method_raises_error(self):
        corrupted = ".class public Lcom/android/server/pm/ComputerEngine;\n"
        with self.assertRaises(ValueError):
            patcher.patch(corrupted)

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
        temp_dir = Path(tempfile.mkdtemp(prefix="services_test_"))
        try:
            target_file = (
                temp_dir
                / "smali_classes2"
                / "com"
                / "android"
                / "server"
                / "pm"
                / "ComputerEngine.smali"
            )
            target_file.parent.mkdir(parents=True)
            target_file.write_text(STOCK_7_PARAM_SMALI, encoding="utf-8")

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
        fixtures_dir = TOOLS_DIR / "fixtures" / "services"
        stock = (fixtures_dir / "stock_computer_engine.smali").read_text(encoding="utf-8")
        patched, changed = patcher.patch(stock)
        self.assertTrue(changed)
        patcher.verify(patched)

        already = (fixtures_dir / "already_patched_computer_engine.smali").read_text(encoding="utf-8")
        patched2, changed2 = patcher.patch(already)
        self.assertFalse(changed2)
        patcher.verify(patched2)

        corrupted = (fixtures_dir / "corrupted_computer_engine.smali").read_text(encoding="utf-8")
        with self.assertRaises(ValueError):
            patcher.patch(corrupted)

        low = (fixtures_dir / "low_registers_computer_engine.smali").read_text(encoding="utf-8")
        patched3, changed3 = patcher.patch(low)
        self.assertTrue(changed3)
        self.assertIn(".locals 1", patched3)
        patcher.verify(patched3)

        zero = (fixtures_dir / "zero_locals_computer_engine.smali").read_text(encoding="utf-8")
        patched4, changed4 = patcher.patch(zero)
        self.assertTrue(changed4)
        self.assertIn(".locals 1", patched4)
        patcher.verify(patched4)

    def test_services_verifier_rejects_structural_defects(self):
        # Wrong UID register (p1 instead of p2)
        wrong_uid = """\\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .locals 2
    if-eqz p1, :cond_skip
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_skip
    invoke-static {p1, v0, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :cond_skip
    const/4 v0, 0x1
    return v0
    :cond_skip
    const/4 v0, 0x0
    return v0
.end method
"""
        with self.assertRaises(ValueError):
            patcher.verify(wrong_uid)

        # Wrong return value (0 instead of 1)
        wrong_return = """\\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .locals 2
    if-eqz p1, :cond_skip
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_skip
    invoke-static {p2, v0, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :cond_skip
    const/4 v0, 0x0
    return v0
    :cond_skip
    const/4 v0, 0x0
    return v0
.end method
"""
        with self.assertRaises(ValueError):
            patcher.verify(wrong_return)

    def test_high_register_visibility_preserves_stock_physical_slots(self):
        stock = STOCK_7_PARAM_SMALI.replace('.registers 10', '.registers 28').replace(
            'invoke-static {p2}', 'invoke-static/range {p2 .. p2}')
        patched, changed = patcher.patch(stock)
        self.assertTrue(changed)
        patcher.verify(patched)
        self.assertIn('move-object/16 v20, p0', patched)
        self.assertIn('invoke-static/range {v28 .. v30}', patched)
        self.assertIn('invoke-static/range {v22 .. v22}, Landroid/os/Process;', patched)
        with self.assertRaises(ValueError):
            patcher.verify(patched.replace('move/16 v30, v25', 'move/16 v30, v24'))


if __name__ == "__main__":
    unittest.main()
