#!/usr/bin/env python3
"""Publish a verified artifact to destination using destination-local staging and atomic replace."""
from __future__ import annotations

import os
import shutil
import sys
import tempfile
from pathlib import Path


def publish_verified_artifact(candidate_path: str | Path, destination_path: str | Path) -> Path:
    candidate = Path(candidate_path).resolve()
    if not candidate.is_file():
        raise FileNotFoundError(f"Verified candidate artifact not found: {candidate}")

    dest = Path(destination_path).resolve()
    dest_dir = dest.parent
    dest_dir.mkdir(parents=True, exist_ok=True)

    # Stage a temporary file inside the DESTINATION directory to guarantee
    # same-filesystem atomic rename (os.replace) regardless of where candidate is located.
    prefix = f".{dest.name}.staging."
    temp_fd, temp_file_path_str = tempfile.mkstemp(dir=dest_dir, prefix=prefix)
    temp_path = Path(temp_file_path_str)

    try:
        # Copy candidate content into destination-local temp file
        with os.fdopen(temp_fd, "wb") as dst_file, candidate.open("rb") as src_file:
            shutil.copyfileobj(src_file, dst_file, length=64 * 1024)
            # Enforce deterministic 0644 permission before replace, independent of umask
            try:
                os.fchmod(dst_file.fileno(), 0o644)
            except (AttributeError, OSError):
                os.chmod(temp_path, 0o644)
            dst_file.flush()
            os.fsync(dst_file.fileno())

        # Explicit fallback guarantee: ensure mode 0644 on temporary path before replace
        try:
            os.chmod(temp_path, 0o644)
        except OSError:
            pass

        # Atomic replace on the same filesystem
        os.replace(temp_path, dest)

        # Best-effort directory fsync for durability
        try:
            dir_fd = os.open(dest_dir, os.O_RDONLY)
            try:
                os.fsync(dir_fd)
            finally:
                os.close(dir_fd)
        except Exception:
            pass

        return dest
    except Exception:
        # If anything fails before atomic replace, ensure destination-local staging temp is cleaned up
        if temp_path.exists():
            try:
                temp_path.unlink()
            except Exception:
                pass
        raise


def main() -> int:
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <candidate_path> <destination_path>", file=sys.stderr)
        return 1
    candidate = sys.argv[1]
    destination = sys.argv[2]
    try:
        published = publish_verified_artifact(candidate, destination)
        print(f"published: {published}")
        return 0
    except Exception as e:
        print(f"Error publishing artifact: {e}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
