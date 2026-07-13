package com.oracle.truffle.lama.nodes;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.lama.LamaLanguage;
import com.oracle.truffle.lama.nodes.builtin.LamaImportNode;
import com.oracle.truffle.lama.runtime.LamaContext;

import static com.oracle.truffle.lama.runtime.Utils.stripFileExtension;

public final class LamaModuleRootNode extends RootNode {

    @Child private LamaExpressionNode body;
    @Children private final LamaImportNode[] imports;
    private final SourceSection sourceSection;

    public LamaModuleRootNode(LamaLanguage language, FrameDescriptor frameDescriptor, LamaExpressionNode body, LamaImportNode[] imports, SourceSection sourceSection) {
        super(language, frameDescriptor);
        this.body = body;
        this.imports = imports;
        this.sourceSection = sourceSection;
    }

    @Override
    public SourceSection getSourceSection() {
        return sourceSection;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        LamaContext context = LamaContext.get(this);
        String moduleName = moduleName();
        var module = context.registerModule(moduleName);
        for (var lamaImport : imports) {
            module.imports.add(lamaImport.moduleName);
            lamaImport.executeGeneric(frame);
        }
        var result = body.executeGeneric(frame);
        context.markEvaluated(moduleName);
        return result;
    }

    @TruffleBoundary
    private String moduleName() {
        return stripFileExtension(getName());
    }

    @Override
    public String getName() {
        return sourceSection.getSource().getName();
    }

    @Override
    public String toString() {
        return getName();
    }
}
