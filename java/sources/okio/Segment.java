package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0006\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B\t\b\u0016¢\u0006\u0004\b \u0010\u000fB1\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0016\u001a\u00020\t\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\u0006\u0010\u001c\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b \u0010!J\r\u0010\u0002\u001a\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0005\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0015R\u0016\u0010\u001e\u001a\u00020\u001d8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lokio/Segment;", "", "sharedCopy", "()Lokio/Segment;", "unsharedCopy", "pop", "segment", "push", "(Lokio/Segment;)Lokio/Segment;", "", "byteCount", "split", "(I)Lokio/Segment;", "Lkotlin/v;", "compact", "()V", "sink", "writeTo", "(Lokio/Segment;I)V", "", "owner", "Z", "pos", "I", "prev", "Lokio/Segment;", "next", "limit", "shared", "", "data", "[B", "<init>", "([BIIZZ)V", "Companion", "jvm"}, k = 1, mv = {1, 1, 15})
public final class Segment {
    public static final int SHARE_MINIMUM = 1024;
    public static final int SIZE = 8192;
    public final byte[] data;
    public int limit;
    public Segment next;
    public boolean owner;
    public int pos;
    public Segment prev;
    public boolean shared;

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    public final void compact() {
        Segment segment = this.prev;
        int i = 0;
        if (!(segment != this)) {
            throw new IllegalStateException("cannot compact".toString());
        }
        if (segment == null) {
            r.o();
            throw null;
        }
        if (segment.owner) {
            int i2 = this.limit - this.pos;
            if (segment == null) {
                r.o();
                throw null;
            }
            int i3 = 8192 - segment.limit;
            if (segment == null) {
                r.o();
                throw null;
            }
            if (!segment.shared) {
                if (segment == null) {
                    r.o();
                    throw null;
                }
                i = segment.pos;
            }
            if (i2 > i3 + i) {
                return;
            }
            if (segment == null) {
                r.o();
                throw null;
            }
            writeTo(segment, i2);
            pop();
            SegmentPool.recycle(this);
        }
    }

    public final Segment pop() {
        Segment segment = this.next;
        Segment segment2 = segment != this ? segment : null;
        Segment segment3 = this.prev;
        if (segment3 == null) {
            r.o();
            throw null;
        }
        segment3.next = segment;
        Segment segment4 = this.next;
        if (segment4 == null) {
            r.o();
            throw null;
        }
        segment4.prev = segment3;
        this.next = null;
        this.prev = null;
        return segment2;
    }

    public final Segment push(Segment segment) {
        r.f(segment, "segment");
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        if (segment2 == null) {
            r.o();
            throw null;
        }
        segment2.prev = segment;
        this.next = segment;
        return segment;
    }

    public final Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true, false);
    }

    public final Segment split(int byteCount) {
        Segment segmentSharedCopy;
        if (!(byteCount > 0 && byteCount <= this.limit - this.pos)) {
            throw new IllegalArgumentException("byteCount out of range".toString());
        }
        if (byteCount >= 1024) {
            segmentSharedCopy = sharedCopy();
        } else {
            Segment segmentTake = SegmentPool.take();
            Platform.arraycopy(this.data, this.pos, segmentTake.data, 0, byteCount);
            segmentSharedCopy = segmentTake;
        }
        segmentSharedCopy.limit = segmentSharedCopy.pos + byteCount;
        this.pos += byteCount;
        Segment segment = this.prev;
        if (segment != null) {
            segment.push(segmentSharedCopy);
            return segmentSharedCopy;
        }
        r.o();
        throw null;
    }

    public final Segment unsharedCopy() {
        byte[] bArr = this.data;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        r.b(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return new Segment(bArrCopyOf, this.pos, this.limit, false, true);
    }

    public final void writeTo(Segment sink, int byteCount) {
        r.f(sink, "sink");
        if (!sink.owner) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int i = sink.limit;
        if (i + byteCount > 8192) {
            if (sink.shared) {
                throw new IllegalArgumentException();
            }
            int i2 = sink.pos;
            if ((i + byteCount) - i2 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sink.data;
            Platform.arraycopy(bArr, i2, bArr, 0, i - i2);
            sink.limit -= sink.pos;
            sink.pos = 0;
        }
        Platform.arraycopy(this.data, this.pos, sink.data, sink.limit, byteCount);
        sink.limit += byteCount;
        this.pos += byteCount;
    }

    public Segment(byte[] data, int i, int i2, boolean z, boolean z2) {
        r.f(data, "data");
        this.data = data;
        this.pos = i;
        this.limit = i2;
        this.shared = z;
        this.owner = z2;
    }
}
