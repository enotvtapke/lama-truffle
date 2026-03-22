package com.oracle.truffle.sl;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.TruffleLanguage;
import com.oracle.truffle.api.TruffleLanguage.ContextPolicy;
import com.oracle.truffle.api.debug.DebuggerTags;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.instrumentation.ProvidedTags;
import com.oracle.truffle.api.instrumentation.StandardTags;
import com.oracle.truffle.api.instrumentation.StandardTags.RootBodyTag;
import com.oracle.truffle.api.instrumentation.StandardTags.RootTag;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.sl.lama.LamaFileDetector;
import com.oracle.truffle.sl.nodes.lama.LamaExecRootNode;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.nodes.lama.LamaModuleRootNode;
import com.oracle.truffle.sl.parser.lama.LamaNodeParser;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaModuleObject;


@TruffleLanguage.Registration(id = LamaLanguage.ID, name = "Lama", defaultMimeType = LamaLanguage.MIME_TYPE, characterMimeTypes = LamaLanguage.MIME_TYPE, contextPolicy = ContextPolicy.SHARED, fileTypeDetectors = LamaFileDetector.class,
                website = "https://github.com/PLTools/Lama")
@ProvidedTags({StandardTags.CallTag.class, StandardTags.StatementTag.class, RootTag.class, RootBodyTag.class, StandardTags.ExpressionTag.class, DebuggerTags.AlwaysHalt.class,
                StandardTags.ReadVariableTag.class, StandardTags.WriteVariableTag.class})
@Bind.DefaultExpression("get($node)")
public final class LamaLanguage extends TruffleLanguage<LamaContext> {
    public static volatile int counter;

    public static final String ID = "lama";
    public static final String MIME_TYPE = "application/x-lama";
    public static final String MODULE_MIME_TYPE = "application/x-lama-module";

    @Override
    protected LamaContext createContext(Env env) {
        return new LamaContext(this, env);
    }

    @Override
    protected CallTarget parse(ParsingRequest request) throws Exception {
        Source source = request.getSource();
        LamaModuleObject moduleObject = new LamaModuleObject();
        LamaExpressionNode[] targets = new LamaNodeParser(this, source, moduleObject).parseLama();

        boolean isModule = MODULE_MIME_TYPE.equals(source.getMimeType());
        if (isModule) {
            return new LamaModuleRootNode(this, targets, source.createSection(0, source.getLength()), moduleObject).getCallTarget();
        }
        return new LamaExecRootNode(this, targets, source.createSection(0, source.getLength())).getCallTarget();
    }

    private static final LanguageReference<LamaLanguage> REFERENCE = LanguageReference.create(LamaLanguage.class);

    public static LamaLanguage get(Node node) {
        return REFERENCE.get(node);
    }
}
