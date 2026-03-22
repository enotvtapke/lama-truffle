package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.TruffleLanguage.ContextReference;
import com.oracle.truffle.api.TruffleLanguage.Env;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.sl.LamaLanguage;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import static com.oracle.truffle.sl.LamaLanguage.MODULE_MIME_TYPE;


@Bind.DefaultExpression("get($node)")
public final class LamaContext {

    private static class RegistryEntry {
        public LamaModuleObject module;
        State state = State.UNINITIALIZED;
        RegistryEntry(LamaModuleObject module) {
            this.module = module;
        }
    }
    private enum State {
        UNINITIALIZED,
        EVALUATING,
        EVALUATED
    }
    private final Map<String, RegistryEntry> moduleRegistry = new HashMap<>();

    private final LamaLanguage language;
    @CompilationFinal private Env env;
    private final BufferedReader input;
    private final PrintWriter output;

    public LamaContext(LamaLanguage language, Env env) {
        this.env = env;
        this.input = new BufferedReader(new InputStreamReader(env.in()));
        this.output = new PrintWriter(env.out(), true);
        this.language = language;
    }

    private static final ContextReference<LamaContext> REFERENCE = ContextReference.create(LamaLanguage.class);

    public static LamaContext get(Node node) {
        return REFERENCE.get(node);
    }

    public PrintWriter getOutput() {
        return output;
    }

    public Env getEnv() {
        return env;
    }

    @TruffleBoundary
    public LamaModuleObject resolve(String moduleName) {
        RegistryEntry record = moduleRegistry.get(moduleName);
        if (record == null) {
            CallTarget target = parseModule(moduleName);
            record = new RegistryEntry(null);
            moduleRegistry.put(moduleName, record);
            record.state = State.EVALUATING;
            record.module = (LamaModuleObject) target.call();
            record.state = State.EVALUATED;
            return record.module;
        }

        return switch (record.state) {
            case EVALUATED -> record.module;
            case EVALUATING ->
                    throw new RuntimeException("Circular import dependency detected involving: " + moduleName);
            case UNINITIALIZED ->
                    throw new RuntimeException("Uninitialized module record in registry for module: " + moduleName);
        };

    }

    private CallTarget parseModule(String path) {
        try {
            TruffleFile file = env.getInternalTruffleFile(path);
            Source source = Source.newBuilder("lama", file).mimeType(MODULE_MIME_TYPE).name(path).build();
            return env.parsePublic(source);
        } catch (Exception e) {
            throw new RuntimeException("Failed to load module: " + path, e);
        }
    }
}