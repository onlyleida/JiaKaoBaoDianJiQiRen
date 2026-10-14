package okio;

import com.iflytek.cloud.SpeechEvent;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0005*\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006\u001a\u0011\u0010\b\u001a\u00020\u0004*\u00020\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u0011\u0010\u000b\u001a\u00020\u0000*\u00020\n¢\u0006\u0004\b\u000b\u0010\f\u001a\u000f\u0010\u000f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a\u0011\u0010\b\u001a\u00020\u0004*\u00020\u0010¢\u0006\u0004\b\b\u0010\u0011\u001a\u0011\u0010\u000b\u001a\u00020\u0000*\u00020\u0010¢\u0006\u0004\b\u000b\u0010\u0012\u001a\u001d\u0010\b\u001a\u00020\u0004*\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\b\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u00020\u0004*\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0011\u0010\u000b\u001a\u00020\u0000*\u00020\u0013¢\u0006\u0004\b\u000b\u0010\u0019\u001a'\u0010\b\u001a\u00020\u0004*\u00020\u001a2\u0012\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001c0\u001b\"\u00020\u001cH\u0007¢\u0006\u0004\b\b\u0010\u001e\u001a'\u0010\u000b\u001a\u00020\u0000*\u00020\u001a2\u0012\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001c0\u001b\"\u00020\u001cH\u0007¢\u0006\u0004\b\u000b\u0010\u001f\"\u001e\u0010\"\u001a\u00020\u0014*\u00060 j\u0002`!8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lokio/Source;", "Lokio/BufferedSource;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "(Lokio/Source;)Lokio/BufferedSource;", "Lokio/Sink;", "Lokio/BufferedSink;", "(Lokio/Sink;)Lokio/BufferedSink;", "Ljava/io/OutputStream;", "sink", "(Ljava/io/OutputStream;)Lokio/Sink;", "Ljava/io/InputStream;", SocialConstants.PARAM_SOURCE, "(Ljava/io/InputStream;)Lokio/Source;", "blackhole", "()Lokio/Sink;", "blackholeSink", "Ljava/net/Socket;", "(Ljava/net/Socket;)Lokio/Sink;", "(Ljava/net/Socket;)Lokio/Source;", "Ljava/io/File;", "", "append", "(Ljava/io/File;Z)Lokio/Sink;", "appendingSink", "(Ljava/io/File;)Lokio/Sink;", "(Ljava/io/File;)Lokio/Source;", "Ljava/nio/file/Path;", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "isAndroidGetsocknameError", "(Ljava/lang/AssertionError;)Z", "jvm"}, k = 2, mv = {1, 1, 15})
public final class Okio {
    public static final Sink appendingSink(File receiver) throws FileNotFoundException {
        r.f(receiver, "$receiver");
        return sink(new FileOutputStream(receiver, true));
    }

    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    public static final BufferedSource buffer(Source receiver) {
        r.f(receiver, "$receiver");
        return new buffer(receiver);
    }

    public static final boolean isAndroidGetsocknameError(AssertionError receiver) {
        r.f(receiver, "$receiver");
        if (receiver.getCause() == null) {
            return false;
        }
        String message = receiver.getMessage();
        return message != null ? StringsKt__StringsKt.G(message, "getsockname failed", false, 2, null) : false;
    }

    public static final Sink sink(File file) throws FileNotFoundException {
        return sink$default(file, false, 1, null);
    }

    public static final Sink sink(OutputStream receiver) {
        r.f(receiver, "$receiver");
        return new sink(receiver, new Timeout());
    }

    public static /* bridge */ /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return sink(file, z);
    }

    public static final Source source(InputStream receiver) {
        r.f(receiver, "$receiver");
        return new source(receiver, new Timeout());
    }

    public static final BufferedSink buffer(Sink receiver) {
        r.f(receiver, "$receiver");
        return new buffer(receiver);
    }

    public static final Sink sink(Socket receiver) throws IOException {
        r.f(receiver, "$receiver");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(receiver);
        OutputStream outputStream = receiver.getOutputStream();
        r.b(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new sink(outputStream, socketAsyncTimeout));
    }

    public static final Source source(Socket receiver) throws IOException {
        r.f(receiver, "$receiver");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(receiver);
        InputStream inputStream = receiver.getInputStream();
        r.b(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new source(inputStream, socketAsyncTimeout));
    }

    public static final Sink sink(File receiver, boolean z) throws FileNotFoundException {
        r.f(receiver, "$receiver");
        return sink(new FileOutputStream(receiver, z));
    }

    public static final Source source(File receiver) throws FileNotFoundException {
        r.f(receiver, "$receiver");
        return source(new FileInputStream(receiver));
    }

    @IgnoreJRERequirement
    public static final Sink sink(Path receiver, OpenOption... options) throws IOException {
        r.f(receiver, "$receiver");
        r.f(options, "options");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(receiver, (OpenOption[]) Arrays.copyOf(options, options.length));
        r.b(outputStreamNewOutputStream, "Files.newOutputStream(this, *options)");
        return sink(outputStreamNewOutputStream);
    }

    @IgnoreJRERequirement
    public static final Source source(Path receiver, OpenOption... options) throws IOException {
        r.f(receiver, "$receiver");
        r.f(options, "options");
        InputStream inputStreamNewInputStream = Files.newInputStream(receiver, (OpenOption[]) Arrays.copyOf(options, options.length));
        r.b(inputStreamNewInputStream, "Files.newInputStream(this, *options)");
        return source(inputStreamNewInputStream);
    }
}
