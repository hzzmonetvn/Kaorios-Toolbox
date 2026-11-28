#!/usr/bin/env python3
"""Pure-Python DEX inspector, baksmali/smali runner, and transactional JAR/APK packager."""

from __future__ import annotations

from dataclasses import dataclass
import glob
import os
from pathlib import Path
import re
import shutil
import struct
import subprocess
import tempfile
import zipfile

from kaorios_hook_spec import PAYLOAD_REQUIRED_CLASSES


class DexPackagingError(RuntimeError):
    """Raised on DEX parsing, baksmali/smali execution, or JAR/APK packaging errors."""


@dataclass(frozen=True)
class DexIndex:
    """Minimal structural index parsed directly from a DEX binary."""

    api_hint: int
    version: int
    defined_classes: frozenset[str]
    defined_methods: frozenset[tuple[str, str, str]]  # (class_desc, method_name, proto_desc)
    referenced_methods: frozenset[tuple[str, str, str]]


@dataclass(frozen=True)
class SmaliToolchain:
    """Resolved baksmali/smali execution commands."""

    mode: str  # "classpath" | "jars" | "binaries"
    classpath: str | None = None
    baksmali_jar: str | None = None
    smali_jar: str | None = None
    baksmali_bin: str | None = None
    smali_bin: str | None = None


_DEX_MAGIC_RE = re.compile(rb"^dex\n(\d{3})\x00$")
_VERSION_TO_API = {
    35: 23,
    37: 25,
    38: 26,
    39: 28,
    40: 34,
    41: 35,
}
_DEX_ENTRY_RE = re.compile(r"^classes(\d*)\.dex$")


def _read_uleb128(data: bytes, offset: int) -> tuple[int, int]:
    result = 0
    shift = 0
    while True:
        if offset >= len(data):
            raise DexPackagingError("Truncated ULEB128 in DEX class_data_item")
        byte = data[offset]
        offset += 1
        result |= (byte & 0x7F) << shift
        if (byte & 0x80) == 0:
            break
        shift += 7
    return result, offset


def _decode_mutf8_string(data: bytes, string_data_off: int) -> str:
    _, pos = _read_uleb128(data, string_data_off)
    end = data.find(b"\x00", pos)
    if end < 0:
        raise DexPackagingError("Unterminated DEX string item")
    return data[pos:end].decode("utf-8", errors="replace")


