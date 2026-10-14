package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.-GzipSinkExtensions, reason: invalid class name */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086\b¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/Sink;", "Lokio/GzipSink;", "gzip", "(Lokio/Sink;)Lokio/GzipSink;", "jvm"}, k = 2, mv = {1, 1, 15})
public final class GzipSinkExtensions {
    public static final GzipSink gzip(Sink receiver) {
        r.f(receiver, "$receiver");
        return new GzipSink(receiver);
    }
}
