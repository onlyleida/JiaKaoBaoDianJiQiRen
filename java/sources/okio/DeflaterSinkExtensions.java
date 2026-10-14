package okio;

import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.-DeflaterSinkExtensions, reason: invalid class name */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokio/Sink;", "Ljava/util/zip/Deflater;", "deflater", "Lokio/DeflaterSink;", "deflate", "(Lokio/Sink;Ljava/util/zip/Deflater;)Lokio/DeflaterSink;", "jvm"}, k = 2, mv = {1, 1, 15})
public final class DeflaterSinkExtensions {
    public static final DeflaterSink deflate(Sink receiver, Deflater deflater) {
        r.f(receiver, "$receiver");
        r.f(deflater, "deflater");
        return new DeflaterSink(receiver, deflater);
    }

    public static /* bridge */ /* synthetic */ DeflaterSink deflate$default(Sink receiver, Deflater deflater, int i, Object obj) {
        if ((i & 1) != 0) {
            deflater = new Deflater();
        }
        r.f(receiver, "$receiver");
        r.f(deflater, "deflater");
        return new DeflaterSink(receiver, deflater);
    }
}
