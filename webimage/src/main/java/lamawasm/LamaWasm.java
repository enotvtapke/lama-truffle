package lamawasm;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.io.FileSystem;
import org.graalvm.polyglot.io.IOAccess;
import org.graalvm.webimage.api.JS;
import org.graalvm.webimage.api.JSString;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.AccessMode;
import java.nio.file.DirectoryStream;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/**
 * Browser entry point for the Lama Truffle interpreter compiled with GraalVM
 * Web Image.
 *
 * Installs two JS-callable functions:
 *   globalThis.setLamaInput(text)  -- sets the stdin fed to read()/readLine()
 *   globalThis.runLama(source)     -- evaluates a Lama program, returns its output
 *
 * Standard-library units (Array, List, Data, ...) are embedded as resources and
 * served to the interpreter through an in-memory {@link FileSystem} mounted at
 * {@value #STDLIB_DIR}, so {@code import Array;} etc. work with no host FS.
 *
 * Everything runs on the calling thread (Web Image is single-threaded); there is
 * no host IO and no thread spawning.
 */
public final class LamaWasm {

    private static final String LAMA = "lama";
    private static final String STDLIB_DIR = "/stdlib";

    /** stdin content for the next runLama() call (set via setLamaInput). */
    private static String stdin = "";

    /** In-memory filesystem holding the embedded standard library. */
    private static final InMemoryFileSystem STDLIB = loadStdlib();

    static {
        // Web Image reports the OS as "Browser", which the polyglot engine
        // rejects unless we opt in. We also run interpreter-only (no Graal JIT
        // under WASM), so silence the performance warning.
        System.setProperty("polyglot.engine.allowUnsupportedPlatform", "true");
        System.setProperty("polyglot.engine.WarnInterpreterOnly", "false");
        System.setProperty("polyglot.engine.userResourceCache", "/truffle-cache");
    }

    @JS(args = {"handler"}, value = "globalThis.runLama = handler;")
    private static native void installRunLama(Function<JSString, JSString> handler);

    @JS(args = {"handler"}, value = "globalThis.setLamaInput = handler;")
    private static native void installSetInput(Function<JSString, JSString> handler);

    static JSString setInput(JSString text) {
        stdin = text.asString();
        return JSString.of("ok");
    }

    static JSString runLama(JSString sourceArg) {
        String source = sourceArg.asString();
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        PrintStream out = new PrintStream(buffer, true, StandardCharsets.UTF_8);
        InputStream in = new ByteArrayInputStream(stdin.getBytes(StandardCharsets.UTF_8));
        IOAccess io = IOAccess.newBuilder().fileSystem(STDLIB).build();
        try (Context context = Context.newBuilder(LAMA)
                .in(in)
                .out(out)
                .err(out)
                .allowIO(io)
                .option("lama.UnitSearchPath", STDLIB_DIR)
                .option("lama.ReadPrompt", "false")  // non-interactive batch sandbox
                .build()) {
            Source program = Source.newBuilder(LAMA, source, "<sandbox>").interactive(false).build();
            context.eval(program);
            out.flush();
            return JSString.of(buffer.toString(StandardCharsets.UTF_8));
        } catch (PolyglotException ex) {
            out.flush();
            String text = buffer.toString(StandardCharsets.UTF_8);
            return JSString.of(text + "\n[error] " + ex.getMessage());
        } catch (Throwable t) {
            return JSString.of("[internal error] " + t);
        }
    }

    public static void main(String[] args) {
        installRunLama(LamaWasm::runLama);
        installSetInput(LamaWasm::setInput);
        System.out.println("Lama sandbox ready: " + STDLIB.files.size()
                + " stdlib units; call runLama(source)");
    }

    // ------------------------------------------------------------------
    // Embedded standard library
    // ------------------------------------------------------------------

    private static InMemoryFileSystem loadStdlib() {
        Map<String, byte[]> files = new LinkedHashMap<>();
        try (InputStream indexStream = LamaWasm.class.getResourceAsStream("/lamastd/index.txt")) {
            if (indexStream != null) {
                String index = new String(indexStream.readAllBytes(), StandardCharsets.UTF_8);
                for (String name : index.split("\\R")) {
                    name = name.trim();
                    if (name.isEmpty()) {
                        continue;
                    }
                    try (InputStream f = LamaWasm.class.getResourceAsStream("/lamastd/" + name)) {
                        if (f != null) {
                            files.put(STDLIB_DIR + "/" + name, f.readAllBytes());
                        }
                    }
                }
            }
        } catch (IOException e) {
            System.err.println("[lama] failed to load embedded stdlib: " + e);
        }
        return new InMemoryFileSystem(files);
    }

