DEPS="$PWD/wasm-toolchain"
mvn -Pwasm package \
    -Dgraalvm.home="$(find -L "$DEPS" -maxdepth 1 -type d -name 'graalvm*' | head -1)" \
    -Dbinaryen.home="$DEPS/binaryen-version_130/bin" \
    -Dea.repo.url="file://$(printf %s "$DEPS/ea-repo" | sed 's/ /%20/g')"