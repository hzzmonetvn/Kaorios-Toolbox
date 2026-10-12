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
        original = dex([HOOK, ROM])
        existing = self.unpacked / 'classes2.dex'
        existing.write_bytes(original)
        with self.assertRaisesRegex(ValueError, 'would remove.*class merge/import'):
            planner.plan_patch(self.unpacked, self.incoming)
        self.assertEqual(original, existing.read_bytes())

    def test_duplicate_payload_class_outside_slot_is_rejected(self):
        for existing_hook in (False, True):
            with self.subTest(replace=existing_hook):
                (self.unpacked / 'classes2.dex').write_bytes(dex([POLICY]))
                if existing_hook:
                    (self.unpacked / 'classes3.dex').write_bytes(dex([HOOK]))
                with self.assertRaisesRegex(ValueError, 'duplicates.*class merge/import'):
                    planner.plan_patch(self.unpacked, self.incoming)

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