def inspect_dex(data: bytes) -> DexIndex:
    """Parse DEX header, class_defs, defined methods, and method_ids without Java."""
    if len(data) < 0x70:
        raise DexPackagingError("DEX buffer shorter than 112-byte header")
    m = _DEX_MAGIC_RE.match(data[:8])
    if not m:
        raise DexPackagingError(f"Invalid DEX magic: {data[:8]!r}")
    version = int(m.group(1))
    api_hint = _VERSION_TO_API.get(version, 34)

    (
        _checksum,
        _sig,
        file_size,
        _header_size,
        endian_tag,
        _link_size,
        _link_off,
        _map_off,
        string_ids_size,
        string_ids_off,
        type_ids_size,
        type_ids_off,
        proto_ids_size,
        proto_ids_off,
        _field_ids_size,
        _field_ids_off,
        method_ids_size,
        method_ids_off,
        class_defs_size,
        class_defs_off,
        _data_size,
        _data_off,
    ) = struct.unpack_from("<I20s20I", data, 8)

    if endian_tag != 0x12345678:
        raise DexPackagingError(f"Unsupported DEX endian tag: 0x{endian_tag:08x}")
    if file_size > len(data):
        raise DexPackagingError(f"Truncated DEX: header file_size={file_size}, actual={len(data)}")

    strings: list[str] = []
    for i in range(string_ids_size):
        (s_off,) = struct.unpack_from("<I", data, string_ids_off + i * 4)
        strings.append(_decode_mutf8_string(data, s_off))

    types: list[str] = []
    for i in range(type_ids_size):
        (desc_idx,) = struct.unpack_from("<I", data, type_ids_off + i * 4)
        types.append(strings[desc_idx])

    protos: list[str] = []
    for i in range(proto_ids_size):
        _shorty_idx, ret_type_idx, params_off = struct.unpack_from("<III", data, proto_ids_off + i * 12)
        if params_off == 0:
            params_str = ""
        else:
            (plen,) = struct.unpack_from("<I", data, params_off)
            p_types = [
                types[struct.unpack_from("<H", data, params_off + 4 + j * 2)[0]]
                for j in range(plen)
            ]
            params_str = "".join(p_types)
        protos.append(f"({params_str}){types[ret_type_idx]}")

    methods: list[tuple[str, str, str]] = []
    for i in range(method_ids_size):
        class_idx, proto_idx, name_idx = struct.unpack_from("<HHI", data, method_ids_off + i * 8)
        methods.append((types[class_idx], strings[name_idx], protos[proto_idx]))

    defined_classes: set[str] = set()
    defined_methods: set[tuple[str, str, str]] = set()
    for i in range(class_defs_size):
        class_idx, _acc, _super, _ifaces, _src, _ann, class_data_off, _static = struct.unpack_from(
            "<IIIIIIII", data, class_defs_off + i * 32
        )
        cls_desc = types[class_idx]
        defined_classes.add(cls_desc)
        if class_data_off != 0:
            pos = class_data_off
            static_fields_sz, pos = _read_uleb128(data, pos)
            instance_fields_sz, pos = _read_uleb128(data, pos)
            direct_methods_sz, pos = _read_uleb128(data, pos)
            virtual_methods_sz, pos = _read_uleb128(data, pos)
            for _ in range(static_fields_sz + instance_fields_sz):
                _, pos = _read_uleb128(data, pos)
                _, pos = _read_uleb128(data, pos)
            for count in (direct_methods_sz, virtual_methods_sz):
                m_idx = 0
                for _ in range(count):
                    diff, pos = _read_uleb128(data, pos)
                    _, pos = _read_uleb128(data, pos)  # access_flags
                    _, pos = _read_uleb128(data, pos)  # code_off
                    m_idx += diff
                    defined_methods.add(methods[m_idx])

    return DexIndex(
        api_hint=api_hint,
        version=version,
        defined_classes=frozenset(defined_classes),
        defined_methods=frozenset(defined_methods),
        referenced_methods=frozenset(methods),
    )


def validate_payload_dex(payload_path: Path) -> DexIndex:
    """Validate that payload ``classes.dex`` is well-formed and defines all kept R8 symbols."""
    if not payload_path.is_file():
        raise DexPackagingError(f"Payload DEX does not exist: {payload_path}")
    dex = inspect_dex(payload_path.read_bytes())

    missing_classes: list[str] = []
    missing_methods: list[str] = []
    for cls_desc, required_methods in PAYLOAD_REQUIRED_CLASSES.items():
        if cls_desc not in dex.defined_classes:
            missing_classes.append(cls_desc)
            continue
        for m_name, m_proto in required_methods:
            if (cls_desc, m_name, m_proto) not in dex.defined_methods:
                missing_methods.append(f"{cls_desc}->{m_name}{m_proto}")

    if missing_classes or missing_methods:
        parts: list[str] = []
        if missing_classes:
            parts.append(f"missing R8-kept classes: {', '.join(missing_classes)}")
        if missing_methods:
            parts.append(f"missing R8-kept methods: {', '.join(missing_methods)}")
        raise DexPackagingError(f"Invalid payload DEX ({payload_path}): " + "; ".join(parts))
    return dex


def _dex_sort_key(name: str) -> tuple[int, str]:
    m = _DEX_ENTRY_RE.match(name)
    if not m:
        return (10**9, name)
    idx = 1 if m.group(1) == "" else int(m.group(1))
    return (idx, name)


def list_dex_entries(archive_path: Path) -> list[str]:
    """Return sorted ``classes*.dex`` entry names from a JAR/APK."""
    with zipfile.ZipFile(archive_path, "r") as zf:
        dex_names = [n for n in zf.namelist() if _DEX_ENTRY_RE.match(n)]
    return sorted(dex_names, key=_dex_sort_key)


def next_dex_slot(dex_entries: list[str]) -> str:
    """Compute the next sequential DEX slot name (e.g. ``classes6.dex``)."""
    if not dex_entries:
        return "classes.dex"
    highest = 1
    for name in dex_entries:
        m = _DEX_ENTRY_RE.match(name)
        assert m is not None
        num = 1 if m.group(1) == "" else int(m.group(1))
        if num > highest:
            highest = num
    return f"classes{highest + 1}.dex"


