package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

@NodeInfo(shortName = "stringLiteralPattern")
public abstract class StringLiteralPatternNode extends LamaPatternNode {
    private final byte[] expectedBytes;

    public StringLiteralPatternNode(String expectedValue) {
        this.expectedBytes = expectedValue.getBytes(StandardCharsets.US_ASCII);
    }

    @Specialization
    protected boolean matchString(LamaString target) {
        return Arrays.equals(expectedBytes, target.getBytes());
    }

    @Fallback
    protected boolean noMatch(Object target) {
        return false;
    }

    @Override
    public void executeBind(VirtualFrame frame, Object target) {
    }
}
