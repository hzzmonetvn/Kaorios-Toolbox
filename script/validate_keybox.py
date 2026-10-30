#!/usr/bin/env python3
"""Check Keybox XML structure without printing key material or validating crypto."""
import sys
import xml.etree.ElementTree as ET
from xml.parsers import expat

MAX_BYTES = 16 * 1024 * 1024


class KeyboxError(ValueError):
    pass


def validate(data):
    if len(data) > MAX_BYTES:
        raise KeyboxError("RESPONSE_TOO_LARGE")
    prefix = data[:4096].lstrip(b"\xef\xbb\xbf \t\r\n")
    if not prefix:
        raise KeyboxError("EMPTY_RESPONSE")
    if prefix[:1] in (b"{", b"["):
        raise KeyboxError("JSON_INSTEAD_OF_XML")
    if prefix.lower().startswith((b"<!doctype html", b"<html")):
        raise KeyboxError("HTML_INSTEAD_OF_XML")
    if not prefix.startswith(b"<"):
        raise KeyboxError("UNKNOWN_RESPONSE")

    builder = ET.TreeBuilder()
    parser = expat.ParserCreate()
    parser.StartElementHandler = builder.start
    parser.EndElementHandler = builder.end
    parser.CharacterDataHandler = builder.data

    def reject(*args):
        raise KeyboxError("UNSAFE_XML")

    parser.StartDoctypeDeclHandler = reject
    parser.EntityDeclHandler = reject
    parser.ExternalEntityRefHandler = reject
    parser.SetParamEntityParsing(expat.XML_PARAM_ENTITY_PARSING_NEVER)
    try:
        parser.Parse(data, True)
        root = builder.close()
    except expat.ExpatError:
        raise KeyboxError("MALFORMED_XML") from None
    if root.tag != "AndroidAttestation":
        raise KeyboxError("INVALID_ROOT")
    boxes = root.findall("Keybox")
    if not boxes:
        raise KeyboxError("NO_KEYBOX_ENTRIES")

    def count(parent, tag, actual, code):
        fields = parent.findall(tag)
        if not fields:
            return
        value = (fields[0].text or "").strip()
        if len(fields) != 1 or not value.isascii() or not value.isdecimal():
            raise KeyboxError(code)
        if value.lstrip("0") != str(actual):
            raise KeyboxError(code)

    count(root, "NumberOfKeyboxes", len(boxes), "INVALID_KEYBOX_COUNT")
    algorithms = []
    for box in boxes:
        for key in box.findall("Key"):
            algorithm = key.get("algorithm", "").upper()
            if algorithm not in ("EC", "ECDSA", "RSA"):
                continue
            private = key.findall("PrivateKey")
            chains = key.findall("CertificateChain")
            if len(private) != 1 or len(chains) != 1:
                raise KeyboxError("INCOMPLETE_KEY_ENTRY")
            certs = chains[0].findall("Certificate")
            if not certs:
                raise KeyboxError("INCOMPLETE_KEY_ENTRY")
            for element in private + certs:
                if (list(element) or not (element.text or "").strip()
                        or element.get("format", "pem").lower() != "pem"):
                    raise KeyboxError("INCOMPLETE_KEY_ENTRY")
            count(chains[0], "NumberOfCertificates", len(certs), "INVALID_CERTIFICATE_COUNT")
            algorithms.append("EC" if algorithm == "ECDSA" else algorithm)
    if not algorithms:
        raise KeyboxError("NO_USABLE_KEYS")
    return algorithms


def validate_file(path):
    with open(path, "rb") as source:
        return validate(source.read(MAX_BYTES + 1))


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit("Usage: python3 script/validate_keybox.py <Keybox.xml>")
    try:
        algorithms = validate_file(sys.argv[1])
    except KeyboxError as error:
        sys.exit(str(error))
    except OSError:
        sys.exit("FILE_READ_ERROR")
    print(f"STRUCTURE_VALID: EC={algorithms.count('EC')} RSA={algorithms.count('RSA')}; crypto not checked")
