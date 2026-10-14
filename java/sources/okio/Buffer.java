package okio;

import com.google.common.primitives.UnsignedBytes;
import com.iflytek.cloud.SpeechEvent;
import com.tencent.open.SocialConstants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.RealBufferedSource, reason: from toString */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\n\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010f\u001a\u00020e¢\u0006\u0004\bl\u0010mJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010!J\u0017\u0010\b\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\b\u0010\"J\u0017\u0010#\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u001eH\u0016¢\u0006\u0004\b#\u0010$J'\u0010\b\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\b\u0010&J\u0017\u0010\b\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020'H\u0016¢\u0006\u0004\b\b\u0010(J\u001f\u0010#\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010)J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u0010.\u001a\u00020-2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u00100J\u0017\u00103\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J\u001f\u00103\u001a\u00020-2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00105J\u0011\u00106\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b6\u0010/J\u000f\u00107\u001a\u00020-H\u0016¢\u0006\u0004\b7\u0010/J\u0017\u00107\u001a\u00020-2\u0006\u00108\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u00100J\u000f\u00109\u001a\u00020\u001bH\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020;H\u0016¢\u0006\u0004\b>\u0010=J\u000f\u0010?\u001a\u00020\u001bH\u0016¢\u0006\u0004\b?\u0010:J\u000f\u0010@\u001a\u00020\u001bH\u0016¢\u0006\u0004\b@\u0010:J\u000f\u0010A\u001a\u00020\u0006H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010BJ\u000f\u0010D\u001a\u00020\u0006H\u0016¢\u0006\u0004\bD\u0010BJ\u000f\u0010E\u001a\u00020\u0006H\u0016¢\u0006\u0004\bE\u0010BJ\u0017\u0010F\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\bF\u0010\u000fJ\u0017\u0010H\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0012H\u0016¢\u0006\u0004\bH\u0010IJ\u001f\u0010H\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00122\u0006\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bH\u0010KJ'\u0010H\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00122\u0006\u0010J\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u0006H\u0016¢\u0006\u0004\bH\u0010MJ\u0017\u0010H\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0015H\u0016¢\u0006\u0004\bH\u0010OJ\u001f\u0010H\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bH\u0010PJ\u0017\u0010R\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u0015H\u0016¢\u0006\u0004\bR\u0010OJ\u001f\u0010R\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bR\u0010PJ\u001f\u0010S\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0015H\u0016¢\u0006\u0004\bS\u0010TJ/\u0010S\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u00152\u0006\u0010U\u001a\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\u001bH\u0016¢\u0006\u0004\bS\u0010VJ\u000f\u0010W\u001a\u00020\u0001H\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Z\u001a\u00020YH\u0016¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020\nH\u0016¢\u0006\u0004\b\\\u0010\fJ\u000f\u0010]\u001a\u00020\rH\u0016¢\u0006\u0004\b]\u0010^J\u000f\u0010`\u001a\u00020_H\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020-H\u0016¢\u0006\u0004\bb\u0010/R\u001d\u0010\u0003\u001a\u00020\u00028Ö\u0002@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bd\u0010^\u001a\u0004\bc\u0010\u0004R\u0016\u0010f\u001a\u00020e8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010h\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010j\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bj\u0010k¨\u0006n"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "Lokio/Buffer;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "()Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "exhausted", "()Z", "Lkotlin/v;", "require", "(J)V", SocialConstants.TYPE_REQUEST, "(J)Z", "", "readByte", "()B", "Lokio/ByteString;", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "", "select", "(Lokio/Options;)I", "", "readByteArray", "()[B", "(J)[B", "([B)I", "readFully", "([B)V", "offset", "([BII)I", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "(Lokio/Buffer;J)V", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "()I", "", "readShort", "()S", "readShortLe", "readInt", "readIntLe", "readLong", "()J", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "skip", "b", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "isOpen", "close", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "toString", "getBuffer", "buffer$annotations", "Lokio/Source;", SocialConstants.PARAM_SOURCE, "Lokio/Source;", "bufferField", "Lokio/Buffer;", "closed", "Z", "<init>", "(Lokio/Source;)V", "jvm"}, k = 1, mv = {1, 1, 15})
public final class buffer implements BufferedSource {
    public final Buffer bufferField;
    public boolean closed;
    public final Source source;

