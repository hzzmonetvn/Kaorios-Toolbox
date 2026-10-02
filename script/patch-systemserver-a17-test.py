#!/usr/bin/env python3
"""Comprehensive test suite for Android 17 SystemServer smali patcher and verifier."""
import importlib.util
import unittest
from pathlib import Path

TOOLS_DIR = Path(__file__).parent
FIXTURES_DIR = TOOLS_DIR / "fixtures" / "services"


def load_patcher():
    spec = importlib.util.spec_from_file_location("systemserver_patcher", TOOLS_DIR / "patch-systemserver-a17.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class SystemServerPatcherTest(unittest.TestCase):
    def setUp(self):
        self.patcher = load_patcher()
        self.stock = (FIXTURES_DIR / "stock_system_server.smali").read_text(encoding="utf-8")
        self.already_patched = (FIXTURES_DIR / "already_patched_system_server.smali").read_text(encoding="utf-8")

    def test_stock_patch_and_verify(self):
        patched = self.patcher.patch(self.stock)
        self.assertIn("KaoriosHook;->initSystemServer()V", patched)
        self.patcher.verify(patched)

    def test_locals_form_patch_and_verify(self):
        locals_form = self.stock.replace(".registers 3", ".locals 2")
        patched = self.patcher.patch(locals_form)
        self.assertIn("KaoriosHook;->initSystemServer()V", patched)
        self.patcher.verify(patched)

    def test_already_patched_idempotent(self):
        # Should not double inject
        patched = self.patcher.patch(self.already_patched)
        self.assertEqual(patched.count("KaoriosHook;->initSystemServer()V"), 1)
        self.patcher.verify(patched)

    def test_missing_anchor_fails(self):
        no_anchor = self.stock.replace("invoke-static {}, Landroid/os/Looper;->loop()V", "nop")
        with self.assertRaises(ValueError) as ctx:
            self.patcher.patch(no_anchor)
        self.assertIn("anchor", str(ctx.exception).lower())

    def test_ambiguous_anchor_fails(self):
        two_anchors = self.stock.replace(
            "invoke-static {}, Landroid/os/Looper;->loop()V",
            "invoke-static {}, Landroid/os/Looper;->loop()V\n    invoke-static {}, Landroid/os/Looper;->loop()V"
        )
        with self.assertRaises(ValueError) as ctx:
            self.patcher.patch(two_anchors)
        self.assertIn("ambiguous", str(ctx.exception).lower())

    def test_missing_run_method_fails(self):
        no_run = self.stock.replace(".method public run()V", ".method public notRun()V")
        with self.assertRaises(ValueError) as ctx:
            self.patcher.patch(no_run)
        self.assertIn("target systemserver.run()v method not found", str(ctx.exception).lower())

    def test_duplicate_hook_fails_verify(self):
        dup = self.already_patched + "\n.method public other()V\n    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V\n    return-void\n.end method\n"
        with self.assertRaises(ValueError) as ctx:
            self.patcher.verify(dup)
        self.assertIn("expected exactly one", str(ctx.exception).lower())

    def test_wrong_class_fails(self):
        wrong_class = self.stock.replace("Lcom/android/server/SystemServer;", "Lcom/android/server/Other;")
        with self.assertRaises(ValueError) as ctx:
            self.patcher.patch(wrong_class)
        self.assertIn("expected .class", str(ctx.exception).lower())

    def test_hook_after_anchor_fails_verify(self):
        bad_order = self.stock.replace(
            "invoke-static {}, Landroid/os/Looper;->loop()V",
            "invoke-static {}, Landroid/os/Looper;->loop()V\n    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V"
        )
        with self.assertRaises(ValueError) as ctx:
            self.patcher.verify(bad_order)
        self.assertIn("must precede looper.loop()", str(ctx.exception).lower())


if __name__ == "__main__":
    unittest.main()
