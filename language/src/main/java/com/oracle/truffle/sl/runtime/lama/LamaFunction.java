package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;

@ExportLibrary(InteropLibrary.class)
public final class LamaFunction implements TruffleObject {
    public final CallTarget callTarget;
    public final MaterializedFrame lexicalScope;

    public LamaFunction(CallTarget callTarget, MaterializedFrame lexicalScope) {
        this.callTarget = callTarget;
        this.lexicalScope = lexicalScope;
    }

    @ExportMessage
    public boolean isExecutable() {
        return true;
    }

    @ExportMessage
    public Object execute(Object[] arguments) {
        Object[] argsWithScope = packScopeIntoArguments(arguments);

        return this.callTarget.call(argsWithScope);
    }

    private Object[] packScopeIntoArguments(Object[] userArgs) {
        Object[] newArgs = new Object[userArgs.length + 1];
        newArgs[0] = lexicalScope;
        System.arraycopy(userArgs, 0, newArgs, 1, userArgs.length);
        return newArgs;
    }
}