    public buffer(Source source) {
        r.f(source, "source");
        this.source = source;
        this.bufferField = new Buffer();
    }

    public static /* synthetic */ void buffer$annotations() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    /* JADX INFO: renamed from: buffer, reason: from getter */
    public Buffer getBufferField() {
        return this.bufferField;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            return this.bufferField.exhausted() && this.source.read(this.bufferField, (long) 8192) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes) {
        r.f(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource.inputStream.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                buffer bufferVar = buffer.this;
                if (bufferVar.closed) {
                    throw new IOException("closed");
                }
                return (int) Math.min(bufferVar.bufferField.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                buffer.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                buffer bufferVar = buffer.this;
                if (bufferVar.closed) {
                    throw new IOException("closed");
                }
                if (bufferVar.bufferField.size() == 0) {
                    buffer bufferVar2 = buffer.this;
                    if (bufferVar2.source.read(bufferVar2.bufferField, 8192) == -1) {
                        return -1;
                    }
                }
                return buffer.this.bufferField.readByte() & UnsignedBytes.MAX_VALUE;
            }

            public String toString() {
                return buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] data, int offset, int byteCount) throws IOException {
                r.f(data, "data");
                if (!buffer.this.closed) {
                    Util.checkOffsetAndCount(data.length, offset, byteCount);
                    if (buffer.this.bufferField.size() == 0) {
                        buffer bufferVar = buffer.this;
                        if (bufferVar.source.read(bufferVar.bufferField, 8192) == -1) {
                            return -1;
                        }
                    }
                    return buffer.this.bufferField.read(data, offset, byteCount);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, ByteString bytes) {
        r.f(bytes, "bytes");
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) {
        r.f(sink, "sink");
        if (!(byteCount >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        if (!(true ^ this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1L;
        }
        return this.bufferField.read(sink, Math.min(byteCount, this.bufferField.size()));
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        r.f(sink, "sink");
        long j = 0;
        while (this.source.read(this.bufferField, 8192) != -1) {
            long jCompleteSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j += jCompleteSegmentByteCount;
                sink.write(this.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (this.bufferField.size() <= 0) {
            return j;
        }
        long size = j + this.bufferField.size();
        Buffer buffer = this.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long byteCount) throws EOFException {
        require(byteCount);
        return this.bufferField.readByteArray(byteCount);
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long byteCount) throws EOFException {
        require(byteCount);
        return this.bufferField.readByteString(byteCount);
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws EOFException {
        require(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            if (!request(j2)) {
                break;
            }
            byte b = this.bufferField.getByte(j);
            if ((b < ((byte) 48) || b > ((byte) 57)) && !(j == 0 && b == ((byte) 45))) {
                if (j != 0) {
                    break;
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String str = String.format("Expected leading [0-9] or '-' character but was %#x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                r.b(str, "java.lang.String.format(format, *args)");
                throw new NumberFormatException(str);
            }
            j = j2;
        }
        return this.bufferField.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) throws EOFException {
        r.f(sink, "sink");
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e2) {
            int i = 0;
            while (this.bufferField.size() > 0) {
                Buffer buffer = this.bufferField;
                int i2 = buffer.read(sink, i, (int) buffer.size());
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
            throw e2;
        }
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws EOFException {
        require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            byte b = this.bufferField.getByte(i);
            if ((b < ((byte) 48) || b > ((byte) 57)) && ((b < ((byte) 97) || b > ((byte) 102)) && (b < ((byte) 65) || b > ((byte) 70)))) {
                if (i != 0) {
                    break;
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String str = String.format("Expected leading [0-9a-fA-F] character but was %#x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                r.b(str, "java.lang.String.format(format, *args)");
                throw new NumberFormatException(str);
            }
            i = i2;
        }
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        require(8L);
        return this.bufferField.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public String readString(long byteCount, Charset charset) throws EOFException {
        r.f(charset, "charset");
        require(byteCount);
        return this.bufferField.readString(byteCount, charset);
    }

    @Override // okio.BufferedSource
    public String readUtf8(long byteCount) throws EOFException {
        require(byteCount);
        return this.bufferField.readUtf8(byteCount);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        require(1L);
        byte b = this.bufferField.getByte(0L);
        if ((b & 224) == 192) {
            require(2L);
        } else if ((b & 240) == 224) {
            require(3L);
        } else if ((b & 248) == 240) {
            require(4L);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return this.bufferField.readUtf8Line$jvm(jIndexOf);
        }
        if (this.bufferField.size() != 0) {
            return readUtf8(this.bufferField.size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long byteCount) {
        if (!(byteCount >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (this.bufferField.size() < byteCount) {
            if (this.source.read(this.bufferField, 8192) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public void require(long byteCount) throws EOFException {
        if (!request(byteCount)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(Options options) throws EOFException {
        r.f(options, "options");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            int iSelectPrefix$jvm = this.bufferField.selectPrefix$jvm(options, true);
            if (iSelectPrefix$jvm != -2) {
                if (iSelectPrefix$jvm == -1) {
                    return -1;
                }
                this.bufferField.skip(options.getByteStrings()[iSelectPrefix$jvm].size());
                return iSelectPrefix$jvm;
            }
        } while (this.source.read(this.bufferField, 8192) != -1);
        return -1;
    }

    @Override // okio.BufferedSource
    public void skip(long byteCount) throws EOFException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (byteCount > 0) {
            if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(byteCount, this.bufferField.size());
            this.bufferField.skip(jMin);
            byteCount -= jMin;
        }
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public Timeout getTimeout() {
        return this.source.getTimeout();
    }

    public String toString() {
        return "buffer(" + this.source + ')';
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long fromIndex) {
        return indexOf(b, fromIndex, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes, long fromIndex) {
        r.f(targetBytes, "targetBytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jIndexOfElement = this.bufferField.indexOfElement(targetBytes, fromIndex);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, 8192) == -1) {
                return -1L;
            }
            fromIndex = Math.max(fromIndex, size);
        }
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (!(limit >= 0)) {
            throw new IllegalArgumentException(("limit < 0: " + limit).toString());
        }
        long j = limit == Long.MAX_VALUE ? Long.MAX_VALUE : limit + 1;
        byte b = (byte) 10;
        long jIndexOf = indexOf(b, 0L, j);
        if (jIndexOf != -1) {
            return this.bufferField.readUtf8Line$jvm(jIndexOf);
        }
        if (j < Long.MAX_VALUE && request(j) && this.bufferField.getByte(j - 1) == ((byte) 13) && request(1 + j) && this.bufferField.getByte(j) == b) {
            return this.bufferField.readUtf8Line$jvm(j);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), limit) + " content=" + buffer.readByteString().hex() + "…");
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long fromIndex, long toIndex) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (!(0 <= fromIndex && toIndex >= fromIndex)) {
            throw new IllegalArgumentException(("fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        while (fromIndex < toIndex) {
            long jIndexOf = this.bufferField.indexOf(b, fromIndex, toIndex);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = this.bufferField.size();
            if (size >= toIndex || this.source.read(this.bufferField, 8192) == -1) {
                break;
            }
            fromIndex = Math.max(fromIndex, size);
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, ByteString bytes, int bytesOffset, int byteCount) {
        r.f(bytes, "bytes");
        if (!this.closed) {
            if (offset < 0 || bytesOffset < 0 || byteCount < 0 || bytes.size() - bytesOffset < byteCount) {
                return false;
            }
            for (int i = 0; i < byteCount; i++) {
                long j = ((long) i) + offset;
                if (!request(1 + j) || this.bufferField.getByte(j) != bytes.getByte(bytesOffset + i)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() throws IOException {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() throws IOException {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) throws IOException {
        r.f(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    public String readUtf8() throws IOException {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readUtf8();
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long byteCount) throws IOException {
        r.f(sink, "sink");
        try {
            require(byteCount);
            this.bufferField.readFully(sink, byteCount);
        } catch (EOFException e2) {
            sink.writeAll(this.bufferField);
            throw e2;
        }
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink) {
        r.f(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes) {
        r.f(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink, int offset, int byteCount) {
        r.f(sink, "sink");
        long j = byteCount;
        Util.checkOffsetAndCount(sink.length, offset, j);
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(sink, offset, (int) Math.min(j, this.bufferField.size()));
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes, long fromIndex) throws IOException {
        r.f(bytes, "bytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jIndexOf = this.bufferField.indexOf(bytes, fromIndex);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, 8192) == -1) {
                return -1L;
            }
            fromIndex = Math.max(fromIndex, (size - ((long) bytes.size())) + 1);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        r.f(sink, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, 8192) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }
}
