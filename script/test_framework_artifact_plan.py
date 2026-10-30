#!/usr/bin/env python3
"""Ensure whole-DEX planning preserves ROM classes and never duplicates payload classes."""
import importlib.util
import os
from pathlib import Path
import struct
import subprocess
import tempfile
import unittest

spec = importlib.util.spec_from_file_location('planner', Path(__file__).with_name('patch-framework-a17-plan.py'))
planner = importlib.util.module_from_spec(spec)
spec.loader.exec_module(planner)

ACTIVITY = 'Landroid/app/ActivityThread;'
HOOK = 'Landroid/security/kaorios/KaoriosHook;'
POLICY = 'Landroid/security/kaorios/settings/AdvancedPolicyClient;'
ROM = 'Landroid/app/UnrelatedRomClass;'
ROM2 = 'Landroid/app/AnotherUnrelatedRomClass;'


def dex(descriptors):
    """Synthetic descriptor tables for the planner, not an executable DEX artifact."""
    count = len(descriptors)
    strings_off = 0x70
    types_off = strings_off + count * 4
    classes_off = types_off + count * 4
    data = bytearray(classes_off + count * 32)
    data[:8] = b'dex\n035\0'
    struct.pack_into('<II', data, 0x38, count, strings_off)
    struct.pack_into('<II', data, 0x40, count, types_off)
    struct.pack_into('<II', data, 0x60, count, classes_off)
    for index, descriptor in enumerate(descriptors):
        struct.pack_into('<I', data, strings_off + index * 4, len(data))
        struct.pack_into('<I', data, types_off + index * 4, index)
        struct.pack_into('<I', data, classes_off + index * 32, index)
        encoded = descriptor.encode()
        data.extend(bytes([len(encoded)]) + encoded + b'\0')
    return bytes(data)


class ArtifactPathGuardTest(unittest.TestCase):
    def test_input_alias_cannot_be_used_as_output(self):
        scripts = ('patch-framework-a17-artifact.sh', 'patch-services-a17-artifact.sh')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'input.jar').write_bytes(b'stock copy')
            (root / 'tool.jar').touch()
            (root / 'payload.dex').touch()
            (root / 'alias').mkdir()
            (root / 'linked.jar').symlink_to(root / 'input.jar')
            os.link(root / 'input.jar', root / 'hardlinked.jar')
            for name in scripts:
                for output in (root / 'alias/../input.jar', root / 'linked.jar', root / 'hardlinked.jar'):
                    with self.subTest(script=name, output=output.name):
                        arguments = ['bash', str(Path(__file__).with_name(name)), '--input', str(root / 'input.jar'),
                                     '--output', str(output), '--baksmali', str(root / 'tool.jar'),
                                     '--smali', str(root / 'tool.jar')]
                        if name.startswith('patch-framework'):
                            arguments.extend(['--kaorios-dex', str(root / 'payload.dex')])
                        result = subprocess.run(arguments, capture_output=True, text=True, timeout=5)
                        self.assertNotEqual(0, result.returncode)
                        self.assertIn('Input and output', result.stderr)
                        self.assertEqual(b'stock copy', (root / 'input.jar').read_bytes())


class FrameworkArtifactPlanTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.unpacked = self.root / 'unpacked'
        self.unpacked.mkdir()
        (self.unpacked / 'classes.dex').write_bytes(dex([ACTIVITY, ROM]))
        self.incoming = self.root / 'payload.dex'
        self.incoming.write_bytes(dex([HOOK, POLICY]))

    def test_safe_append_keeps_legacy_api(self):
        for payload in (None, self.incoming):
            result = planner.plan_patch(self.unpacked, payload)
            self.assertEqual('append', result['kaorios_action'])
            self.assertEqual('classes2.dex', result['kaorios_slot'])

    def test_payload_only_slot_can_be_replaced(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([HOOK]))
        result = planner.plan_patch(self.unpacked, self.incoming)
        self.assertEqual('replace', result['kaorios_action'])
        self.assertEqual('classes2.dex', result['kaorios_slot'])

    def test_replacement_without_payload_is_rejected(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([HOOK]))
        with self.assertRaisesRegex(ValueError, '--kaorios-dex'):
            planner.plan_patch(self.unpacked)

    def test_mixed_replacement_never_removes_rom_classes(self):
        original = dex([HOOK, ROM2])
        existing = self.unpacked / 'classes2.dex'
        existing.write_bytes(original)
        result = planner.plan_patch(self.unpacked, self.incoming)
        self.assertEqual('merge', result['kaorios_action'])
        self.assertEqual('classes2.dex', result['kaorios_slot'])
        self.assertEqual(original, existing.read_bytes())

    def test_verify_merged_classes(self):
        before = self.root / 'before.dex'
        before.write_bytes(dex([HOOK, ROM]))
        incoming = self.incoming
        merged_ok = self.root / 'merged_ok.dex'
        merged_ok.write_bytes(dex([ROM, HOOK, POLICY]))
        planner.verify_merged_classes(merged_ok, before, incoming)

        # Missing ROM class fails
        merged_no_rom = self.root / 'merged_no_rom.dex'
        merged_no_rom.write_bytes(dex([HOOK, POLICY]))
        with self.assertRaisesRegex(ValueError, 'lost 1 existing ROM classes'):
            planner.verify_merged_classes(merged_no_rom, before, incoming)

        # Missing payload class fails
        merged_no_payload = self.root / 'merged_no_payload.dex'
        merged_no_payload.write_bytes(dex([ROM, HOOK]))
        with self.assertRaisesRegex(ValueError, 'missing 1 incoming payload classes'):
            planner.verify_merged_classes(merged_no_payload, before, incoming)

    def test_payload_spread_across_slots_is_planned_without_losing_rom(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([POLICY, ROM2]))
        (self.unpacked / 'classes3.dex').write_bytes(dex([HOOK]))
        result = planner.plan_patch(self.unpacked, self.incoming)
        self.assertEqual('classes3.dex', result['kaorios_slot'])
        self.assertEqual(['classes.dex', 'classes2.dex', 'classes3.dex'], result['modified_dexes'])
        self.assertEqual(sorted([POLICY, ROM2]), result['expected_classes']['classes2.dex'])
        self.assertEqual(sorted([HOOK]), result['expected_classes']['classes3.dex'])

        trees = self.root / 'trees'
        payload = self.root / 'payload_smali'
        for dex_name, classes in (('classes2.dex', [POLICY, ROM2]), ('classes3.dex', [HOOK])):
            tree = trees / dex_name
            tree.mkdir(parents=True)
            for desc in classes:
                path = tree / (desc[1:-1] + '.smali')
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text('.class public ' + desc + '\n# old\n')
        payload.mkdir()
        for desc in (HOOK, POLICY):
            path = payload / (desc[1:-1] + '.smali')
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text('.class public ' + desc + '\n# new\n')
        planner.import_payload(result, trees, payload)
        self.assertIn('# new', (trees / 'classes2.dex' / 'android/security/kaorios/settings/AdvancedPolicyClient.smali').read_text())
        self.assertIn('# new', (trees / 'classes3.dex' / 'android/security/kaorios/KaoriosHook.smali').read_text())
        self.assertFalse((trees / 'classes3.dex' / 'AdvancedPolicyClient.smali').exists())

    def test_duplicate_hooks_across_dexes_are_rejected(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([HOOK, ROM]))
        (self.unpacked / 'classes3.dex').write_bytes(dex([HOOK, POLICY]))
        with self.assertRaisesRegex(ValueError, 'duplicate class definition'):
            planner.plan_patch(self.unpacked, self.incoming)

    def test_same_caller_payload_owner_is_listed_once(self):
        (self.unpacked / 'classes.dex').write_bytes(dex([ACTIVITY, ROM, HOOK]))
        result = planner.plan_patch(self.unpacked, self.incoming)
        self.assertEqual(['classes.dex'], result['modified_dexes'])

    def test_payload_cannot_replace_caller(self):
        self.incoming.write_bytes(dex([HOOK, ACTIVITY]))
        with self.assertRaisesRegex(ValueError, 'must not replace ActivityThread'):
            planner.plan_patch(self.unpacked, self.incoming)

    def test_exact_descriptor_import_preserves_namespace_neighbors(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([HOOK, ROM2]))
        result = planner.plan_patch(self.unpacked, self.incoming)
        trees = self.root / 'trees'
        payload = self.root / 'payload_smali'
        payload.mkdir()
        for desc in (HOOK, POLICY):
            path = payload / (desc[1:-1] + '.smali')
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text('.class public ' + desc + '\n# new\n')
        owner = trees / 'classes2.dex'
        owner.mkdir(parents=True)
        neighbor = owner / 'OEM.smali'
        neighbor.write_text('.class public Landroid/security/kaorios/OEM;\n# retained\n')
        old = owner / (HOOK[1:-1] + '.smali')
        old.parent.mkdir(parents=True)
        old.write_text('.class public ' + HOOK + '\n# old\n')
        planner.import_payload(result, trees, payload)
        self.assertTrue((old).exists())
        self.assertIn('# new', old.read_text())
        self.assertIn('# retained', neighbor.read_text())

    def test_strict_parser_rejects_duplicate_class_definitions(self):
        with self.assertRaisesRegex(ValueError, 'invalid DEX'):
            planner.get_dex_classes(dex([HOOK, HOOK]), strict=True)

    def test_strict_parser_rejects_unbounded_uleb128(self):
        data = bytearray(dex([HOOK]))
        string_offset = struct.unpack_from('<I', data, 0x70)[0]
        data[string_offset:string_offset + 6] = b'\x80' * 6
        with self.assertRaisesRegex(ValueError, 'invalid DEX'):
            planner.get_dex_classes(bytes(data), strict=True)

    def test_callee_requires_public_static_implementation(self):
        for flags in ('public', 'private static', 'public static native', 'public static abstract'):
            with self.subTest(flags=flags), self.assertRaisesRegex(ValueError, 'public static'):
                planner.validate_kaorios_hook_smali('.class public ' + HOOK + '\n.method ' + flags + ' initActivityThread(Ljava/lang/Object;)V\n.end method\n')
        planner.validate_kaorios_hook_smali('.class public ' + HOOK + '\n.method public static initActivityThread(Ljava/lang/Object;)V\n.locals 0\nreturn-void\n.end method\n')

    def test_verify_plan_checks_retention_and_untouched_hashes(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([ROM2]))
        result = planner.plan_patch(self.unpacked, self.incoming)
        (self.unpacked / result['kaorios_slot']).write_bytes(self.incoming.read_bytes())
        planner.verify_plan(result, self.unpacked)
        (self.unpacked / 'classes.dex').write_bytes(dex([ACTIVITY]))
        with self.assertRaisesRegex(ValueError, 'class inventory mismatch'):
            planner.verify_plan(result, self.unpacked)
        (self.unpacked / 'classes.dex').write_bytes(dex([ACTIVITY, ROM]))
        (self.unpacked / 'classes2.dex').write_bytes(dex([POLICY]))
        with self.assertRaisesRegex(ValueError, 'untouched DEX.*hash mismatch'):
            planner.verify_plan(result, self.unpacked)

    def test_services_planner_rejects_malformed_unrelated_dex(self):
        spec = importlib.util.spec_from_file_location('services_plan', Path(__file__).with_name('patch-dex-artifact-plan.py'))
        services = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(services)
        (self.unpacked / 'classes2.dex').write_bytes(b'invalid DEX')
        with self.assertRaisesRegex(ValueError, 'invalid DEX'):
            services.find_owners(self.unpacked, [ACTIVITY])

    def test_payload_must_define_kaorios_hook(self):
        self.incoming.write_bytes(dex([POLICY]))
        with self.assertRaisesRegex(ValueError, 'does not define KaoriosHook'):
            planner.plan_patch(self.unpacked, self.incoming)

    def test_malformed_non_owner_dex_is_rejected(self):
        for data in (b'not a DEX', dex([ROM])[:-2]):
            with self.subTest(data_size=len(data)):
                (self.unpacked / 'classes2.dex').write_bytes(data)
                with self.assertRaisesRegex(ValueError, 'invalid DEX'):
                    planner.plan_patch(self.unpacked, self.incoming)

    def test_malformed_payload_is_rejected(self):
        self.incoming.write_bytes(dex([HOOK])[:-2])
        with self.assertRaisesRegex(ValueError, 'invalid DEX'):
            planner.plan_patch(self.unpacked, self.incoming)

    def test_empty_dex_class_inventory_is_valid(self):
        (self.unpacked / 'classes2.dex').write_bytes(dex([]))
        self.assertEqual('classes3.dex', planner.plan_patch(self.unpacked, self.incoming)['kaorios_slot'])


if __name__ == '__main__':
    unittest.main()
