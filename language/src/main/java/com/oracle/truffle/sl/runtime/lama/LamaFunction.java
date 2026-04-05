package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;

import static com.oracle.truffle.sl.runtime.lama.Utils.packScopeIntoArguments;

@ExportLibrary(InteropLibrary.class)
public final class LamaFunction implements TruffleObject {
    public final CallTarget callTarget;
    public final Object[] lexicalScope;

    public LamaFunction(CallTarget callTarget, Object[] lexicalScope) {
        this.callTarget = callTarget;
        this.lexicalScope = lexicalScope;
    }

    @ExportMessage
    public boolean isExecutable() {
        return true;
    }

    @ExportMessage
    public Object execute(Object[] arguments) {
        Object[] argsWithScope = packScopeIntoArguments(arguments, lexicalScope);

        return this.callTarget.call(argsWithScope);
    }
}