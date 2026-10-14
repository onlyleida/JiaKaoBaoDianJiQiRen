package cn.mucang.android.jiakaoyi.framework.api.citycode;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.api.citycode.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/api/citycode/CityCodeManager;", "", "()V", "DURATION", "", "cityCode", "", "fetching", "", "lastFetchTime", "", "fetchCityCode", "", "getCityCode", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CityCodeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CityCodeManager f3350a = new CityCodeManager();
    private static String b;
    private static volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile long f3351d;

    private CityCodeManager() {
    }

    public static final String a() {
        String str = b;
        return str == null ? "" : str;
    }

    public static final void b() {
        if (c) {
            return;
        }
        c = true;
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.api.citycode.a
            @Override // java.lang.Runnable
            public final void run() {
                CityCodeManager.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        try {
            try {
                String strM = new b().m();
                if (cn.mucang.android.core.utils.n0.g(strM)) {
                    i0.m("newKeyCityCode", strM);
                    f3351d = System.currentTimeMillis();
                }
            } catch (Exception e2) {
                t.d("CityCodeHelper", e2.toString());
            }
        } finally {
            c = false;
        }
    }

    public static final String d() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (cn.mucang.android.core.utils.n0.g(b) && jCurrentTimeMillis - f3351d < 600000) {
            String str = b;
            r.c(str);
            return str;
        }
        b = i0.g("newKeyCityCode", "");
        b();
        String str2 = b;
        return str2 == null ? "" : str2;
    }
}
