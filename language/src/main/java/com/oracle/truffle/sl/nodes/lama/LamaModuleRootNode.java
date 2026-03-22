package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.runtime.lama.LamaModuleObject;

public final class LamaModuleRootNode extends RootNode {

    @Children private final LamaExpressionNode[] expressions;
    private final SourceSection sourceSection;
    private final LamaModuleObject module;

    public LamaModuleRootNode(LamaLanguage language, LamaExpressionNode[] expressions, SourceSection sourceSection, LamaModuleObject module) {
        super(language, new FrameDescriptor());
        this.expressions = expressions;
        this.sourceSection = sourceSection;
        this.module = module;
    }

    @Override
    public SourceSection getSourceSection() {
        return sourceSection;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        for (var expression : expressions){
            expression.executeGeneric(frame);
        }
        return module;
    }

    @Override
    public String getName() {
        return sourceSection.getSource().getName();
    }
}
