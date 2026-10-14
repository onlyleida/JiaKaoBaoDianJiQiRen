package okio;

import com.iflytek.cloud.SpeechEvent;
import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H'¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\b\u0010\fJ'\u0010\b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH&¢\u0006\u0004\b\b\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u0011H&¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0012H&¢\u0006\u0004\b\b\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H&¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rH&¢\u0006\u0004\b\u0018\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\rH&¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010\"\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010!\u001a\u00020 H&¢\u0006\u0004\b\"\u0010#J/\u0010\"\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H&¢\u0006\u0004\b\"\u0010$J\u0017\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\rH&¢\u0006\u0004\b&\u0010\u001fJ\u0017\u0010(\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH&¢\u0006\u0004\b(\u0010\u001fJ\u0017\u0010)\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH&¢\u0006\u0004\b)\u0010\u001fJ\u0017\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\rH&¢\u0006\u0004\b+\u0010\u001fJ\u0017\u0010,\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\rH&¢\u0006\u0004\b,\u0010\u001fJ\u0017\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0012H&¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0012H&¢\u0006\u0004\b0\u0010/J\u0017\u00101\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0012H&¢\u0006\u0004\b1\u0010/J\u0017\u00102\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0012H&¢\u0006\u0004\b2\u0010/J\u000f\u00104\u001a\u000203H&¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0000H&¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0000H&¢\u0006\u0004\b8\u00107J\u000f\u0010:\u001a\u000209H&¢\u0006\u0004\b:\u0010;R\u0016\u0010\u0004\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u0005¨\u0006="}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "Lokio/Buffer;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "()Lokio/Buffer;", "Lokio/ByteString;", "byteString", "write", "(Lokio/ByteString;)Lokio/BufferedSink;", "", SocialConstants.PARAM_SOURCE, "([B)Lokio/BufferedSink;", "", "offset", "byteCount", "([BII)Lokio/BufferedSink;", "Lokio/Source;", "", "writeAll", "(Lokio/Source;)J", "(Lokio/Source;J)Lokio/BufferedSink;", "", "string", "writeUtf8", "(Ljava/lang/String;)Lokio/BufferedSink;", "beginIndex", "endIndex", "(Ljava/lang/String;II)Lokio/BufferedSink;", "codePoint", "writeUtf8CodePoint", "(I)Lokio/BufferedSink;", "Ljava/nio/charset/Charset;", "charset", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;", "b", "writeByte", "s", "writeShort", "writeShortLe", "i", "writeInt", "writeIntLe", "v", "writeLong", "(J)Lokio/BufferedSink;", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "Lkotlin/v;", "flush", "()V", "emit", "()Lokio/BufferedSink;", "emitCompleteSegments", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "getBuffer", "jvm"}, k = 1, mv = {1, 1, 15})
public interface BufferedSink extends Sink, WritableByteChannel {
    Buffer buffer();

    BufferedSink emit() throws IOException;

    BufferedSink emitCompleteSegments() throws IOException;

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    Buffer getBuffer();

    OutputStream outputStream();

    BufferedSink write(ByteString byteString) throws IOException;

    BufferedSink write(Source source, long byteCount) throws IOException;

    BufferedSink write(byte[] source) throws IOException;

    BufferedSink write(byte[] source, int offset, int byteCount) throws IOException;

    long writeAll(Source source) throws IOException;

    BufferedSink writeByte(int b) throws IOException;

    BufferedSink writeDecimalLong(long v) throws IOException;

    BufferedSink writeHexadecimalUnsignedLong(long v) throws IOException;

    BufferedSink writeInt(int i) throws IOException;

    BufferedSink writeIntLe(int i) throws IOException;

    BufferedSink writeLong(long v) throws IOException;

    BufferedSink writeLongLe(long v) throws IOException;

    BufferedSink writeShort(int s) throws IOException;

    BufferedSink writeShortLe(int s) throws IOException;

    BufferedSink writeString(String string, int beginIndex, int endIndex, Charset charset) throws IOException;

    BufferedSink writeString(String string, Charset charset) throws IOException;

    BufferedSink writeUtf8(String string) throws IOException;

    BufferedSink writeUtf8(String string, int beginIndex, int endIndex) throws IOException;

    BufferedSink writeUtf8CodePoint(int codePoint) throws IOException;
}
