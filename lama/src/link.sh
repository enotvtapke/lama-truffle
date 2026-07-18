#!/bin/bash
# Links lama-impl against the project's patched 64-bit runtime instead of the
# one lamac bundles. The bundled runtime caps the GC extra-roots pool at 32,
# which overflows when the compiler builds large arrays/closures (e.g. makeEnv
# builds a 71-element array). runtime/x64/ is the same runtime with a bumped
# MAX_EXTRA_ROOTS_NUMBER. Object order among .o files does not matter (they are
# always fully linked); runtime.a must come last so it is pulled on demand.
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
# lamac's own x64 stdlib objects (List, Ostap, ... — units not built here).
STDLIB="$(dirname "$(dirname "$(readlink -f "$(command -v lamac)")")")/share/Lama/x64"
RUNTIME="$DIR/../../runtime/x64/runtime.a"

# Build the patched runtime if it has not been built yet.
if [ ! -f "$RUNTIME" ]; then
  make -C "$(dirname "$RUNTIME")"
fi

# Units imported (transitively) by Driver that are not part of compilerSrc.
STD_UNITS="Timer Buffer STM Lazy Data Matcher Fun Array Ref Collection List Ostap"
STD_OBJS=()
for u in $STD_UNITS; do STD_OBJS+=("$STDLIB/$u.o"); done

# The compiler's own units (Driver excluded: its `main` lives in Driver.s, and
# a `-c`-built Driver.o would not contain it). Listed explicitly so unrelated
# .lama/.o files in the directory (e.g. test programs) are not linked in.
LOCAL_UNITS="Builtins Expr Infix Interface Lexer Manifest Parser SM SMOptimizer State World X86"
LOCAL_OBJS=()
for u in $LOCAL_UNITS; do LOCAL_OBJS+=("$DIR/$u.o"); done

gcc -Wa,--noexecstack -g -o "$DIR/lama-impl" \
    "$DIR/Driver.s" "${LOCAL_OBJS[@]}" "${STD_OBJS[@]}" "$RUNTIME"

echo "linked $DIR/lama-impl against $RUNTIME"
