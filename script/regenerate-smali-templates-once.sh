#!/usr/bin/env bash
set -euo pipefail

ROOT=$(pwd)
SOURCE_COMMIT=7bb1ad67d1034f35ef9938ffc9dcfcade48d03e6
TEMPLATE_ROOT="$ROOT/Toolbox-docs/Template/Template_V2060"
WORK="$RUNNER_TEMP/kaorios-template-regen"
LIBS="$WORK/smali-libs"
mkdir -p "$WORK" "$LIBS"

cat > "$WORK/pom.xml" <<'EOF'
<project xmlns="http://maven.apache.org/POM/4.0.0">
  <modelVersion>4.0.0</modelVersion>
  <groupId>local</groupId>
  <artifactId>smali-tools</artifactId>
  <version>1</version>
  <repositories>
    <repository>
      <id>google</id>
      <url>https://dl.google.com/dl/android/maven2/</url>
    </repository>
  </repositories>
  <dependencies>
    <dependency>
      <groupId>com.android.tools.smali</groupId>
      <artifactId>smali-baksmali</artifactId>
      <version>3.0.10</version>
    </dependency>
  </dependencies>
</project>
EOF
mvn -q -f "$WORK/pom.xml" dependency:copy-dependencies -DoutputDirectory="$LIBS"
SMALI_CP="$LIBS/*"

extract_old() {
  local old_path=$1 out=$2
  mkdir -p "$(dirname "$out")"
  git show "$SOURCE_COMMIT:$old_path" > "$out"
  test -s "$out"
}

disassemble_archive() {
  local archive=$1 api=$2 out=$3
  local dex_dir="$out/dex"
  mkdir -p "$dex_dir" "$out/smali"
  unzip -j -q "$archive" 'classes*.dex' -d "$dex_dir"
  local found=0
  for dex in "$dex_dir"/classes*.dex; do
    [ -f "$dex" ] || continue
    found=1
    local dex_name
    dex_name=$(basename "$dex" .dex)
    java -cp "$SMALI_CP" com.android.tools.smali.baksmali.Main disassemble       "$dex" --api "$api" --output "$out/smali/$dex_name"
  done
  [ "$found" -eq 1 ]
}

copy_one() {
  local search_root=$1 filename=$2 dest=$3
  mapfile -t matches < <(find "$search_root" -type f -name "$filename" -print)
  if [ "${#matches[@]}" -ne 1 ]; then
    echo "Expected exactly one $filename under $search_root, found ${#matches[@]}" >&2
    printf '%s\n' "${matches[@]}" >&2
    return 1
  fi
  mkdir -p "$(dirname "$dest")"
  cp "${matches[0]}" "$dest"
}

patch_dev_settings() {
  local file=$1
  python3 - "$file" <<'PY'
from pathlib import Path
import re, sys
p=Path(sys.argv[1])
s=p.read_text()
sig='getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;'
m=re.search(r'(?m)^\.method[^\n]*\s'+re.escape(sig)+r'\s*$',s)
if not m:
    raise SystemExit(f"target getStringForUser not found: {p}")
end=re.search(r'(?m)^\.end method\s*$',s[m.end():])
if not end:
    raise SystemExit(f"unterminated getStringForUser: {p}")
a=m.start(); b=m.end()+end.end()
body=s[a:b]
hook='Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z'
if hook in body:
    sys.exit(0)
lines=body.splitlines(True)
idx=1
in_ann=False
for i,line in enumerate(lines[1:],1):
    x=line.strip()
    if x.startswith(('.registers','.locals','.param')):
        idx=i+1; continue
    if x.startswith('.annotation'):
        in_ann=True; idx=i+1; continue
    if in_ann:
        idx=i+1
        if x.startswith('.end annotation'): in_ann=False
        continue
    if not x or x.startswith(('.line','.prologue')):
        idx=i+1; continue
    break
labels=set(re.findall(r'(?m)^\s*(:[A-Za-z0-9_.$-]+)',body))
label=':cond_kaorios_dev_stock'
n=0
while label in labels:
    n+=1; label=f':cond_kaorios_dev_stock_{n}'
block=(
    f'    if-eqz p2, {label}\n'
    '    invoke-static/range {p1 .. p3}, '+hook+'\n'
    '    move-result v0\n'
    f'    if-eqz v0, {label}\n'
    '    const-string v0, "0"\n'
    '    return-object v0\n\n'
    f'    {label}\n'
)
lines.insert(idx,block)
new=''.join(lines)
p.write_text(s[:a]+new+s[b:])
PY
}