def index_archive_dexes(archive_path: Path) -> dict[str, DexIndex]:
    """Parse every ``classes*.dex`` in a JAR/APK and return ``{entry_name: DexIndex}``."""
    out: dict[str, DexIndex] = {}
    with zipfile.ZipFile(archive_path, "r") as zf:
        for entry in list_dex_entries(archive_path):
            out[entry] = inspect_dex(zf.read(entry))
    return out


def check_payload_collisions(
    archive_indexes: dict[str, DexIndex], payload_index: DexIndex
) -> list[str]:
    """Return sorted list of class descriptors present in both stock archive and payload DEX."""
    stock_classes: set[str] = set()
    for idx in archive_indexes.values():
        stock_classes.update(idx.defined_classes)
    return sorted(stock_classes & payload_index.defined_classes)


def find_dex_owners(
    archive_indexes: dict[str, DexIndex], target_classes: tuple[str, ...] | list[str]
) -> dict[str, list[str]]:
    """Map ``dex_entry -> [target_class_descs]`` for classes present in stock DEXes."""
    owners: dict[str, list[str]] = {}
    for cls_desc in target_classes:
        for dex_entry, dex_idx in archive_indexes.items():
            if cls_desc in dex_idx.defined_classes:
                owners.setdefault(dex_entry, []).append(cls_desc)
    return owners


def _expand_classpath(raw_cp: str) -> str:
    parts: list[str] = []
    for item in raw_cp.split(os.pathsep):
        if not item:
            continue
        if "*" in item or "?" in item:
            matched = sorted(glob.glob(item))
            if matched:
                parts.extend(matched)
            else:
                parts.append(item)
        else:
            parts.append(item)
    return os.pathsep.join(parts)


def discover_smali_toolchain() -> SmaliToolchain:
    """Resolve baksmali/smali from env vars or PATH."""
    raw_cp = os.environ.get("KAORIOS_SMALI_CLASSPATH", "").strip()
    if raw_cp:
        return SmaliToolchain(mode="classpath", classpath=_expand_classpath(raw_cp))

    baksmali_jar = os.environ.get("BAKSMALI_JAR", "").strip()
    smali_jar = os.environ.get("SMALI_JAR", "").strip()
    if baksmali_jar and smali_jar:
        return SmaliToolchain(mode="jars", baksmali_jar=baksmali_jar, smali_jar=smali_jar)

    baksmali_bin = shutil.which("baksmali")
    smali_bin = shutil.which("smali")
    if baksmali_bin and smali_bin:
        return SmaliToolchain(mode="binaries", baksmali_bin=baksmali_bin, smali_bin=smali_bin)

    raise DexPackagingError(
        "No smali/baksmali toolchain found. Set KAORIOS_SMALI_CLASSPATH (smali-3.0.x jars), "
        "BAKSMALI_JAR + SMALI_JAR, or ensure 'baksmali' and 'smali' are on PATH."
    )


def _run_smali_java(classpath: str, main_candidates: tuple[str, ...], args: list[str]) -> None:
    last_err = ""
    for main_cls in main_candidates:
        proc = subprocess.run(
            ["java", "-cp", classpath, main_cls, *args],
            capture_output=True,
            text=True,
            check=False,
        )
        if proc.returncode == 0:
            return
        msg = (proc.stderr or proc.stdout).strip()
        last_err = f"{main_cls}: {msg}"
        if "ClassNotFoundException" in msg or "Could not find or load main class" in msg:
            continue
        raise DexPackagingError(f"Tool {main_cls} failed (exit {proc.returncode}): {msg}")
    raise DexPackagingError(f"Could not run smali/baksmali main class: {last_err}")


