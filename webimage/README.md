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

There is no build script; you pass three toolchain locations to Maven as `-D`
properties (see Build). None of them resolve automatically — all three are
GitHub-release downloads, because this path is off the beaten track:

| `-D` property  | What it is | Why it's needed |
| -------------- | ---------- | --------------- |
| `graalvm.home` | GraalVM **Early Access** JDK `25.1.0-dev+10.1` (tag `jdk-25e1-25.0.2-ea.26`) | Provides `native-image --tool:svm-wasm` (the Web Image backend). Stable GraalVM 25.0.2 does not ship it. |
| `ea.repo.url`  | Local maven repo of the `25.1.0-SNAPSHOT` Truffle/polyglot/SDK artifacts | These EA snapshots are **not on Maven Central**, and the Truffle ABI must match the EA JDK's built-in Truffle SVM feature — building against the stable 25.0.2 jars fails native-image (e.g. `canBeInlined`). |
| `binaryen.home`| Binaryen `wasm-as` (version 130; ≥ 119) | native-image's wasm backend shells out to `wasm-as` to assemble the final `.wasm`; it is not bundled in the JDK. |

Download everything into `wasm-toolchain/` under the repo root (gitignored,
~1.6 GB). Run from the project root; Linux x64 (for other OS/arch swap the asset
names — e.g. `binaryen-version_130-arm64-macos.tar.gz`, the `macos-aarch64` JDK):

```bash
DEPS="$PWD/wasm-toolchain" && mkdir -p "$DEPS" && cd "$DEPS"
GVM=https://github.com/graalvm/oracle-graalvm-ea-builds/releases/download/jdk-25e1-25.0.2-ea.26

# 1. EA JDK with Web Image
curl -L -O "$GVM/graalvm-jdk-25e1-25.0.2-ea.26_linux-x64_bin.tar.gz"
tar xzf graalvm-jdk-25e1-25.0.2-ea.26_linux-x64_bin.tar.gz

# 2. Matching 25.1.0-SNAPSHOT maven artifacts -> local repo
curl -L -O "$GVM/maven-resource-bundle-25.1.0-ea.26.zip"
mkdir -p ea-repo && unzip -q maven-resource-bundle-25.1.0-ea.26.zip -d ea-repo

# 3. Binaryen (wasm-as)
curl -L -O https://github.com/WebAssembly/binaryen/releases/download/version_130/binaryen-version_130-x86_64-linux.tar.gz
tar xzf binaryen-version_130-x86_64-linux.tar.gz
cd ..
```

Asset filenames drift between releases — if a link 404s, take the newest
`jdk-25e1-*` tag and its matching `maven-resource-bundle`.

## Build

The build is a pure Maven module (`webimage/pom.xml`), pulled into the reactor by
the root pom's `wasm` profile. No shell script — run from the project root, with
the three flags pointing at what you downloaded above (the JDK dir is auto-found
since its extracted name varies; `ea.repo.url` needs spaces as `%20`):

Run `build.sh`.

This builds the whole reactor under the profile. Don't add `-pl webimage`: that
module is contributed by the `wasm` profile, and Maven's `--projects` selection
doesn't reliably see profile-added modules (fails with "Could not find the
selected project in the reactor: webimage" on some Maven versions).

What the profile / module do:

- `wasm` profile sets `graalvm.version=25.1.0-SNAPSHOT` + `skipTests`, adds the
  `webimage` module, and registers the EA maven repo at `${ea.repo.url}`.
- `language` is rebuilt against the EA Truffle artifacts (webimage depends on it).
- `webimage` embeds the stdlib, runs `native-image --tool:svm-wasm` (the EA
  binary at `${graalvm.home}`, with `${binaryen.home}` prepended to its `PATH`),
  and stages `dist/` (`lama.js`, `lama.js.wasm`, `index.html`, `styles.css`).

The `native-image` binary is taken from `${graalvm.home}`, independent of the JDK
running Maven — but Maven must run on a GraalVM/JDK 21+ (this repo pins one via
`.sdkmanrc`). Browser sources live under `webimage/src/main/`.

Two module-path subtleties are handled in the pom and worth knowing if you touch
it: deps are passed to `native-image` as **individual jars** (a bare directory is
not scanned for the `native-image.properties` that loads the Truffle svm macro),
and as **relative paths** (the absolute project path contains spaces, which the
`native-image` driver word-splits).

## Known limitations / next steps

- **Stdlib units are a snapshot.** The embedded units come from
  `lama/stdlib/*.lama` at build time; rebuild to refresh them. Units that rely on
  builtins not implemented in the interpreter will fail at eval time (not all of
  them are exercised).
- **~16 MB** download; needs a recent browser (WASM exception-handling / GC —
  Chrome ≥ ~137, recent Firefox). Older Node needs `--experimental-wasm-exnref`.

