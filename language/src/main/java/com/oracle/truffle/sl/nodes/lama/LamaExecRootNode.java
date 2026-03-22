package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.SLLanguage;

import java.util.List;

public final class LamaExecRootNode extends RootNode {

    @Children private final LamaExpressionNode[] expressions;
    private final SourceSection sourceSection;

    public LamaExecRootNode(LamaLanguage language, LamaExpressionNode[] expressions, SourceSection sourceSection) {
        super(language, new FrameDescriptor());
        this.expressions = expressions;
        this.sourceSection = sourceSection;
    }

    @Override
    public SourceSection getSourceSection() {
        return sourceSection;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object result = null;
        for (var expression : expressions){
            result = expression.executeGeneric(frame);
        }
        return result;
    }

    @Override
    public String getName() {
        return "__main__";
    }
}
