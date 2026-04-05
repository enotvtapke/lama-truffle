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
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.lama.LamaFileDetector;
import com.oracle.truffle.sl.parser.lama.LamaTranslator;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

import static com.oracle.truffle.sl.runtime.lama.Utils.stripFileExtension;


@TruffleLanguage.Registration(id = LamaLanguage.ID, name = "Lama", defaultMimeType = LamaLanguage.MIME_TYPE, characterMimeTypes = LamaLanguage.MIME_TYPE, contextPolicy = ContextPolicy.SHARED, fileTypeDetectors = LamaFileDetector.class,
                website = "https://github.com/PLTools/Lama")
@ProvidedTags({StandardTags.CallTag.class, StandardTags.StatementTag.class, RootTag.class, RootBodyTag.class, StandardTags.ExpressionTag.class, DebuggerTags.AlwaysHalt.class,
                StandardTags.ReadVariableTag.class, StandardTags.WriteVariableTag.class})
@Bind.DefaultExpression("get($node)")
public final class LamaLanguage extends TruffleLanguage<LamaContext> {
    public static volatile int counter;

    public static final String ID = "lama";
    public static final String MIME_TYPE = "application/x-lama";
    public static final Source BUILTIN_SOURCE = Source.newBuilder(SLLanguage.ID, "", "Lama builtin").build();
    public static final TruffleString.Encoding STRING_ENCODING = TruffleString.Encoding.UTF_16;

    @Override
    protected LamaContext createContext(Env env) {
        return new LamaContext(this, env);
    }

    @Override
    protected CallTarget parse(ParsingRequest request) throws Exception {
        Source source = request.getSource();
        String moduleName = stripFileExtension(source.getName());
        var root = new LamaTranslator(moduleName, this, source).parseLama();
        return root.getCallTarget();
    }

    private static final LanguageReference<LamaLanguage> REFERENCE = LanguageReference.create(LamaLanguage.class);

    public static LamaLanguage get(Node node) {
        return REFERENCE.get(node);
    }
}