    /**
     * Minimal read-only in-memory filesystem exposing the embedded stdlib under
     * a single directory. Only the operations the Lama import machinery performs
     * are supported (existence checks, attribute reads, sequential reads,
     * directory listing).
     */
    static final class InMemoryFileSystem implements FileSystem {
        final Map<String, byte[]> files;

        InMemoryFileSystem(Map<String, byte[]> files) {
            this.files = files;
        }

        private static String key(Path path) {
            return path.toAbsolutePath().normalize().toString();
        }

        @Override
        public Path parsePath(URI uri) {
            return Paths.get(uri);
        }

        @Override
        public Path parsePath(String path) {
            return Paths.get(path);
        }

        @Override
        public Path toAbsolutePath(Path path) {
            return path.isAbsolute() ? path : Paths.get("/").resolve(path);
        }

        @Override
        public Path toRealPath(Path path, LinkOption... options) {
            return toAbsolutePath(path).normalize();
        }

        @Override
        public void checkAccess(Path path, Set<? extends AccessMode> modes, LinkOption... options) throws IOException {
            String k = key(path);
            if (files.containsKey(k) || k.equals(STDLIB_DIR)) {
                return;
            }
            throw new NoSuchFileException(k);
        }

        @Override
        public Map<String, Object> readAttributes(Path path, String attributes, LinkOption... options) throws IOException {
            String k = key(path);
            boolean isFile = files.containsKey(k);
            boolean isDir = k.equals(STDLIB_DIR);
            if (!isFile && !isDir) {
                throw new NoSuchFileException(k);
            }
            Map<String, Object> attrs = new HashMap<>();
            attrs.put("isRegularFile", isFile);
            attrs.put("isDirectory", isDir);
            attrs.put("isSymbolicLink", false);
            attrs.put("isOther", false);
            attrs.put("size", isFile ? (long) files.get(k).length : 0L);
            FileTime zero = FileTime.fromMillis(0);
            attrs.put("creationTime", zero);
            attrs.put("lastModifiedTime", zero);
            attrs.put("lastAccessTime", zero);
            return attrs;
        }

        @Override
        public SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> options, FileAttribute<?>... attrs) throws IOException {
            byte[] data = files.get(key(path));
            if (data == null) {
                throw new NoSuchFileException(key(path));
            }
            return new ByteArrayChannel(data);
        }

        @Override
        public DirectoryStream<Path> newDirectoryStream(Path dir, DirectoryStream.Filter<? super Path> filter) throws IOException {
            String prefix = key(dir) + "/";
            List<Path> children = new ArrayList<>();
            for (String k : files.keySet()) {
                if (k.startsWith(prefix) && k.indexOf('/', prefix.length()) < 0) {
                    children.add(Paths.get(k));
                }
            }
            return new DirectoryStream<>() {
                @Override
                public java.util.Iterator<Path> iterator() {
                    return children.iterator();
                }

                @Override
                public void close() {
                }
            };
        }

        @Override
        public void createDirectory(Path dir, FileAttribute<?>... attrs) throws IOException {
            throw new IOException("read-only filesystem");
        }

        @Override
        public void delete(Path path) throws IOException {
            throw new IOException("read-only filesystem");
        }

        @Override
        public String getSeparator() {
            return "/";
        }

        @Override
        public String getPathSeparator() {
            return ":";
        }
    }

    /** Read-only SeekableByteChannel over a byte array. */
    static final class ByteArrayChannel implements SeekableByteChannel {
        private final byte[] data;
        private int position;
        private boolean open = true;

        ByteArrayChannel(byte[] data) {
            this.data = data;
        }

        @Override
        public int read(ByteBuffer dst) {
            if (position >= data.length) {
                return -1;
            }
            int n = Math.min(dst.remaining(), data.length - position);
            dst.put(data, position, n);
            position += n;
            return n;
        }

        @Override
        public int write(ByteBuffer src) {
            throw new UnsupportedOperationException("read-only");
        }

        @Override
        public long position() {
            return position;
        }

        @Override
        public SeekableByteChannel position(long newPosition) {
            this.position = (int) newPosition;
            return this;
        }

        @Override
        public long size() {
            return data.length;
        }

        @Override
        public SeekableByteChannel truncate(long size) {
            throw new UnsupportedOperationException("read-only");
        }

        @Override
        public boolean isOpen() {
            return open;
        }

        @Override
        public void close() {
            open = false;
        }
    }
}
