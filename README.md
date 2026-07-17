# Lama

An implementation of the [Lama](https://github.com/PLTools/Lama) programming language built on Truffle for GraalVM. 
You can try out this implementation online at [Lama Sandbox](https://enotvtapke.github.io/lama-truffle/). Notice that an 
online version uses experimental WebAssembly support; hence it is less performant than the offline version.

# Building for a JVM

Build the project with `mvn package`.
To run Lama using a JDK from JAVA_HOME run `./lama.sh <file>.lama`.

# Building a Native Image

Build the project with `mvn package -Pnative`.
To run Lama natively run `./standalone/target/lamanative <file>.lama`.

# Notes on Lama semantics

In Lama lambdas and functions create closures differently:

`var f = fun() { ... }` — the closure snapshots the environment at creation time (deep binding). Later mutations to
captured variables are not seen.

`fun f() { ... }` — the closure is materialized when f is used as a value, capturing the environment at that point
(late binding). It sees all mutations that happened before that moment, but not mutations that happened after.

To materialize closure of `fun f() { ... }` immediately one can do `var f1 = f`.

Infix references to builtin operations (like +, -, *, /, %, ==, !=, <, >, <=, >=, &&, ||) are not supported. Only references
to custom infix operators are supported.

# TODO

Shared context global variables read and write should be refactored. Now it works much slower than single context read and write.