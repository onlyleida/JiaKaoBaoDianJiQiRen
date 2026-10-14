package okio;

import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.OutputStreamSink, reason: from toString */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "Lokio/Buffer;", SocialConstants.PARAM_SOURCE, "", "byteCount", "Lkotlin/v;", "write", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "Lokio/Timeout;", "Ljava/io/OutputStream;", "out", "Ljava/io/OutputStream;", "<init>", "(Ljava/io/OutputStream;Lokio/Timeout;)V", "jvm"}, k = 1, mv = {1, 1, 15})
final class sink implements Sink {
    private final OutputStream out;
    private final Timeout timeout;

    public sink(OutputStream out, Timeout timeout) {
        r.f(out, "out");
        r.f(timeout, "timeout");
        this.out = out;
        this.timeout = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // okio.Sink
    /* JADX INFO: renamed from: timeout, reason: from getter */
    public Timeout getTimeout() {
        return this.timeout;
    }

    public String toString() {
        return "sink(" + this.out + ')';
    }

    @Override // okio.Sink
    public void write(Buffer source, long byteCount) throws IOException {
        r.f(source, "source");
        Util.checkOffsetAndCount(source.size(), 0L, byteCount);
        while (byteCount > 0) {
            this.timeout.throwIfReached();
            Segment segment = source.head;
            if (segment == null) {
                r.o();
                throw null;
            }
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            this.out.write(segment.data, segment.pos, iMin);
            segment.pos += iMin;
            long j = iMin;
            byteCount -= j;
            source.setSize$jvm(source.size() - j);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }
}
