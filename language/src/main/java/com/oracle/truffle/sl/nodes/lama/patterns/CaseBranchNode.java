package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.nodes.lama.LamaNode;

public final class CaseBranchNode extends LamaNode {
    @Child public LamaPatternNode pattern;
    @Child public LamaExpressionNode body;

    public final CountingConditionProfile matchProfile = CountingConditionProfile.create();

    public CaseBranchNode(LamaPatternNode pattern, LamaExpressionNode body) {
        this.pattern = pattern;
        this.body = body;
    }
}