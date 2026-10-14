package okio;

import com.iflytek.cloud.SpeechEvent;
import com.tencent.open.SocialConstants;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b \u0010!J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u0005\u0010\u0004R\"\u0010\f\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\t\u0010\bR\u001c\u0010\u0017\u001a\u00020\u00168\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001c\u001a\u00020\u001b8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lokio/Pipe;", "", "Lokio/Sink;", "-deprecated_sink", "()Lokio/Sink;", "sink", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", SocialConstants.PARAM_SOURCE, "Lokio/Sink;", "", "sourceClosed", "Z", "getSourceClosed$jvm", "()Z", "setSourceClosed$jvm", "(Z)V", "sinkClosed", "getSinkClosed$jvm", "setSinkClosed$jvm", "Lokio/Source;", "Lokio/Buffer;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "Lokio/Buffer;", "getBuffer$jvm", "()Lokio/Buffer;", "", "maxBufferSize", "J", "getMaxBufferSize$jvm", "()J", "<init>", "(J)V", "jvm"}, k = 1, mv = {1, 1, 15})
public final class Pipe {
    private final Buffer buffer = new Buffer();
    private final long maxBufferSize;
    private final Sink sink;
    private boolean sinkClosed;
    private final Source source;
    private boolean sourceClosed;

    public Pipe(long j) {
        this.maxBufferSize = j;
        if (j >= 1) {
            this.sink = new Sink() { // from class: okio.Pipe.sink.1
                private final Timeout timeout = new Timeout();

                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    synchronized (Pipe.this.getBuffer()) {
                        if (Pipe.this.getSinkClosed()) {
                            return;
                        }
                        if (Pipe.this.getSourceClosed() && Pipe.this.getBuffer().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        Pipe.this.setSinkClosed$jvm(true);
                        Buffer buffer = Pipe.this.getBuffer();
                        if (buffer == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.Object");
                        }
                        buffer.notifyAll();
                        v vVar = v.f15822a;
                    }
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    synchronized (Pipe.this.getBuffer()) {
                        if (!(!Pipe.this.getSinkClosed())) {
                            throw new IllegalStateException("closed".toString());
                        }
                        if (Pipe.this.getSourceClosed() && Pipe.this.getBuffer().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        v vVar = v.f15822a;
                    }
                }

                @Override // okio.Sink
                /* JADX INFO: renamed from: timeout, reason: from getter */
                public Timeout getTimeout() {
                    return this.timeout;
                }

                @Override // okio.Sink
                public void write(Buffer source, long byteCount) {
                    r.f(source, "source");
                    synchronized (Pipe.this.getBuffer()) {
                        if (!(!Pipe.this.getSinkClosed())) {
                            throw new IllegalStateException("closed".toString());
                        }
                        while (byteCount > 0) {
                            if (Pipe.this.getSourceClosed()) {
                                throw new IOException("source is closed");
                            }
                            long maxBufferSize = Pipe.this.getMaxBufferSize() - Pipe.this.getBuffer().size();
                            if (maxBufferSize == 0) {
                                this.timeout.waitUntilNotified(Pipe.this.getBuffer());
                            } else {
                                long jMin = Math.min(maxBufferSize, byteCount);
                                Pipe.this.getBuffer().write(source, jMin);
                                byteCount -= jMin;
                                Buffer buffer = Pipe.this.getBuffer();
                                if (buffer == null) {
                                    throw new TypeCastException("null cannot be cast to non-null type java.lang.Object");
                                }
                                buffer.notifyAll();
                            }
                        }
                        v vVar = v.f15822a;
                    }
                }
            };
            this.source = new Source() { // from class: okio.Pipe.source.1
                private final Timeout timeout = new Timeout();

                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    synchronized (Pipe.this.getBuffer()) {
                        Pipe.this.setSourceClosed$jvm(true);
                        Buffer buffer = Pipe.this.getBuffer();
                        if (buffer == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.Object");
                        }
                        buffer.notifyAll();
                        v vVar = v.f15822a;
                    }
                }

                @Override // okio.Source
                public long read(Buffer sink, long byteCount) {
                    r.f(sink, "sink");
                    synchronized (Pipe.this.getBuffer()) {
                        if (!(!Pipe.this.getSourceClosed())) {
                            throw new IllegalStateException("closed".toString());
                        }
                        while (Pipe.this.getBuffer().size() == 0) {
                            if (Pipe.this.getSinkClosed()) {
                                return -1L;
                            }
                            this.timeout.waitUntilNotified(Pipe.this.getBuffer());
                        }
                        long j2 = Pipe.this.getBuffer().read(sink, byteCount);
                        Buffer buffer = Pipe.this.getBuffer();
                        if (buffer == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.Object");
                        }
                        buffer.notifyAll();
                        return j2;
                    }
                }

                @Override // okio.Source
                /* JADX INFO: renamed from: timeout, reason: from getter */
                public Timeout getTimeout() {
                    return this.timeout;
                }
            };
        } else {
            throw new IllegalArgumentException(("maxBufferSize < 1: " + j).toString());
        }
    }

    /* JADX INFO: renamed from: -deprecated_sink, reason: not valid java name and from getter */
    public final Sink getSink() {
        return this.sink;
    }

    /* JADX INFO: renamed from: -deprecated_source, reason: not valid java name and from getter */
    public final Source getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: getBuffer$jvm, reason: from getter */
    public final Buffer getBuffer() {
        return this.buffer;
    }

    /* JADX INFO: renamed from: getMaxBufferSize$jvm, reason: from getter */
    public final long getMaxBufferSize() {
        return this.maxBufferSize;
    }

    /* JADX INFO: renamed from: getSinkClosed$jvm, reason: from getter */
    public final boolean getSinkClosed() {
        return this.sinkClosed;
    }

    /* JADX INFO: renamed from: getSourceClosed$jvm, reason: from getter */
    public final boolean getSourceClosed() {
        return this.sourceClosed;
    }

    public final void setSinkClosed$jvm(boolean z) {
        this.sinkClosed = z;
    }

    public final void setSourceClosed$jvm(boolean z) {
        this.sourceClosed = z;
    }

    public final Sink sink() {
        return this.sink;
    }

    public final Source source() {
        return this.source;
    }
}
