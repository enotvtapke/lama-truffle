package com.oracle.truffle.lama.runtime;

import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;

/**
 * The set of frame slots that are captured by at least one nested closure of a
 * function, attached to that function's {@link com.oracle.truffle.api.frame.FrameDescriptor}
 * via {@code FrameDescriptor.getInfo()}.
 */
public final class CapturedSlots {
    @CompilationFinal(dimensions = 1)
    public final int[] slots;

    public CapturedSlots(int[] slots) {
        this.slots = slots;
    }
}
