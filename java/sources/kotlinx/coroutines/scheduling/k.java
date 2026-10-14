package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f16095a = b0.e("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);
    public static final int b;
    public static final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f16096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static l f16097e;

    static {
        b0.d("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, null);
        int iD = b0.d("kotlinx.coroutines.scheduler.core.pool.size", kotlin.ranges.f.b(z.a(), 2), 1, 0, 8, null);
        b = iD;
        c = b0.d("kotlinx.coroutines.scheduler.max.pool.size", kotlin.ranges.f.g(z.a() * 128, iD, 2097150), 0, 2097150, 4, null);
        f16096d = TimeUnit.SECONDS.toNanos(b0.e("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null));
        f16097e = f.f16092a;
    }
}
