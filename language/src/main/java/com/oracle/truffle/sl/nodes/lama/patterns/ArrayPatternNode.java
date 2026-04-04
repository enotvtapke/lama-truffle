package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaArray;

@NodeInfo(shortName = "arrayPattern")
public final class ArrayPatternNode extends LamaPatternNode {

    @Children private final LamaPatternNode[] subPatterns;

    public ArrayPatternNode(LamaPatternNode[] subPatterns) {
        this.subPatterns = subPatterns;
    }

    @Override
    @ExplodeLoop
    public boolean executeMatch(Object target) {
        if (!(target instanceof LamaArray array)) {
            return false;
        }
        if (array.getSize() != subPatterns.length) {
            return false;
        }
        for (int i = 0; i < subPatterns.length; i++) {
            if (!subPatterns[i].executeMatch(readElement(array, i))) {
                return false;
            }
        }
        return true;
    }

    @Override
    @ExplodeLoop
    public void executeBind(VirtualFrame frame, Object target) {
        LamaArray array = (LamaArray) target;
        for (int i = 0; i < subPatterns.length; i++) {
            subPatterns[i].executeBind(frame, readElement(array, i));
        }
    }

    private static Object readElement(LamaArray array, int index) {
        if (array.isLongStorage()) {
            return ((long[]) array.storage)[index];
        }
        return ((Object[]) array.storage)[index];
    }
}
