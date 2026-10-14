package cn.mucang.android.jiakaoyi.signal.utils;

import cn.mucang.android.jiakaoyi.framework.utils.r0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.utils.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R2\u0010\t\u001a&\u0012\f\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006 \u000b*\u0012\u0012\f\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\n0\nX\u0082\u000e¢\u0006\u0002\n\u0000R2\u0010\f\u001a&\u0012\f\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006 \u000b*\u0012\u0012\f\u0012\n \u000b*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\n0\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/utils/LightDelayHelper;", "", "()V", "DoubleFlashCacheKey", "", "DoubleFlashCacheTime", "", "LeftRightCacheKey", "LeftRightCacheTime", "doubleFlashCache", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "kotlin.jvm.PlatformType", "leftRightCache", "getDoubleFlashCacheTime", "getLeftRightCacheTime", "setDoubleFlashCacheTime", "", "doubleFlashCacheTime", "setLeftRightCacheTime", "leftRightCacheTime", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightDelayHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LightDelayHelper f5835a = new LightDelayHelper();
    private static r0<Integer> b = r0.f("LeftRightCacheTime", 950);
    private static r0<Integer> c = r0.f("DoubleFlashCacheTime", 1000);

    private LightDelayHelper() {
    }

    public final int a() {
        Integer numB = c.b();
        r.d(numB, "doubleFlashCache.get()");
        return numB.intValue();
    }

    public final int b() {
        Integer numB = b.b();
        r.d(numB, "leftRightCache.get()");
        return numB.intValue();
    }

    public final void c(int i) {
        c.j(Integer.valueOf(i));
    }

    public final void d(int i) {
        b.j(Integer.valueOf(i));
    }
}
