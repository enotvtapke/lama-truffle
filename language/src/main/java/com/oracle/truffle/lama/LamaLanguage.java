package com.oracle.truffle.lama;

import com.oracle.truffle.api.Assumption;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.Option;
import com.oracle.truffle.api.Truffle;
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
import com.oracle.truffle.lama.LamaFileDetector;
import com.oracle.truffle.lama.parser.LamaTranslator;
import com.oracle.truffle.lama.runtime.LamaContext;
import org.graalvm.options.OptionCategory;
import org.graalvm.options.OptionDescriptors;
import org.graalvm.options.OptionKey;
import org.graalvm.options.OptionStability;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import static com.oracle.truffle.lama.runtime.Utils.stripFileExtension;


@TruffleLanguage.Registration(id = LamaLanguage.ID, name = "Lama", defaultMimeType = LamaLanguage.MIME_TYPE, characterMimeTypes = LamaLanguage.MIME_TYPE, contextPolicy = ContextPolicy.SHARED, fileTypeDetectors = LamaFileDetector.class,
                website = "https://github.com/PLTools/Lama")
@ProvidedTags({StandardTags.CallTag.class, StandardTags.StatementTag.class, RootTag.class, RootBodyTag.class, StandardTags.ExpressionTag.class, DebuggerTags.AlwaysHalt.class,
                StandardTags.ReadVariableTag.class, StandardTags.WriteVariableTag.class})
@Bind.DefaultExpression("get($node)")
public final class LamaLanguage extends TruffleLanguage<LamaContext> {
    public static volatile int counter;

    public static final String ID = "lama";
    public static final String MIME_TYPE = "application/x-lama";
    public static final TruffleString.Encoding STRING_ENCODING = TruffleString.Encoding.UTF_16;

    @Option(help = "Additional directories used to resolve imported Lama units. Entries are separated using the platform path separator.", category = OptionCategory.USER, stability = OptionStability.STABLE) //
    public static final OptionKey<String> UnitSearchPath = new OptionKey<>("");

    @Option(help = "Print the interactive prompt before each read(). Disable for non-interactive/batch use.", category = OptionCategory.USER, stability = OptionStability.STABLE) //
    public static final OptionKey<Boolean> ReadPrompt = new OptionKey<>(false);

    private Env currentEnv;

    /**
     * Valid while this language instance serves a single context. Once a second
     * context is initialized on the same engine (e.g. a shared-engine test
     * suite), it is invalidated, which tells nodes shared across those contexts
     * that they must NOT cache context-dependent values (see
     * {@code ReadModuleVariableNode}).
     */
    private final Assumption singleContext = Truffle.getRuntime().createAssumption("Single Lama context.");

    @Override
    protected LamaContext createContext(Env env) {
        this.currentEnv = env;
        return new LamaContext(this, env);
    }

    @Override
    protected void initializeMultipleContexts() {
        singleContext.invalidate();
    }

    public boolean isSingleContext() {
        return singleContext.isValid();
    }

    @Override
    protected OptionDescriptors getOptionDescriptors() {
        return new LamaLanguageOptionDescriptors();
    }

    @Override
    protected CallTarget parse(ParsingRequest request) throws Exception {
        Source source = request.getSource();
        String moduleName = stripFileExtension(source.getName());
        var root = new LamaTranslator(moduleName, this, source, currentEnv).parseLama();
        return root.getCallTarget();
    }

    public static List<String> buildUnitSearchPaths(TruffleLanguage.Env env) {
        List<String> searchPaths = new ArrayList<>();
        String configuredPaths = LamaLanguage.UnitSearchPath.getValue(env.getOptions());
        if (!configuredPaths.isEmpty()) {
            for (String path : configuredPaths.split(File.pathSeparator)) {
                if (!path.isEmpty() && !searchPaths.contains(path)) {
                    searchPaths.add(path);
                }
            }
        }
        return searchPaths;
    }

    private static final LanguageReference<LamaLanguage> REFERENCE = LanguageReference.create(LamaLanguage.class);

    public static LamaLanguage get(Node node) {
        return REFERENCE.get(node);
    }
}
