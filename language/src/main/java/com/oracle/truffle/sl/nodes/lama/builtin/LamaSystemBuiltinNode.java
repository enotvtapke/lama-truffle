package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.io.File;
import java.io.IOException;

/**
 * Reference: {@code extern aint Lsystem (char *cmd) { return BOX(system(cmd)); }}.
 *
 * <p>On Linux the POSIX {@code system(3)} return value is the status
 * produced by {@code wait(2)}: for a normal exit it encodes the exit
 * code shifted left by 8 (so {@code system("false")} returns {@code 256},
 * {@code system("exit 42")} returns {@code 10752}). The Truffle
 * implementation reproduces that shape by running {@code /bin/sh -c cmd}
 * and encoding the process exit code the same way. If the command
 * could not be launched at all we return {@code -1}, matching the
 * {@code system(3)} contract.</p>
 */
@NodeInfo(shortName = "system")
public abstract class LamaSystemBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long doSystem(LamaString cmd, @Bind LamaContext context) {
        ProcessBuilder pb = new ProcessBuilder("/bin/sh", "-c", cmd.toString())
                .redirectInput(ProcessBuilder.Redirect.INHERIT)
                .redirectOutput(ProcessBuilder.Redirect.INHERIT)
                .redirectError(ProcessBuilder.Redirect.INHERIT);
        // Run the child in the Context's current working directory, the same
        // directory that the language's file IO (e.g. fwrite) resolves relative
        // paths against. Without this the child would inherit the JVM cwd, so a
        // command like `gcc foo.s` could fail to find files just written by the
        // guest program when the Context's cwd differs from the JVM's.
        TruffleFile cwd = context.getEnv().getCurrentWorkingDirectory();
        if (cwd != null) {
            pb.directory(new File(cwd.getPath()));
        }
        // Flush our own buffered writer so that child output is ordered
        // after any pending interpreter output (printf buffers through it).
        context.getOutput().flush();

        Process process;
        try {
            process = pb.start();
        } catch (IOException e) {
            return -1L;
        }
        int exit;
        try {
            exit = process.waitFor();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw LamaException.create("system: interrupted while waiting for child", this);
        }
        // Match the Linux `wait(2)` encoding used by the reference runtime:
        // low 8 bits carry signal info (unavailable via Process#waitFor, always 0),
        // bits 8..15 carry the exit code.
        return ((long) exit & 0xff) << 8;
    }
}
