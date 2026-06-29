#!/usr/bin/env bash
#
# Build the Lama Truffle interpreter into a WebAssembly module that runs the
# Lama sandbox entirely in the browser (no server-side execution), using the
# GraalVM Web Image backend (`native-image --tool:svm-wasm`).
#
# This is interpreter-only (no Graal JIT under WASM) — correctness, not speed.
# See README.md for the full story and prerequisites.
#
# Required environment (override as needed):
#   EA_JDK   - GraalVM 25e1+ Early Access JDK that ships Web Image
#              (graalvm-25.1.0-dev; the matching maven bundle must be installed,
#               see README "Toolchain setup").
#   BINARYEN - directory containing `wasm-as` (Binaryen >= 119).
#   EA_REPO  - file:// maven repo with the matching 25.1.0-SNAPSHOT artifacts.
#
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
PROJECT="$(cd "$HERE/.." && pwd)"

EA_JDK="${EA_JDK:?set EA_JDK to the GraalVM 25e1 EA JDK with Web Image}"
BINARYEN="${BINARYEN:?set BINARYEN to the Binaryen bin dir (wasm-as >= 119)}"
EA_SETTINGS="${EA_SETTINGS:?set EA_SETTINGS to a maven settings.xml exposing the EA file repo}"
GRAALVM_VERSION="${GRAALVM_VERSION:-25.1.0-SNAPSHOT}"

export JAVA_HOME="$EA_JDK"
export PATH="$EA_JDK/bin:$BINARYEN:$PATH"

WORK="$HERE/work"
MODS="$WORK/modules"
OUT="$HERE/dist"
rm -rf "$WORK" "$OUT"
mkdir -p "$WORK" "$OUT"

echo ">> 1/4  Rebuilding project jars against Truffle $GRAALVM_VERSION (EA)"
( cd "$PROJECT" && mvn -q -s "$EA_SETTINGS" \
    -Dgraalvm.version="$GRAALVM_VERSION" -DskipTests \
    -pl language,launcher,standalone -am package )

# Module path = the standalone module set MINUS the optimizing Truffle runtime
# and compiler (so Truffle falls back to the interpreter-only DefaultTruffleRuntime,
# which is the only thing that works under WASM), MINUS the file-based launcher.
cp -r "$PROJECT/standalone/target/modules" "$MODS"
MP="$(ls "$MODS"/*.jar | grep -vE 'truffle-runtime|truffle-compiler|launcher' | tr '\n' ':')"

echo ">> 2/4  Compiling the browser entry module (lamawasm)"
javac -p "$MP" -d "$WORK/out" "$HERE/module-info.java" "$HERE/LamaWasm.java"

# Embed the standard-library units as resources inside the lamawasm module so
# they can be served to the interpreter through the in-memory FileSystem.
STDLIB_SRC="$PROJECT/language/tests/lama/imports"
RES="$WORK/out/lamastd"
mkdir -p "$RES"
: > "$RES/index.txt"
for f in "$STDLIB_SRC"/*.lama; do
  base="$(basename "$f")"
  cp "$f" "$RES/$base"
  echo "$base" >> "$RES/index.txt"
done
echo "   embedded $(grep -c . "$RES/index.txt") stdlib units"

echo ">> 3/4  native-image --tool:svm-wasm"
( cd "$OUT" && native-image --tool:svm-wasm \
    -Dpolyglot.engine.allowUnsupportedPlatform=true \
    -Dpolyglot.engine.WarnInterpreterOnly=false \
    -H:IncludeResources='lamastd/.*' \
    -p "${MP}${WORK}/out" \
    -m lamawasm/lamawasm.LamaWasm \
    -o "$OUT/lama" )

echo ">> 4/4  Staging the sandbox page"
cp "$HERE/index.html" "$OUT/index.html"
rm -f "$OUT/lama.js.wat"   # 360MB debug artifact, not needed to run

echo
echo "Done. Serve and open in a recent Chrome/Firefox:"
echo "    cd \"$OUT\" && \"$EA_JDK/bin/jwebserver\" -p 8011 -b 127.0.0.1"
echo "    open http://127.0.0.1:8011/index.html"
