#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
"""Apply the small Helper fork changes to exactly pinned public source trees."""
import argparse
import json
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[1]
MANAGER = 'io.github.hzzmonetvn.kaorioshelper.hma'


def replace(path, old, new, count=1):
    text = path.read_text()
    if text.count(old) != count:
        raise ValueError(f'Unexpected upstream content: {path.name}')
    path.write_text(text.replace(old, new))


def prepare(kind, source):
    pin = json.loads((ROOT / 'upstreams.json').read_text())[kind]['commit']
    actual = subprocess.check_output(['git', '-C', str(source), 'rev-parse', 'HEAD'], text=True).strip()
    if actual != pin:
        raise ValueError(f'{kind} source does not match the pinned commit')
    if subprocess.check_output(['git', '-C', str(source), 'status', '--porcelain'], text=True).strip():
        raise ValueError('Prepare requires a clean source checkout')
    count = int(subprocess.check_output(['git', '-C', str(source), 'rev-list', 'HEAD', '--count'], text=True))
    if kind == 'hma':
        p = source / 'build.gradle.kts'
        text = p.read_text()
        start = text.index('fun String.execute(')
        end = text.index('val localProperties =', start)
        text = text[:start] + text[end:]
        text = text.replace('val ciBuild = providers.environmentVariable("CI").isPresent\n', '')
        start = text.index('fun getUncommittedSuffix()')
        end = text.index('val minSdkVer', start)
        text = text[:start] + f'''val gitVersionName: String get() = "helper-0.1.0"
val gitCommitCount = {count} // Pinned upstream snapshot; no Git metadata needed to rebuild.

''' + text[end:]
        p.write_text(text)
        replace(source / 'app/build.gradle.kts', '    defaultConfig {',
                f'    defaultConfig {{\n        applicationId = "{MANAGER}"')
        replace(source / 'common/build.gradle.kts',
                'buildConfigField("String", "APP_PACKAGE_NAME", "\\\"$appPackageName\\\"")',
                f'buildConfigField("String", "APP_PACKAGE_NAME", "\\\"{MANAGER}\\\"")')
        manifest = source / 'app/src/main/AndroidManifest.xml'
        replace(manifest, 'android:name=".MainActivityLauncher',
                f'android:name="{MANAGER}.MainActivityLauncher', count=5)
        replace(source / 'zygote/build.gradle.kts', 'id = "hma_oss_zygisk"', 'id = "kaorios_helper"')
        replace(source / 'zygote/src/main/assets/hmaoss.sh',
                '/data/adb/modules/hma_oss_zygisk', '/data/adb/modules/kaorios_helper')
        # The fork manager must never offer an upstream APK as its own update.
        p = source / 'app/src/main/java/icu/nullptr/hidemyapplist/data/UpdateInfo.kt'
        text = p.read_text()
        start = text.index('fun fetchLatestUpdate(')
        text = text[:start] + '''fun fetchLatestUpdate(onGetUpdateInfo: suspend (UpdateInfo) -> Unit) {
    // Helper updates are delivered with the module, never with an upstream manager APK.
}
'''
        text = '\n'.join(line for line in text.splitlines()
                         if not line.startswith(('import kotlinx.coroutines.', 'import org.json.',
                                                 'import java.net.', 'import kotlin.concurrent.'))) + '\n'
        p.write_text(text)
        # Fetching translator metadata during configuration makes offline rebuilds fail.
        p = source / 'app/build.gradle.kts'
        text = p.read_text()
        start = text.index('    val urlConnection = if (crowdinApiKey.isNotBlank())')
        end = text.index('    val translatorJson =', start)
        text = text[:start] + text[end:]
        text = '\n'.join(line for line in text.splitlines()
                         if not line.startswith(('import com.google.gson.JsonParser',
                                                 'import java.io.DataInputStream',
                                                 'import java.net.HttpURLConnection',
                                                 'import java.net.URL',
                                                 'val crowdinProjectId:', 'val crowdinApiKey:'))) + '\n'
        p.write_text(text)
    elif kind == 'tee':
        p = source / 'app/build.gradle.kts'
        text = p.read_text()
        start = text.index('// Helper class to get access')
        end = text.index('val verName =', start)
        text = text[:start] + f'''val gitCommitCount = {count + 5} // Pinned upstream snapshot.
val gitCommitHash = "{pin[:7]}"
''' + text[end:]
        text = '\n'.join(line for line in text.splitlines()
                         if not line.startswith(('import java.io.ByteArrayOutputStream',
                                                 'import javax.inject.Inject',
                                                 'import org.gradle.process.ExecOperations'))) + '\n'
        p.write_text(text)
        files = ['App.kt', 'util/AndroidDeviceUtils.kt', 'pki/NativeCertGen.kt',
                 'config/ConfigurationManager.kt', 'config/BootStateManager.kt']
        for rel in files:
            p = source / 'app/src/main/java/org/matrix/TEESimulator' / rel
            text = p.read_text()
            if rel == 'App.kt':
                replace(p, '/data/adb/modules/tricky_store/libcertgen.so',
                        '/data/adb/modules/kaorios_helper/tee/libcertgen.so')
            else:
                replace(p, '/data/adb/tricky_store', '/data/adb/kaorios_helper/tee')
        # Do not generate or convey a ZIP containing the upstream software keybox.
        replace(source / 'app/build.gradle.kts', 'exclude("module.prop")',
                'exclude("keybox.xml")\n                    exclude("module.prop")')
        replace(source / 'app/build.gradle.kts', '            "build",\n            "--release",',
                '            "build",\n            "--locked",\n            "--release",')
        replace(source / 'app/build.gradle.kts', '        minSdk = 29',
                '        ndk { abiFilters += "arm64-v8a" }\n        minSdk = 29')
    changed = subprocess.check_output(['git', '-C', str(source), 'diff', '--name-only'], text=True)
    (source / 'KAORIOS-CHANGES.md').write_text(
        f'# Kaorios Helper fork changes — 2026-10-07\n\nUpstream: {pin}\n\n'
        'Modified by hzzmonetvn. Original copyright and licenses are retained.\n\n'
        + ''.join(f'- {name}\n' for name in changed.splitlines())
        + '\nReproduce these changes using Kaorios-Helper/tools/prepare_sources.py.\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('kind', choices=['hma', 'tee'])
    parser.add_argument('source', type=Path)
    args = parser.parse_args()
    prepare(args.kind, args.source.resolve())
