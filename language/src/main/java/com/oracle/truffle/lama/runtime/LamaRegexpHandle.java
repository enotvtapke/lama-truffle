package com.oracle.truffle.lama.runtime;

import com.oracle.truffle.api.nodes.Node;

import java.util.regex.Pattern;

/** Compiled regexp from {@code regexp(...)}. */
public final class LamaRegexpHandle extends Node {
    public final Pattern pattern;

    public LamaRegexpHandle(Pattern pattern) {
        this.pattern = pattern;
    }
}