def baksmali_disassemble(
    toolchain: SmaliToolchain, dex_path: Path, out_dir: Path, api: int | None = None
) -> None:
    """Disassemble *dex_path* into *out_dir*."""
    out_dir.mkdir(parents=True, exist_ok=True)
    args = ["disassemble", str(dex_path), "-o", str(out_dir)]
    if api is not None:
        args.extend(["--api", str(api)])
    if toolchain.mode == "classpath":
        assert toolchain.classpath is not None
        _run_smali_java(
            toolchain.classpath,
            ("com.android.tools.smali.baksmali.Main", "org.jf.baksmali.Main"),
            args,
        )
    elif toolchain.mode == "jars":
        assert toolchain.baksmali_jar is not None
        proc = subprocess.run(
            ["java", "-jar", toolchain.baksmali_jar, *args],
            capture_output=True,
            text=True,
            check=False,
        )
        if proc.returncode != 0:
            raise DexPackagingError(f"baksmali jar failed: {proc.stderr or proc.stdout}")
    else:
        assert toolchain.baksmali_bin is not None
        proc = subprocess.run(
            [toolchain.baksmali_bin, *args],
            capture_output=True,
            text=True,
            check=False,
        )
        if proc.returncode != 0:
            raise DexPackagingError(f"baksmali failed: {proc.stderr or proc.stdout}")


def smali_assemble(
    toolchain: SmaliToolchain, smali_dir: Path, out_dex: Path, api: int | None = None
) -> None:
    """Assemble *smali_dir* into *out_dex*."""
    args = ["assemble", str(smali_dir), "-o", str(out_dex)]
    if api is not None:
        args.extend(["--api", str(api)])
    if toolchain.mode == "classpath":
        assert toolchain.classpath is not None
        _run_smali_java(
            toolchain.classpath,
            ("com.android.tools.smali.smali.Main", "org.jf.smali.Main"),
            args,
        )
    elif toolchain.mode == "jars":
        assert toolchain.smali_jar is not None
        proc = subprocess.run(
            ["java", "-jar", toolchain.smali_jar, *args],
            capture_output=True,
            text=True,
            check=False,
        )
        if proc.returncode != 0:
            raise DexPackagingError(f"smali jar failed: {proc.stderr or proc.stdout}")
    else:
        assert toolchain.smali_bin is not None
        proc = subprocess.run(
            [toolchain.smali_bin, *args],
            capture_output=True,
            text=True,
            check=False,
        )
        if proc.returncode != 0:
            raise DexPackagingError(f"smali failed: {proc.stderr or proc.stdout}")


def repack_archive_with_dex_replacements(
    input_archive: Path,
    output_archive: Path,
    replaced_dexes: dict[str, bytes],
    appended_dexes: dict[str, bytes] | None = None,
    store_dex_uncompressed: bool = False,
) -> None:
    """Transactionally rewrite *input_archive* -> *output_archive* swapping/appending DEX entries."""
    if input_archive.resolve() == output_archive.resolve():
        raise DexPackagingError("--output must not overwrite --input in place")

    appended = appended_dexes or {}
    output_archive.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(
        dir=output_archive.parent, prefix=".kaorios_stage_", suffix=output_archive.suffix, delete=False
    ) as tmp:
        staged = Path(tmp.name)

    try:
        with zipfile.ZipFile(input_archive, "r") as zin, zipfile.ZipFile(staged, "w") as zout:
            for info in zin.infolist():
                if info.filename in appended:
                    raise DexPackagingError(
                        f"Appended DEX slot {info.filename!r} already exists in {input_archive}"
                    )
                payload = replaced_dexes.get(info.filename)
                data = payload if payload is not None else zin.read(info.filename)
                compress_type = (
                    zipfile.ZIP_STORED
                    if (store_dex_uncompressed and _DEX_ENTRY_RE.match(info.filename))
                    else info.compress_type
                )
                out_info = zipfile.ZipInfo(filename=info.filename, date_time=info.date_time)
                out_info.compress_type = compress_type
                out_info.external_attr = info.external_attr
                out_info.create_system = info.create_system
                out_info.flag_bits = info.flag_bits & ~0x08  # no data descriptor ambiguity
                zout.writestr(out_info, data, compress_type=compress_type)

            for slot in sorted(appended.keys(), key=_dex_sort_key):
                compress_type = zipfile.ZIP_STORED if store_dex_uncompressed else zipfile.ZIP_DEFLATED
                zout.writestr(slot, appended[slot], compress_type=compress_type)

        with zipfile.ZipFile(staged, "r") as ztest:
            bad = ztest.testzip()
            if bad is not None:
                raise DexPackagingError(f"Corrupt ZIP entry in staged output: {bad}")

        os.replace(staged, output_archive)
    except Exception:
        staged.unlink(missing_ok=True)
        raise
