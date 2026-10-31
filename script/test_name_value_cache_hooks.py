#!/usr/bin/env python3
"""Settings read guards and complete framework caller planning fail closed."""
import importlib.util
from pathlib import Path
import tempfile
import unittest


def load(filename):
    spec = importlib.util.spec_from_file_location(filename.replace('.', '_'), Path(__file__).with_name(filename))
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


patcher = load('kaorios_patcher.py')
planner = load('patch-framework-a17-plan.py')
verifier = load('verify-framework-a17-hooks.py')
tree_patcher = load('patch-framework-a17-smali.py')
dex = load('test_framework_artifact_plan.py').dex
NAME = 'Settings$NameValueCache.smali'


def stock(directive='.registers 6', instructions='move-object v0, p2\n    return-object v0'):
    return ('.class private Landroid/provider/Settings$NameValueCache;\n'
            '.super Ljava/lang/Object;\n.method public ' + patcher.NAME_VALUE_METHOD + '\n'
            '    ' + directive + '\n    .param p1, "cr"\n    .line 42\n    ' + instructions + '\n.end method\n')


def caller_tree(root):
    fixtures = {
        'android/app/ActivityThread.smali': (
            '.class public Landroid/app/ActivityThread;\n.super Ljava/lang/Object;\n'
            '.method public handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V\n'
            '    .locals 0\n'
            '    iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:'
            'Landroid/app/ActivityThread$AppBindData;\n    return-void\n.end method\n'),
        'android/app/Instrumentation.smali': load('test_patcher_instrumentation_hooks.py').instrumentation(),
        'android/app/ApplicationPackageManager.smali': (
            '.class public Landroid/app/ApplicationPackageManager;\n.super Ljava/lang/Object;\n'
            '.method public hasSystemFeature(Ljava/lang/String;I)Z\n'
            '    .locals 1\n    const/4 v0, 0x0\n    return v0\n.end method\n'),
        'android/provider/Settings$NameValueCache.smali': stock(),
    }
    for relative, text in fixtures.items():
        path = root / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
    return {root / relative: text.encode() for relative, text in fixtures.items()}


class NameValueCacheTest(unittest.TestCase):
    def test_complete_tree_patch_verify_and_idempotence(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            originals = caller_tree(root)
            path, changed = tree_patcher.patch_root(root)
            self.assertTrue(changed)
            self.assertEqual(root / 'android/app/ActivityThread.smali', path)
            self.assertEqual(path, verifier.verify_caller(root))
            first = {path: path.read_bytes() for path in originals}
            self.assertTrue(all(first[path] != originals[path] for path in originals))
            for update in (False, True):
                self.assertEqual((path, False), tree_patcher.patch_root(root, update=update))
                self.assertEqual(first, {path: path.read_bytes() for path in originals})

    def test_invalid_last_owner_preserves_every_input(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            originals = caller_tree(root)
            last = root / 'android/provider' / NAME
            last.write_text(last.read_text().replace(patcher.NAME_VALUE_METHOD, 'unsupported()'))
            originals[last] = last.read_bytes()
            with self.assertRaises(ValueError):
                tree_patcher.patch_root(root)
            self.assertEqual(originals, {path: path.read_bytes() for path in originals})

    def test_duplicate_and_wrong_descriptor_callers_fail(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            caller_tree(root)
            tree_patcher.patch_root(root)
            path = root / 'android/provider' / NAME
            valid = path.read_bytes()
            path.write_bytes(valid.replace(b'Landroid/provider/Settings$NameValueCache;', b'Landroid/provider/Other;'))
            with self.assertRaisesRegex(ValueError, 'expected class descriptor'):
                verifier.verify_caller(root)
            path.write_bytes(valid)
            duplicate = root / 'classes2.dex/android/provider' / NAME
            duplicate.parent.mkdir(parents=True)
            duplicate.write_bytes(valid)
            with self.assertRaisesRegex(ValueError, 'expected exactly one'):
                verifier.verify_caller(root)

    def test_registers_locals_aliases_and_high_parameters_keep_stock_bytes(self):
        for directive, instructions in (
            ('.registers 6', 'move-object v0, v4\n    return-object v0'),
            ('.locals 2', 'move-object v0, p2\n    return-object v0'),
            ('.registers 300', 'move-object/from16 v0, p2\n    return-object v0')):
            with self.subTest(directive=directive):
                original = stock(directive, instructions)
                patched, changed = patcher.patch_name_value_cache(original)
                self.assertTrue(changed)
                self.assertIn(directive, patched)
                self.assertIn(instructions, patched)
                self.assertIn('invoke-static/range {p1 .. p3}', patched)
                self.assertLess(patched.index(patcher.NAME_VALUE_HOOK), patched.index(instructions))
                patcher.verify_target_content(NAME, patched)
                self.assertEqual((patched, False), patcher.patch_name_value_cache(patched, update=True))

    def test_partial_or_late_hook_and_missing_fallback_fail(self):
        patched, _ = patcher.patch_name_value_cache(stock())
        for broken in (patched.replace('move-result v0', 'move-result v1'),
                       patched.replace('const-string v0, "0"', 'const-string v0, "1"'),
                       patched.replace('    .line 42', '    const/4 v0, 0x0\n    .line 42'),
                       patched.replace('move-object v0, p2\n    return-object v0', 'nop')):
            for update in (False, True):
                with self.subTest(update=update, broken=broken):
                    with self.assertRaises(ValueError):
                        patcher.patch_name_value_cache(broken, update=update)

    def test_unsupported_layouts_do_not_mutate_file(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / NAME
            for text in (stock('.registers 4'), stock('.locals 0'),
                         stock(instructions=':entry\n    return-object p2'),
                         stock().replace('.method public', '.method public static')):
                path.write_text(text)
                self.assertFalse(patcher.process_files(path, '1', slow=False, update=True))
                self.assertEqual(text, path.read_text())

    def test_missing_required_caller_stops_tree_before_writing(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'android/provider' / NAME
            path.parent.mkdir(parents=True)
            original = stock()
            path.write_text(original)
            with self.assertRaisesRegex(ValueError, 'expected exactly one'):
                tree_patcher.patch_root(root)
            self.assertEqual(original, path.read_text())
            with self.assertRaises(ValueError):
                verifier.verify_caller(root)

    def test_all_caller_owners_are_planned_and_required(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            required = sorted(planner.required_caller_descriptors())
            for index, descriptor in enumerate(required):
                name = 'classes.dex' if index == 0 else f'classes{index + 1}.dex'
                (root / name).write_bytes(dex([descriptor]))
            result = planner.plan_patch(root, require_all_callers=True)
            self.assertEqual(4, len(result['caller_owners']))
            self.assertEqual(5, len(result['modified_dexes']))
            (root / 'classes4.dex').unlink()
            with self.assertRaisesRegex(ValueError, 'missing required framework caller'):
                planner.plan_patch(root, require_all_callers=True)

    def test_payload_cannot_replace_any_required_owner(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'classes.dex').write_bytes(dex(['Landroid/app/ActivityThread;']))
            incoming = root / 'payload.dex'
            incoming.write_bytes(dex([planner.KAORIOS_HOOK_DESC, 'Landroid/provider/Settings$NameValueCache;']))
            with self.assertRaisesRegex(ValueError, 'must not replace'):
                planner.plan_patch(root, incoming)


if __name__ == '__main__':
    unittest.main()
