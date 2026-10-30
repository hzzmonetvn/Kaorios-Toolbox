#!/usr/bin/env python3
"""Public facade ABI checks without executing payload code."""
import importlib.util
from pathlib import Path
import tempfile
import unittest

spec = importlib.util.spec_from_file_location('payload_abi', Path(__file__).with_name('verify-payload-abi.py'))
abi = importlib.util.module_from_spec(spec)
spec.loader.exec_module(abi)


class PayloadAbiTest(unittest.TestCase):
    def check(self, method, call):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'KaoriosHook.smali').write_text(
                f'.class public {abi.OWNER}\n.super Ljava/lang/Object;\n{method}\n')
            (root / 'Caller.smali').write_text(call)
            return abi.verify_calls(root, root)

    def test_public_static_synchronized_is_accepted(self):
        self.assertEqual(1, self.check('.method public static declared-synchronized initSystemServer()V',
            f'invoke-static {{}}, {abi.OWNER}->initSystemServer()V'))

    def test_missing_or_inaccessible_overload_fails(self):
        for method in ('.method public static chain()V', '.method private static chain(I)V',
                       '.method public chain(I)V'):
            with self.subTest(method=method), self.assertRaises(ValueError):
                self.check(method, f'invoke-static {{v0}}, {abi.OWNER}->chain(I)V')

    def test_comments_and_strings_are_not_calls(self):
        call = f'invoke-static {{}}, {abi.OWNER}->missing()V'
        self.assertEqual(0, self.check('.method public static present()V',
            f'# {call}\nconst-string v0, "{call}"'))

    def test_abstract_or_native_method_fails(self):
        for flags in ('public static abstract', 'public static native'):
            with self.subTest(flags=flags), self.assertRaisesRegex(ValueError, 'lacks public static'):
                self.check(f'.method {flags} chain()V', f'invoke-static {{}}, {abi.OWNER}->chain()V')

    def test_duplicate_method_rejected(self):
        with self.assertRaisesRegex(ValueError, 'duplicate payload method'):
            self.check('.method public static x()V\n.method public static x()V', '')


if __name__ == '__main__':
    unittest.main()
