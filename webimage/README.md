# Lama sandbox in the browser (Truffle interpreter → WebAssembly)

This compiles the **Lama Truffle interpreter itself** to WebAssembly with the
GraalVM **Web Image** backend, so the sandbox runs entirely client-side — no
server executes user code. It is **interpreter-only** (no Graal JIT is possible
under WASM); correctness, not speed.

The browser calls these exported functions:

```js
globalThis.setLamaInput("3\n4\n");                 // optional: stdin for read()
const output = globalThis.runLama("write(2+3)");   // returns captured stdout
```

**Standard-library imports work** (`import Array;`, `import List;`, …): the
stdlib `.lama` units are embedded into the image and served through an in-memory
filesystem mounted at `/stdlib` (see `LamaWasm.InMemoryFileSystem`), with
`lama.UnitSearchPath=/stdlib`. **`read()` / stdin works** via a `Context` input
stream fed from `setLamaInput`.

## Result

`dist/` (after `build.sh`) contains:

- `lama.js`       — JS runtime wrapper (~108 KB)
- `lama.js.wasm`  — the interpreter (~15 MB)
- `index.html`    — editor + Run button sandbox UI

Verified in Chrome 143 and via Node: `len({})` → `0`, `len({1,2,3})` → `3`,
matching the native interpreter.

## Why it's not just `mvn -Pnative`

A Truffle language is a JVM app. Getting it into the browser required threading
several needles:

1. **Web Image is Early Access.** The `wasm` backend bundled in stable GraalVM
   25.0.2 is incomplete (crashes lowering exception handling on Hello World).
   The real path is `native-image --tool:svm-wasm`, only in EA builds
   (Oracle GraalVM 25e1+). We use `graalvm-25.1.0-dev` (tag
   `jdk-25e1-25.0.2-ea.26`) plus **Binaryen ≥ 119** (`wasm-as`).
2. **Truffle ABI must match the JDK.** The EA JDK's Truffle SVM feature is
   `25.1.0-dev`; the project's pinned `25.0.2` jars fail with
   `could not find target field ... canBeInlined`. Fix: rebuild the project
   against the EA's matching maven artifacts (`25.1.0-SNAPSHOT`, shipped as the
   release's "Maven Resource Bundle"), via `-Dgraalvm.version=25.1.0-SNAPSHOT`.
3. **No runtime compilation under WASM.** Drop `truffle-runtime.jar` /
   `truffle-compiler.jar` so Truffle uses the interpreter-only
   `DefaultTruffleRuntime`; otherwise `RuntimeCompilationFeature` NPEs.
4. **No real I/O / no threads.** Web Image is single-threaded with a virtual FS:
   `readBytesFromStdIn` is unsupported and `new File(...)` can't see host files.
   So the file/stdin-based `LamaMain` won't work — `LamaWasm` instead takes the
   source as a string, evaluates on the calling thread, and captures `System.out`.
5. **Browser platform opt-in.** Web Image reports the OS as `Browser`; the
   polyglot engine needs `polyglot.engine.allowUnsupportedPlatform=true` and a
   set `polyglot.engine.userResourceCache` path (see `LamaWasm` static block).
6. **JS↔Java strings.** Read the argument with `JSString.asString()`
   (`toString()` returns a debug wrapper like `JavaScript<string; ...>`).

## Toolchain setup (one-time)

```bash
# 1. EA JDK with Web Image (≈385 MB) and its matching maven bundle (≈800 MB):
#    https://github.com/graalvm/oracle-graalvm-ea-builds/releases
#    tag jdk-25e1-25.0.2-ea.26
#      - graalvm-jdk-25e1-25.0.2-ea.26_linux-x64_bin.tar.gz   -> $EA_JDK
#      - maven-resource-bundle-25.1.0-ea.26.zip               -> unzip to $EA_REPO
unzip -q maven-resource-bundle-25.1.0-ea.26.zip -d /path/to/ea-repo

# 2. Binaryen >= 119 (wasm-as):
#    https://github.com/WebAssembly/binaryen/releases  -> $BINARYEN/wasm-as

# 3. settings.xml exposing the EA repo as a file:// repository (so maven can
#    resolve 25.1.0-SNAPSHOT). Minimal example in this dir: ea-settings.xml.tmpl
```

## Build

```bash
EA_JDK=/path/to/graalvm-25.1.0-dev+10.1 \
BINARYEN=/path/to/binaryen/bin \
EA_SETTINGS=/path/to/ea-settings.xml \
./webimage/build.sh
```

## Known limitations / next steps

- **Stdlib units are a snapshot.** The embedded units come from
  `language/tests/lama/imports/*.lama` at build time; rerun `build.sh` to refresh
  them. Units that rely on builtins not implemented in the interpreter will fail
  at eval time (not all of them are exercised).
- **~16 MB** download; needs a recent browser (WASM exception-handling / GC —
  Chrome ≥ ~137, recent Firefox). Older Node needs `--experimental-wasm-exnref`.

## To build on my machine run

cd "/home/enotvtapke/study/virtual machines/simplelanguage"
set -a; source "/home/enotvtapke/study/virtual machines/lama-wasm-deps/.env"; set +a
./webimage/build.sh
