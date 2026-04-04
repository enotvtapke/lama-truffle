package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;
import com.oracle.truffle.sl.runtime.lama.LamaString;
import com.oracle.truffle.sl.runtime.lama.SExpr;

@NodeInfo(shortName = "typeTagPattern")
public final class TypeTagPatternNode extends LamaPatternNode {

    public enum Tag { VAL, BOX, STR, ARRAY, SEXP, FUN }

    private final Tag tag;

    public TypeTagPatternNode(Tag tag) {
        this.tag = tag;
    }

    @Override
    public boolean executeMatch(Object target) {
        return switch (tag) {
            case VAL -> target instanceof Long;
            case STR -> target instanceof LamaString;
            case ARRAY -> target instanceof LamaArray;
            case SEXP -> target instanceof SExpr;
            case FUN -> target instanceof LamaFunction;
            case BOX -> !(target instanceof Long);
        };
    }

    @Override
    public void executeBind(VirtualFrame frame, Object target) {
    }
}
