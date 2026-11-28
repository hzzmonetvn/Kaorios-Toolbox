#!/usr/bin/env python3
"""Create a deterministic ZIP bundle of the unified Kaorios Toolbox patcher."""

from __future__ import annotations

import argparse
from pathlib import Path
import sys
import zipfile


SCRIPT_DIR = Path(__file__).resolve().parent
BUNDLE_FILES: tuple[str, ...] = (
    "kaorios_hook_spec.py",
    "smali_engine.py",
    "dex_packager.py",
    "kaorios_patcher.py",
    "package_patcher.py",
    "validate_keybox.py",
    "README.md",
)
EXECUTABLE_FILES = {"kaorios_patcher.py", "package_patcher.py", "validate_keybox.py"}
FIXED_DATE_TIME = (1980, 1, 1, 0, 0, 0)


def build_patcher_zip(output_path: Path, files: tuple[str, ...] = BUNDLE_FILES) -> Path:
    """Write a reproducible ZIP archive containing all patcher runtime modules."""
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(output_path, "w", compression=zipfile.ZIP_DEFLATED) as zf:
        for rel in sorted(files):
            src = SCRIPT_DIR / rel
            if not src.is_file():
                raise FileNotFoundError(f"Missing required bundle file: {src}")
            info = zipfile.ZipInfo(filename=rel, date_time=FIXED_DATE_TIME)
            mode = 0o755 if rel in EXECUTABLE_FILES else 0o644
            info.external_attr = (0o100000 | mode) << 16
            info.create_system = 3
            zf.writestr(info, src.read_bytes(), compress_type=zipfile.ZIP_DEFLATED)
    return output_path


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Build deterministic Kaorios patcher ZIP bundle.")
    parser.add_argument("output", help="Output .zip file path")
    args = parser.parse_args(argv)
    out = build_patcher_zip(Path(args.output))
    print(f"Built deterministic patcher bundle: {out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
