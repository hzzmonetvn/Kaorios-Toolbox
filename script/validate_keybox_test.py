#!/usr/bin/env python3
"""Synthetic structural fixtures contain no PEM keys or certificates."""
import unittest
import tempfile
from pathlib import Path
from validate_keybox import validate_file
from validate_keybox import KeyboxError, MAX_BYTES, validate


def key(algorithm):
    return (
        f'<Key algorithm="{algorithm}"><PrivateKey format="pem">TEST ONLY</PrivateKey>'
        '<CertificateChain><NumberOfCertificates>3</NumberOfCertificates>'
        + '<Certificate format="pem">TEST ONLY</Certificate>' * 3
        + '</CertificateChain></Key>')


def document(keys=None):
    return ('<?xml version="1.0" encoding="UTF-8"?>\n'
            '<!-- Keybox Hub\n Tổng hợp & xác thực / Play Integrity & Attestation -->\n'
            '<AndroidAttestation><NumberOfKeyboxes>1</NumberOfKeyboxes><Keybox>'
            + (key('ecdsa') + key('rsa') if keys is None else keys)
            + '</Keybox><!-- Tổng hợp -->\n</AndroidAttestation>').encode()


class KeyboxStructureTests(unittest.TestCase):
    def rejected(self, data, code):
        with self.assertRaises(KeyboxError) as result:
            validate(data)
        self.assertEqual(str(result.exception), code)

    def test_hub_comments_bom_crlf(self):
        for data in (document(), b'\xef\xbb\xbf' + document(), document().replace(b'\n', b'\r\n')):
            self.assertEqual(validate(data), ['EC', 'RSA'])

    def test_single_algorithms_and_unknown_extra(self):
        for alg, expected in [('ec', 'EC'), ('EC', 'EC'), ('ECDSA', 'EC'), ('rsa', 'RSA')]:
            self.assertEqual(validate(document(key(alg))), [expected])
        self.assertEqual(validate(document(key('ec') + '<Key algorithm="unknown"/>')), ['EC'])
        self.rejected(document('<Key algorithm="unknown"/>'), 'NO_USABLE_KEYS')

    def test_broken_supported_entry(self):
        self.rejected(document(key('ec') + '<Key algorithm="rsa"/>'), 'INCOMPLETE_KEY_ENTRY')
        self.rejected(document().replace(b'TEST ONLY', b'', 1), 'INCOMPLETE_KEY_ENTRY')
        self.rejected(document().replace(b'<Certificate format="pem">TEST ONLY', b'<Certificate format="pem">', 1), 'INCOMPLETE_KEY_ENTRY')

    def test_counts(self):
        self.rejected(document().replace(b'>1</NumberOfKeyboxes>', b'>2</NumberOfKeyboxes>'), 'INVALID_KEYBOX_COUNT')
        self.rejected(document().replace(b'>3</NumberOfCertificates>', b'>2</NumberOfCertificates>'), 'INVALID_CERTIFICATE_COUNT')
        self.rejected(document().replace(b'<NumberOfKeyboxes>1', b'<NumberOfKeyboxes>x'), 'INVALID_KEYBOX_COUNT')
        self.rejected(document().replace(b'<Keybox>', b'<NumberOfKeyboxes>1</NumberOfKeyboxes><Keybox>'), 'INVALID_KEYBOX_COUNT')

    def test_security_and_syntax(self):
        self.rejected(b'<!DOCTYPE AndroidAttestation [<!ENTITY x SYSTEM "file:///etc/passwd">]><AndroidAttestation/>', 'UNSAFE_XML')
        self.rejected(document()[:-10], 'MALFORMED_XML')
        self.rejected(b'<Other/>', 'INVALID_ROOT')
        self.rejected(b'<AndroidAttestation/>', 'NO_KEYBOX_ENTRIES')

    def test_bounded_file_and_cli_output(self):
        import subprocess
        import sys
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / "Keybox.xml"
            path.write_bytes(document())
            self.assertEqual(validate_file(path), ['EC', 'RSA'])
            command = [sys.executable, str(Path(__file__).with_name('validate_keybox.py')), str(path)]
            result = subprocess.run(command, capture_output=True, text=True)
            self.assertEqual(result.returncode, 0)
            self.assertNotIn('TEST ONLY', result.stdout + result.stderr)
            path.write_bytes(b'{"private":"DO NOT DISPLAY"}')
            result = subprocess.run(command, capture_output=True, text=True)
            self.assertEqual(result.returncode, 1)
            self.assertEqual(result.stderr.strip(), 'JSON_INSTEAD_OF_XML')

    def test_asset_gate_optional_keybox(self):
        import json
        import subprocess
        import sys
        with tempfile.TemporaryDirectory() as folder:
            directory = Path(folder)
            pif = {name: 'test' for name in ['MANUFACTURER', 'MODEL', 'DEVICE', 'PRODUCT', 'FINGERPRINT']}
            pif.update(SECURITY_PATCH='2026-10-01', DEVICE_INITIAL_SDK_INT='33')
            for name, data in [('Pif-props.json', pif), ('app-props.json', {'test.package': {}}),
                               ('device-model.json', {'devices': [{'name': 'test'}]})]:
                (directory / name).write_text(json.dumps(data))
            command = [sys.executable, str(Path(__file__).with_name('validate_toolbox_data.py')), folder]
            self.assertEqual(subprocess.run(command, capture_output=True).returncode, 0)
            (directory / 'Keybox.xml').write_bytes(document(key('ec')))
            self.assertEqual(subprocess.run(command, capture_output=True).returncode, 0)
            (directory / 'Keybox.xml').write_bytes(b'<broken>')
            result = subprocess.run(command, capture_output=True, text=True)
            self.assertEqual(result.returncode, 1)
            self.assertEqual(result.stderr.strip(), 'ERROR Keybox.xml: MALFORMED_XML')

    def test_response_classification(self):
        for data, code in [(b'{"error":"secret"}', 'JSON_INSTEAD_OF_XML'), (b'[]', 'JSON_INSTEAD_OF_XML'),
                           (b'<!DOCTYPE html>', 'HTML_INSTEAD_OF_XML'), (b'<HtMl/>', 'HTML_INSTEAD_OF_XML'),
                           (b' \r\n', 'EMPTY_RESPONSE'), (b'', 'EMPTY_RESPONSE'), (b'Service unavailable', 'UNKNOWN_RESPONSE')]:
            self.rejected(data, code)
        self.rejected(b'x' * (MAX_BYTES + 1), 'RESPONSE_TOO_LARGE')


if __name__ == '__main__':
    unittest.main()
