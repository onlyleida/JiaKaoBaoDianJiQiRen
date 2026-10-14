package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.y f15998a = new kotlinx.coroutines.internal.y("REMOVED_TASK");
    private static final kotlinx.coroutines.internal.y b = new kotlinx.coroutines.internal.y("CLOSED_EMPTY");

    public static final long c(long j) {
        return j / 1000000;
    }

    public static final long d(long j) {
        if (j <= 0) {
            return 0L;
        }
        if (j >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j;
    }
}
