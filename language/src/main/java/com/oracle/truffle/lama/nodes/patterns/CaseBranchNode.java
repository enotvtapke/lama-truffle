package com.oracle.truffle.lama.nodes.patterns;

import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.nodes.LamaNode;

public final class CaseBranchNode extends LamaNode {
    @Child public LamaPatternNode pattern;
    @Child public LamaExpressionNode body;

    public final CountingConditionProfile matchProfile = CountingConditionProfile.create();

    public CaseBranchNode(LamaPatternNode pattern, LamaExpressionNode body) {
        this.pattern = pattern;
        this.body = body;
    }
}