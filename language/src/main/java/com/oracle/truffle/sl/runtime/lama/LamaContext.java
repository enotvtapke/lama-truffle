package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.TruffleLanguage.ContextReference;
import com.oracle.truffle.api.TruffleLanguage.Env;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.api.object.Shape;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.LamaRootNode;
import com.oracle.truffle.sl.nodes.lama.builtin.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.oracle.truffle.sl.LamaLanguage.buildUnitSearchPaths;

@Bind.DefaultExpression("get($node)")
public final class LamaContext {
    private final Map<String, RegistryEntry> moduleRegistry = new HashMap<>();
    private final DynamicObject builtins = new DynamicObject(Shape.newBuilder().build()) {};
    private final LamaLanguage language;
    @CompilationFinal private Env env;
    private final BufferedReader input;
    private final PrintWriter output;
    private final List<String> unitSearchPaths;

    public LamaContext(LamaLanguage language, Env env) {
        this.env = env;
        this.input = new BufferedReader(new InputStreamReader(env.in()));
        this.output = new PrintWriter(env.out(), true);
        this.language = language;
        this.unitSearchPaths = buildUnitSearchPaths(env);
        registerBuiltins();
    }

    private static final ContextReference<LamaContext> REFERENCE = ContextReference.create(LamaLanguage.class);

    public static LamaContext get(Node node) {
        return REFERENCE.get(node);
    }

    public PrintWriter getOutput() {
        return output;
    }

    public BufferedReader getInput() {
        return input;
    }

    public Env getEnv() {
        return env;
    }

    @TruffleBoundary
    public LamaModule registerModule(String moduleName) {
        if (moduleRegistry.containsKey(moduleName)) {
            throw new RuntimeException("Circular import dependency detected involving: " + moduleName);
        }
        LamaModule module = new LamaModule();
        RegistryEntry entry = new RegistryEntry(module);
        moduleRegistry.put(moduleName, entry);
        return module;
    }

    @TruffleBoundary
    public void markEvaluated(String moduleName) {
        RegistryEntry entry = moduleRegistry.get(moduleName);
        if (entry == null) {
            throw new IllegalArgumentException("Module '" + moduleName + "' is not registered");
        }
        entry.state = RegistryEntry.State.EVALUATED;
    }

    @TruffleBoundary
    public void evalModule(String moduleName) {
        RegistryEntry record = moduleRegistry.get(moduleName);
        if (record == null) {
            CallTarget target = parseModule(moduleName);
            target.call();
        } else if (record.state == RegistryEntry.State.EVALUATING) {
            throw new RuntimeException("Circular import dependency detected involving: " + moduleName);
        }
    }

    @TruffleBoundary
    public LamaModule getModule(String name) {
        RegistryEntry entry = moduleRegistry.get(name);
        if (entry == null) {
            throw new IllegalArgumentException("Module '" + name + "' is not registered");
        }
        return entry.module;
    }

    @TruffleBoundary
    public DynamicObject findModuleDeclaringVariable(String currentModuleName, String variableName) {
        LamaModule currentModule = getModule(currentModuleName);
        if (DynamicObjectLibrary.getUncached().containsKey(currentModule.locals, variableName)) {
            return currentModule.locals;
        }
        if (DynamicObjectLibrary.getUncached().containsKey(currentModule.exports, variableName)) {
            return currentModule.exports;
        }

        List<String> wildcards = currentModule.imports;
        for (String importedModuleName : wildcards) {
            LamaModule importedModule = getModule(importedModuleName);
            if (DynamicObjectLibrary.getUncached().containsKey(importedModule.exports, variableName)) {
                return importedModule.exports;
            }
        }

        if (DynamicObjectLibrary.getUncached().containsKey(builtins, variableName)) {
            return builtins;
        }

        throw new IllegalArgumentException("Undefined variable '" + variableName + "'");
    }

    private CallTarget parseModule(String path) {
        try {
            TruffleFile file = findModuleFile(path);
            Source source = Source.newBuilder(LamaLanguage.ID, file).name(path).build();
            return env.parsePublic(source);
        } catch (Exception e) {
            throw new RuntimeException("Failed to load module: " + path, e);
        }
    }

    private TruffleFile findModuleFile(String path) {
        String moduleFileName = path + ".lama";
        for (String searchPath : unitSearchPaths) {
            TruffleFile file = env.getPublicTruffleFile(searchPath).resolve(moduleFileName);
            if (file.exists()) {
                return file;
            }
        }
        throw new IllegalArgumentException("Module '" + path + "' was not found in unit search path list: " + String.join(", ", unitSearchPaths));
    }

    private void registerBuiltins() {
        registerBuiltIn(LamaWriteBuiltinNodeFactory.create());
        registerBuiltIn(LamaReadBuiltinNodeFactory.create());
        registerBuiltIn(LamaLengthBuiltinNodeFactory.create());
        registerBuiltIn(LamaStringBuiltinNodeFactory.create());
    }

    private void registerBuiltIn(LamaBuiltinNode builtin) {
        String name = lookupNodeInfo(builtin.getClass()).shortName();
        LamaRootNode lamaRootNode = new LamaRootNode(
                language, new FrameDescriptor(),
                new LamaBuiltinAstNode(builtin),
                Source.newBuilder(LamaLanguage.ID, "", "<builtin> " + name).build().createUnavailableSection(),
                name
        );
        DynamicObjectLibrary.getUncached().put(builtins, name, new LamaFunction(lamaRootNode.getCallTarget(), null));
    }

    private NodeInfo lookupNodeInfo(Class<?> clazz) {
        if (clazz == null) {
            return null;
        }
        NodeInfo info = clazz.getAnnotation(NodeInfo.class);
        if (info != null) {
            return info;
        } else {
            return lookupNodeInfo(clazz.getSuperclass());
        }
    }

    private static class RegistryEntry {
        public LamaModule module;
        State state = State.EVALUATING;
        RegistryEntry(LamaModule module) {
            this.module = module;
        }
        private enum State {
            EVALUATING,
            EVALUATED
        }
    }
}