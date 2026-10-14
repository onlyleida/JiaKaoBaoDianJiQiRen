package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000b¨\u0006\u0011"}, d2 = {"Lokio/SegmentPool;", "", "Lokio/Segment;", "take", "()Lokio/Segment;", "segment", "Lkotlin/v;", "recycle", "(Lokio/Segment;)V", "", "byteCount", "J", "next", "Lokio/Segment;", "MAX_SIZE", "<init>", "()V", "jvm"}, k = 1, mv = {1, 1, 15})
public final class SegmentPool {
    public static final SegmentPool INSTANCE = new SegmentPool();
    public static final long MAX_SIZE = 65536;
    public static long byteCount;
    public static Segment next;

    private SegmentPool() {
    }

    public static final void recycle(Segment segment) {
        r.f(segment, "segment");
        if (!(segment.next == null && segment.prev == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (segment.shared) {
            return;
        }
        synchronized (INSTANCE) {
            long j = byteCount;
            long j2 = 8192;
            if (j + j2 > 65536) {
                return;
            }
            byteCount = j + j2;
            segment.next = next;
            segment.limit = 0;
            segment.pos = 0;
            next = segment;
            v vVar = v.f15822a;
        }
    }

    public static final Segment take() {
        synchronized (INSTANCE) {
            Segment segment = next;
            if (segment == null) {
                return new Segment();
            }
            next = segment.next;
            segment.next = null;
            byteCount -= (long) 8192;
            return segment;
        }
    }
}