generate_version() {
  local tag=$1 rom=$2 api=$3 android=$4
  local base="$WORK/$tag"
  mkdir -p "$base"

  extract_old "tmp/fw/$rom/framework.jar" "$base/framework.jar"
  extract_old "tmp/fw/$rom/services.jar" "$base/services.jar"
  extract_old "tmp/fw/$rom/SettingsProvider.apk" "$base/SettingsProvider.apk"

  disassemble_archive "$base/framework.jar" "$api" "$base/framework"
  disassemble_archive "$base/services.jar" "$api" "$base/services"
  disassemble_archive "$base/SettingsProvider.apk" "$api" "$base/settingsprovider"

  python3 "$ROOT/script/kaorios_patcher.py" "$base/framework/smali" --android-version "$android" --mode 1 --no-delay
  python3 "$ROOT/script/kaorios_patcher.py" "$base/services/smali" --android-version "$android" --mode 1 --no-delay
  python3 "$ROOT/script/kaorios_patcher.py" "$base/settingsprovider/smali" --android-version "$android" --mode 1 --no-delay

  if [ "$android" = 17 ]; then
    python3 "$ROOT/script/kaorios_patcher.py" "$base/framework/smali" --android-version 17 --mode 2 --no-delay
  fi

  local out="$TEMPLATE_ROOT/$tag"
  rm -rf "$out"
  mkdir -p "$out/framework" "$out/service" "$out/settingsprovider"

  for f in ActivityThread.smali Instrumentation.smali ApplicationPackageManager.smali AndroidKeyStoreKeyPairGeneratorSpi.smali AndroidKeyStoreSpi.smali Build.smali 'Build$VERSION.smali' 'Settings$NameValueCache.smali'; do
    copy_one "$base/framework/smali" "$f" "$out/framework/$f"
  done
  patch_dev_settings "$out/framework/Settings\$NameValueCache.smali"

  for f in ComputerEngine.smali SystemServer.smali; do
    copy_one "$base/services/smali" "$f" "$out/service/$f"
  done
  copy_one "$base/settingsprovider/smali" SettingsProvider.smali "$out/settingsprovider/SettingsProvider.smali"

  cat > "$out/SOURCE.md" <<EOF
# $tag sample source

- Android: $android
- Source archive set: `tmp/fw/$rom`
- Source commit: `$SOURCE_COMMIT`
- Core hooks: generated with current `script/kaorios_patcher.py --android-version $android --mode 1`
$( [ "$android" = 17 ] && printf '%s\n' '- Android 17 Build fields: generated with mode 2' )
- `Settings$NameValueCache.smali`: optional Developer options/ADB hook applied from the guide.

These are patched reference samples from the supplied stock archive set. Do not copy an entire class into a different ROM.
EOF
}

generate_version a13 miui14-a13 33 13
generate_version a14 os1-a14 34 14
generate_version a15 os2-a15 35 15
generate_version a16 os3-a16 36 16
generate_version a17 os4-a17 37 17

# Remove stale flat copies of core samples. Optional CorePatch/FLAG_SECURE references stay in place.
rm -f   "$TEMPLATE_ROOT/framework/Instrumentation.smali"   "$TEMPLATE_ROOT/framework/ApplicationPackageManager.smali"   "$TEMPLATE_ROOT/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali"   "$TEMPLATE_ROOT/framework/AndroidKeyStoreSpi.smali"   "$TEMPLATE_ROOT/framework/Build.smali"   "$TEMPLATE_ROOT/framework/Build\$VERSION.smali"   "$TEMPLATE_ROOT/framework/Settings\$NameValueCache.smali"   "$TEMPLATE_ROOT/service/ComputerEngine.smali"   "$TEMPLATE_ROOT/service/SystemServer.smali"

cat > "$TEMPLATE_ROOT/README.md" <<'EOF'
# Template_V2060

Patched reference smali is split by Android version so a sample from one ROM generation is not mistaken for another.

| Folder | Source archive set |
|---|---|
| `a13/` | MIUI 14 / Android 13 |
| `a14/` | HyperOS 1 / Android 14 |
| `a15/` | HyperOS 2 / Android 15 |
| `a16/` | HyperOS 3 / Android 16 |
| `a17/` | HyperOS 4 / Android 17 |

Each version contains:

- `framework/ActivityThread.smali`
- `framework/Instrumentation.smali`
- `framework/ApplicationPackageManager.smali`
- `framework/AndroidKeyStoreKeyPairGeneratorSpi.smali`
- `framework/AndroidKeyStoreSpi.smali`
- `framework/Build.smali`
- `framework/Build$VERSION.smali`
- `framework/Settings$NameValueCache.smali`
- `service/ComputerEngine.smali`
- `service/SystemServer.smali`
- `settingsprovider/SettingsProvider.smali`

The A13-A16 Build files are stock references; the Android 17 Build files are patched by mode 2.

Other files still stored directly under `framework/` and `service/` are optional CorePatch/FLAG_SECURE references and are not part of the automatic core patcher.

Never replace a target ROM class with a whole template class. Match the method/layout and use the patcher/verifier.
EOF

echo "Generated template files:"
find "$TEMPLATE_ROOT"/a1{3,4,5,6,7} -type f | sort
