package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.LamaLanguage;

public class Utils {
    public static Object[] packScopeIntoArguments(Object[] userArgs, Object lexicalScope) {
        Object[] newArgs = new Object[userArgs.length + 1];
        newArgs[0] = lexicalScope;
        System.arraycopy(userArgs, 0, newArgs, 1, userArgs.length);
        return newArgs;
    }

    @ExplodeLoop
    public static Object[] capture(VirtualFrame frame) {
        int numberOfSlots = frame.getFrameDescriptor().getNumberOfSlots();
        Object[] captured = new Object[numberOfSlots + 1];
        captured[0] = frame.getArguments().length > 0 ? frame.getArguments()[0] : null;
        for (int i = 0; i < numberOfSlots; i++) {
            captured[i + 1] = frame.getValue(i);
        }
        return captured;
    }

    public static String stripFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        return (dotIndex > 0) ? fileName.substring(0, dotIndex) : fileName;
    }

    public static TruffleString fromJavaString(String s) {
        return TruffleString.fromJavaStringUncached(s, LamaLanguage.STRING_ENCODING);
    }

    public static String displayElement(Object value) {
        if (value instanceof Long l) {
            return Long.toString(l);
        }
        if (value instanceof LamaString s) {
            return "\"" + s + "\"";
        }
        return String.valueOf(value);
    }
}
