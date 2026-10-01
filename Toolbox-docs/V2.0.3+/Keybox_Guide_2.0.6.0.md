# Keybox Hub: download, import and validation

[Tiếng Việt](Keybox_Guide_2.0.6.0_VI.md)

## Supported XML

The root must be `AndroidAttestation`, with at least one direct `Keybox` child and one complete supported `Key`. EC-only, RSA-only and combined documents are supported. `EC` and `ECDSA` normalize to EC; algorithm names are case-insensitive. Missing RSA or missing EC is acceptable. Unknown algorithms do not contribute usable keys; they may accompany a complete supported key.

Each declared supported key requires exactly one nonblank `PrivateKey`, exactly one `CertificateChain`, and at least one nonblank direct `Certificate`. A broken declared RSA entry makes the candidate invalid even when its EC entry is complete. PEM `format` may be absent or `pem`, case-insensitively.

Optional `NumberOfKeyboxes` and `NumberOfCertificates` must each occur at most once in their own scope, contain a positive integer and match the corresponding direct child count. Namespaced roots are not part of this contract.

UTF-8 declarations, BOM, LF/CRLF, indentation, multiline PEM, comments before/inside the root, Vietnamese comments and literal `&` inside comments are supported. DOCTYPE and entity declarations are rejected. Input is limited to 16 MiB. Do not remove security checks to accept a download.

## Structure and cryptography

Structural validation does not prove that a PEM key or certificate is usable. The framework separately checks PEM decoding, EC SEC1/PKCS#8, RSA PKCS#1/PKCS#8, X.509 parsing, private/public key matching and certificate-chain signatures. Sanitizing comments/formatting must preserve decoded PEM bytes.

A valid Hub document must not become `MALFORMED_XML` merely because an Android XML implementation lacks a parser configuration feature. XML syntax, parser configuration, structural errors and crypto failures are distinct stages.

## Download and last-known-good data

Keybox requests use `User-Agent: KaoriosToolbox/1.0` and XML Accept headers. HTTP 2xx alone is insufficient: the staged response is classified and structurally validated before publishing. JSON, HTML, empty responses, unknown text, truncation, oversized input and insecure redirects are rejected. A valid XML body can use an absent Content-Type, `text/plain` or `application/octet-stream`.

Invalid remote data preserves the previous **valid** local Keybox and its update marker. The marker advances only after a valid candidate is published; `keyboxChanged` remains false on failure, so the failed candidate is not auto-applied and the next refresh can retry. An existing malformed file is not a usable fallback. Manual paste/import and automatic apply validate the same structural contract.

If other data changed but Keybox failed, show a partial-update warning and explain that the previous Keybox was kept. If nothing changed, explain that Keybox could not be updated and the old one remains in use. With no usable fallback, show failure. A warning must not be presented as a clean successful update.

## Check your own file

```bash
python3 script/validate_keybox.py /path/to/Keybox.xml
```

Exit 0 means **structure valid**, not crypto/device certification. Output contains algorithm counts only. Exit 1 prints a safe error code, without XML, DeviceID, private keys or certificate PEM. Keep your Keybox local; do not attach it to issues or commit it.

| Code | Meaning / action |
|---|---|
| `JSON_INSTEAD_OF_XML`, `HTML_INSTEAD_OF_XML`, `EMPTY_RESPONSE`, `UNKNOWN_RESPONSE` | Download is not the expected XML; retry or check the endpoint. |
| `MALFORMED_XML` | XML syntax is broken or truncated; obtain a complete file. |
| `UNSAFE_XML` | DOCTYPE/entity input is prohibited. |
| `INVALID_ROOT`, `INVALID_KEYBOX_COUNT`, `INVALID_CERTIFICATE_COUNT` | Root or scoped count is invalid. |
| `INCOMPLETE_KEY_ENTRY`, `NO_KEYBOX_ENTRIES`, `NO_USABLE_KEYS` | Required supported entries are absent or incomplete. |
| `RESPONSE_TOO_LARGE`, `FILE_READ_ERROR` | Size limit or local file access failed. |

`python3 script/validate_toolbox_data.py Toolbox-data` also checks `Keybox.xml` when present. This repository currently publishes JSON data without a tracked Keybox file. Synthetic structural tests do not establish crypto validity or runtime attestation. ROM patch sample evidence remains separate from device validation.
