package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaRegexpHandle;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

@NodeInfo(shortName = "regexp")
public abstract class LamaRegexpBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public LamaRegexpHandle compile(LamaString s) {
        try {
            return new LamaRegexpHandle(Pattern.compile(s.toString()));
        } catch (PatternSyntaxException e) {
            throw SLException.create("regexp: " + e.getMessage(), this);
        }
    }
}
