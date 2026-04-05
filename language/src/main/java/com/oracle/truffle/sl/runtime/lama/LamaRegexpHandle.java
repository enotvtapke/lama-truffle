package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.nodes.Node;

import java.util.regex.Pattern;

/** Compiled regexp from {@code regexp(...)}. */
public final class LamaRegexpHandle extends Node {
    public final Pattern pattern;

    public LamaRegexpHandle(Pattern pattern) {
        this.pattern = pattern;
    }
}
