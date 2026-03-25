package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.LamaLanguage;

public class Utils {
    public static Object[] packScopeIntoArguments(Object[] userArgs, Object lexicalScope) {
        Object[] newArgs = new Object[userArgs.length + 1];
        newArgs[0] = lexicalScope;
        System.arraycopy(userArgs, 0, newArgs, 1, userArgs.length);
        return newArgs;
    }

    public static String stripFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        return (dotIndex > 0) ? fileName.substring(0, dotIndex) : fileName;
    }

    public static TruffleString fromJavaString(String s) {
        return TruffleString.fromJavaStringUncached(s, LamaLanguage.STRING_ENCODING);
    }
}
