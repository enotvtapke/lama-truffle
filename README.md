# SimpleLanguage

A simple demonstration language built using Truffle for GraalVM.

SimpleLanguage is heavily documented to explain the how and why of writing a
Truffle language. A good way to find out more is to read the source with
comments. Start reading [here](https://github.com/graalvm/simplelanguage/blob/master/language/src/main/java/com/oracle/truffle/sl/SLLanguage.java).
We also like to encourage people to clone the repository and start hacking.

This repository is licensed under the permissive UPL licence. Fork it to begin
your own Truffle language.

For instructions on how to get started please refer to [our website](http://www.graalvm.org/docs/graalvm-as-a-platform/implement-language/)

# Building for a JVM

Build the project with `mvn package`.
To run simple language using a JDK from JAVA_HOME run `./sl`.

# Building a Native Image

Build the project with `mvn package -Pnative`.
To run simple language natively run `./standalone/target/slnative`.

# Known differences from the C Lama runtime

## `printf` / `sprintf` / `fprintf` formatting

The Truffle implementation delegates to Java's `String.format()` after a regex
pre-processing pass.  Most C-style format specifiers (`%d`, `%s`, `%c`, `%x`,
`%o`, `%f`, `%e`, `%g`, `%a`, width, precision, flags) are handled natively by
Java and behave identically.

Adaptations for specifiers not directly supported by Java:

- `%i` — treated as a synonym for `%d` (same as C).
- `%u` — unsigned decimal; the argument is converted via
  `Long.toUnsignedString()` and printed with `%s`.
- `l` length modifier (e.g. `%ld`)

# Lama

In Lama lambdas and functions create closures differently:
`var f = fun() { ... }` — the closure snapshots the environment at creation time (deep binding). Later mutations to 
captured variables are not seen.

`fun f() { ... }` — the closure is materialized when f is used as a value, capturing the environment at that point 
(late binding). It sees all mutations that happened before that moment, but not mutations that happened after.

To materialize closure of `fun f() { ... }` immediately one can do `var f1 = f`.
