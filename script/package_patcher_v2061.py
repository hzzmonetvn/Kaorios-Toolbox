#!/usr/bin/env python3
"""Build the 2.0.6.1 patcher ZIP from current public sources."""
import argparse
from pathlib import Path
import stat
import zipfile

README_SOURCE = 'script/patcher_v2061_README.txt'

# Public patcher members and framework/register regression tests.
MEMBERS = (
    'README.txt',
    'script/check-advanced-policy-sepolicy.py',
    'script/check-advanced-policy-sepolicy.sh',
    'script/kaorios_patcher.py',
    'script/kaorios_patcher_a17.py',
    'script/patch-activitythread-a17.py',
    'script/patch-dex-artifact-plan.py',
    'script/patch-framework-a17-artifact.sh',
    'script/patch-framework-a17-plan.py',
    'script/patch-framework-a17-smali.py',
    'script/patch-installer-source.py',
    'script/patch-services-a17-artifact.sh',
    'script/patch-services-a17.py',
    'script/patch-systemserver-a17.py',
    'script/publish-verified-artifact.py',
    'script/test_framework_artifact_plan.py',
    'script/test_keystore_consistency.py',
    'script/test_patcher_register_encoding.py',
    'script/validate_keybox.py',
    'script/verify-framework-a17-hooks.py',
    'script/verify-services-a17-hooks.py',
    'script/verify-systemserver-a17-hooks.py',
)


def package(source_root: Path, output: Path, members=MEMBERS) -> None:
    """Create a normalized ZIP without accepting aliases or linked source files."""
    source_root = Path(source_root)
    output = Path(output)
    if source_root.is_symlink() or not source_root.is_dir():
        raise ValueError('source root must be a real directory')
    if output.exists() or output.is_symlink():
        raise ValueError('output already exists')

    entries = []
    seen = set()
    for name in members:
        parts = name.split('/')
        if (name in seen or not name or name.startswith('/') or '\\' in name
                or any(part in ('', '.', '..') for part in parts)):
            raise ValueError(f'unsafe or duplicate ZIP member: {name!r}')
        seen.add(name)
        path = source_root
        for part in (README_SOURCE if name == 'README.txt' else name).split('/'):
            path = path / part
            if path.is_symlink():
                raise ValueError(f'symlinked source member: {name!r}')
        if not path.is_file():
            raise ValueError(f'missing or non-file source member: {name!r}')
        entries.append((name, path.read_bytes(), 0o755 if path.stat().st_mode & 0o111 else 0o644))

    # Validate all entries before creating the output; never read or execute an old ZIP.
    with zipfile.ZipFile(output, 'x') as archive:
        for name, data, mode in sorted(entries):
            info = zipfile.ZipInfo(name, (1980, 1, 1, 0, 0, 0))
            info.create_system = 3
            info.external_attr = (stat.S_IFREG | mode) << 16
            info.compress_type = zipfile.ZIP_STORED
            archive.writestr(info, data)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('output', type=Path, help='new ZIP path (must not already exist)')
    args = parser.parse_args()
    package(Path(__file__).resolve().parent.parent, args.output)
