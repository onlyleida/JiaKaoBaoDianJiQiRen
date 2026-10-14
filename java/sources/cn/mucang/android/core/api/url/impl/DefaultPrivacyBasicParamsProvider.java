package cn.mucang.android.core.api.url.impl;

import android.os.Build;
import android.util.DisplayMetrics;
import cn.mucang.android.core.api.url.PrivacyBasicParamsProvider;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.w;
import cn.mucang.android.core.identity.PrivacyDataManager;
import cn.mucang.android.core.location.LocationUtils;
import cn.mucang.android.core.location.c;
import cn.mucang.android.core.utils.d0;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.p;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.h.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u0007H\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\b\u0010\u0017\u001a\u00020\u0007H\u0016J\b\u0010\u0018\u001a\u00020\u0007H\u0016J\b\u0010\u0019\u001a\u00020\u0007H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\tH\u0016J\b\u0010\u001d\u001a\u00020\tH\u0016J\n\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/core/api/url/impl/DefaultPrivacyBasicParamsProvider;", "Lcn/mucang/android/core/api/url/PrivacyBasicParamsProvider;", "()V", "metrics", "Landroid/util/DisplayMetrics;", "kotlin.jvm.PlatformType", "getAndroidId", "", "getApiLevel", "", "getAppFirstInstallTime", "", "getAppLastUpdateTime", "getAppUser", "getCurrentLocation", "Lcn/mucang/android/core/location/LocationResult;", "checkPermission", "", "getDeviceId", "getDeviceName", "getFirstLaunchTime", "getOaid", "getPhoneBrand", "getPhoneModel", "getRomName", "getRomVersion", "getScreenDpi", "", "getScreenHeight", "getScreenWidth", "getUserCityProvider", "Lcn/mucang/android/core/config/UserCityProvider;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DefaultPrivacyBasicParamsProvider implements PrivacyBasicParamsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultPrivacyBasicParamsProvider f2391a = new DefaultPrivacyBasicParamsProvider();
    private static final DisplayMetrics b = j.i();

    private DefaultPrivacyBasicParamsProvider() {
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String a() {
        String strA = d0.a();
        r.d(strA, "getName()");
        return strA;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public c b(boolean z) {
        return LocationUtils.e(z);
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String c() {
        String strG = PrivacyDataManager.g();
        return strG == null ? "" : strG;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String d() {
        String strC = d0.c();
        r.d(strC, "getVersion()");
        return strC;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String e() {
        String strK = MucangConfig.k();
        r.d(strK, "getFirstLaunchTime()");
        return strK;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public int f() {
        return b.heightPixels;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public w g() {
        return MucangConfig.s();
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public int getApiLevel() {
        return p.a();
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String h() {
        String strE = PrivacyDataManager.e();
        return strE == null ? "" : strE;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String i() {
        String strF = PrivacyDataManager.f();
        return strF == null ? "" : strF;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String j() {
        String BRAND = Build.BRAND;
        r.d(BRAND, "BRAND");
        return BRAND;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public long k() {
        Long lE = o0.e();
        r.d(lE, "getAppLastUpdateTime()");
        return lE.longValue();
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public int l() {
        return b.widthPixels;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String m() {
        String strG = p.g();
        r.d(strG, "getDeviceName()");
        return strG;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public long n() {
        Long lD = o0.d();
        r.d(lD, "getAppFirstInstallTime()");
        return lD.longValue();
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String o() {
        String MODEL = Build.MODEL;
        r.d(MODEL, "MODEL");
        return MODEL;
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public String p() {
        return PrivacyDataManager.n();
    }

    @Override // cn.mucang.android.core.api.url.PrivacyBasicParamsProvider
    public float q() {
        return b.density;
    }
}
