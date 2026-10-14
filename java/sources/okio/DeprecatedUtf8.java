package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.-DeprecatedUtf8, reason: invalid class name */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0005\u0010\n¨\u0006\r"}, d2 = {"Lokio/-DeprecatedUtf8;", "", "", "string", "", "size", "(Ljava/lang/String;)J", "", "beginIndex", "endIndex", "(Ljava/lang/String;II)J", "<init>", "()V", "jvm"}, k = 1, mv = {1, 1, 15})
public final class DeprecatedUtf8 {
    public static final DeprecatedUtf8 INSTANCE = new DeprecatedUtf8();

    private DeprecatedUtf8() {
    }

    public final long size(String string) {
        r.f(string, "string");
        return Utf8.size$default(string, 0, 0, 3, null);
    }

    public final long size(String string, int beginIndex, int endIndex) {
        r.f(string, "string");
        return Utf8.size(string, beginIndex, endIndex);
    }
}
