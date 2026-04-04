package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;

@NodeInfo(shortName = "sExprPattern")
public final class SExprPatternNode extends LamaPatternNode {

    private final String expectedTag;

    @Children private final LamaPatternNode[] subPatterns;

    public SExprPatternNode(String expectedTag, LamaPatternNode[] subPatterns) {
        this.expectedTag = expectedTag;
        this.subPatterns = subPatterns;
    }

    @Override
    @ExplodeLoop
    public boolean executeMatch(Object target) {
        if (!(target instanceof LamaSExpr sExpr)) {
            return false;
        }

        if (!this.expectedTag.equals(sExpr.tag)) {
            return false;
        }

        Object[] args = sExpr.elements;
        if (args.length != subPatterns.length) {
            return false;
        }

        for (int i = 0; i < subPatterns.length; i++) {
            if (!subPatterns[i].executeMatch(args[i])) {
                return false;
            }
        }

        return true;
    }

    @Override
    @ExplodeLoop
    public void executeBind(VirtualFrame frame, Object target) {
        LamaSExpr sExpr = (LamaSExpr) target;
        Object[] args = sExpr.elements;

        for (int i = 0; i < subPatterns.length; i++) {
            subPatterns[i].executeBind(frame, args[i]);
        }
    }
}