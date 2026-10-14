package okio;

import com.iflytek.cloud.SpeechEvent;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.-DeprecatedOkio, reason: invalid class name */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\t\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\t\u0010\u000eJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0007\u0010\u0011J+\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u0014\"\u00020\u0015H\u0007¢\u0006\u0004\b\u0007\u0010\u0017J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0007¢\u0006\u0004\b\u0007\u0010\u001aJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\f\u0010\u001bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0004\b\f\u0010\u001eJ+\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u0014\"\u00020\u0015H\u0007¢\u0006\u0004\b\f\u0010\u001fJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0007¢\u0006\u0004\b\f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0007¢\u0006\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lokio/-DeprecatedOkio;", "", "Ljava/io/File;", "file", "Lokio/Sink;", "appendingSink", "(Ljava/io/File;)Lokio/Sink;", "sink", "Lokio/BufferedSink;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "(Lokio/Sink;)Lokio/BufferedSink;", "Lokio/Source;", SocialConstants.PARAM_SOURCE, "Lokio/BufferedSource;", "(Lokio/Source;)Lokio/BufferedSource;", "Ljava/io/OutputStream;", "outputStream", "(Ljava/io/OutputStream;)Lokio/Sink;", "Ljava/nio/file/Path;", "path", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "Ljava/net/Socket;", "socket", "(Ljava/net/Socket;)Lokio/Sink;", "(Ljava/io/File;)Lokio/Source;", "Ljava/io/InputStream;", "inputStream", "(Ljava/io/InputStream;)Lokio/Source;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "(Ljava/net/Socket;)Lokio/Source;", "blackhole", "()Lokio/Sink;", "<init>", "()V", "jvm"}, k = 1, mv = {1, 1, 15})
public final class DeprecatedOkio {
    public static final DeprecatedOkio INSTANCE = new DeprecatedOkio();

    private DeprecatedOkio() {
    }

    public final Sink appendingSink(File file) {
        r.f(file, "file");
        return Okio.appendingSink(file);
    }

    public final Sink blackhole() {
        return Okio.blackhole();
    }

    public final BufferedSink buffer(Sink sink) {
        r.f(sink, "sink");
        return Okio.buffer(sink);
    }

    public final Sink sink(File file) {
        r.f(file, "file");
        return Okio.sink$default(file, false, 1, null);
    }

    public final Source source(File file) {
        r.f(file, "file");
        return Okio.source(file);
    }

    public final BufferedSource buffer(Source source) {
        r.f(source, "source");
        return Okio.buffer(source);
    }

    public final Sink sink(OutputStream outputStream) {
        r.f(outputStream, "outputStream");
        return Okio.sink(outputStream);
    }

    public final Source source(InputStream inputStream) {
        r.f(inputStream, "inputStream");
        return Okio.source(inputStream);
    }

    public final Sink sink(Path path, OpenOption... options) {
        r.f(path, "path");
        r.f(options, "options");
        return Okio.sink(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    public final Source source(Path path, OpenOption... options) {
        r.f(path, "path");
        r.f(options, "options");
        return Okio.source(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    public final Sink sink(Socket socket) {
        r.f(socket, "socket");
        return Okio.sink(socket);
    }

    public final Source source(Socket socket) {
        r.f(socket, "socket");
        return Okio.source(socket);
    }
}
