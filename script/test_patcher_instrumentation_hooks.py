#!/usr/bin/env python3
"""Instrumentation hooks must be executable, not comment text."""
import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location('patcher', Path(__file__).with_name('kaorios_patcher.py'))
patcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patcher)


def instrumentation(first_body='    const/4 v0, 0x0\n    return-object v0\n',
                    second_body='    const/4 v0, 0x0\n    return-object v0\n'):
    return ('.class public Landroid/app/Instrumentation;\n'
            '.super Ljava/lang/Object;\n'
            '.method public newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;\n'
            '    .locals 2\n' + first_body +
            '.end method\n'
            '.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;\n'
            '    .locals 2\n' + second_body +
            '.end method\n')


class InstrumentationHookTest(unittest.TestCase):
    def test_comment_only_hook_is_not_already_patched(self):
        original = instrumentation('    # invoke-static {p2}, '
                                   'Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V\n'
                                   '    const/4 v0, 0x0\n'
                                   '    return-object v0\n')
        result, changed = patcher.patch_instrumentation(original)
        self.assertTrue(changed)
        patcher.verify_target_content('Instrumentation.smali', result)
        executable = patcher.INSTRUMENTATION_HOOK_RE.findall(result)
        self.assertEqual(2, len(executable))

    def test_comment_only_hook_cannot_satisfy_verifier(self):
        original = instrumentation()
        result, _ = patcher.patch_instrumentation(original)
        real_hook = '    invoke-static {p2}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V'
        self.assertIn(real_hook, result)
        commented = result.replace(real_hook, '    # ' + real_hook.strip(), 1)
        with self.assertRaisesRegex(ValueError, 'initContext hooks'):
            patcher.verify_target_content('Instrumentation.smali', commented)

    def test_missing_hook_before_one_return_fails_verification(self):
        original = instrumentation()
        result, _ = patcher.patch_instrumentation(original)
        hook = '    invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V'
        self.assertIn(hook, result)
        marker = '.method public newApplication(Ljava/lang/ClassLoader;'
        head, tail = result.split(marker, 1)
        tail = tail.replace(hook + '\n\n    return-object v0', '    return-object v0', 1)
        tail = tail.replace('    .locals 2\n', '    .locals 2\n' + hook + '\n', 1)
        moved = head + marker + tail
        with self.assertRaisesRegex(ValueError, 'directly dominate'):
            patcher.verify_target_content('Instrumentation.smali', moved)


if __name__ == '__main__':
    unittest.main()
