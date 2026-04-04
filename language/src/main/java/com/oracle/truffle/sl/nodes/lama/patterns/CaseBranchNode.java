package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public final class CaseBranchNode extends Node {
    @Child public LamaPatternNode pattern;
    @Child public LamaExpressionNode body;

    public final CountingConditionProfile matchProfile = CountingConditionProfile.create();

    public CaseBranchNode(LamaPatternNode pattern, LamaExpressionNode body) {
        this.pattern = pattern;
        this.body = body;
    }
}