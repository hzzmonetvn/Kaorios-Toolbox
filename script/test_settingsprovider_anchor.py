#!/usr/bin/env python3
"""Regression checks for SettingsProvider invoke/result anchor boundaries."""
import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location("patcher", Path(__file__).with_name("patch-settingsprovider-a17.py"))
patcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patcher)

STOCK = """.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    invoke-direct {{p0}}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
{gap}    move-result v0
    return-object p3
.end method
"""


class AnchorBoundaryTest(unittest.TestCase):
    def test_debug_separators_preserve_result(self):
        for gap in ("", "\n", "\n    .line 479\n", "\n    # separator\n    .line 479\n"):
            with self.subTest(gap=gap):
                result, _ = patcher.patch(STOCK.format(gap=gap))
                self.assertLess(result.index("move-result v0"), result.index(patcher.HOOK_TARGET))
                patcher.verify(result)

    def test_debug_line_before_stock_label(self):
        result, _ = patcher.patch(STOCK.format(gap=""))
        result = result.replace("    :cond_kaorios_settings_stock\n", "    .line 480\n    :cond_kaorios_settings_stock\n", 1)
        patcher.verify(result)

    def test_split_result_is_rejected(self):
        result, _ = patcher.patch(STOCK.format(gap=""))
        broken = result.replace("    move-result v0\n", "", 1)
        broken = broken.replace("    :cond_kaorios_settings_stock\n", "    :cond_kaorios_settings_stock\n    move-result v0\n", 1)
        with self.assertRaises(ValueError):
            patcher.verify(broken)


if __name__ == "__main__":
    unittest.main()
