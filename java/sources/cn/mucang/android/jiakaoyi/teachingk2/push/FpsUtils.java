package cn.mucang.android.jiakaoyi.teachingk2.push;

import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.l0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\bJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/FpsUtils;", "", "()V", "currentFps", "", "fpsList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "fpsTime", "", "lastFps", "compute", "", "getAverageFps", "rangeTimeS", "getMaxFps", "getMinFps", "getSamplingFps", "getUpdateTimeMs", "getVariance", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FpsUtils {
    private static long b;
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7522d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FpsUtils f7521a = new FpsUtils();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static CopyOnWriteArrayList<Integer> f7523e = new CopyOnWriteArrayList<>();

    private FpsUtils() {
    }

    public final synchronized void a() {
        if (b == 0) {
            b = System.currentTimeMillis();
            f7522d++;
            return;
        }
        if (System.currentTimeMillis() - b >= 1000) {
            b = System.currentTimeMillis();
            c = f7522d;
            f7522d = 0;
            if (f7523e.size() > 30) {
                kotlin.collections.s.G(f7523e);
            }
            f7523e.add(Integer.valueOf(c));
        } else {
            f7522d++;
        }
    }

    public final synchronized long b() {
        return b;
    }
}
