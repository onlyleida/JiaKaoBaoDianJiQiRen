package cn.mucang.android.core.api.url.impl;

import android.os.Build;
import cn.mucang.android.core.api.url.SafeBasicParamsProvider;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.identity.PrivacyDataManager;
import cn.mucang.android.core.utils.p;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.h.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/core/api/url/impl/DefaultSafeBasicParamsProvider;", "Lcn/mucang/android/core/api/url/SafeBasicParamsProvider;", "()V", "getApiVersion", "", "getAppName", "getAppProfileCategoryName", "getAppProfileName", "getLaunchCount", "getManufacturer", "getNetworkName", "getNetworkTypeString", "getPackageName", "getPlatform", "getQudao", "getRenyuan", "getSystem", "getSystemVersion", "getVersionName", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DefaultSafeBasicParamsProvider implements SafeBasicParamsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultSafeBasicParamsProvider f2392a = new DefaultSafeBasicParamsProvider();

    private DefaultSafeBasicParamsProvider() {
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String a() {
        String strK = p.k();
        r.d(strK, "getVersionName()");
        return strK;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String b() {
        return String.valueOf(p.b());
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String c() {
        String strD = p.d();
        r.d(strD, "getAppProfileCategoryName()");
        return strD;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String d() {
        String strE = p.e();
        r.d(strE, "getAppProfileName()");
        return strE;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String e() {
        return PrivacyDataManager.k(false, 1, null);
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String f() {
        String MANUFACTURER = Build.MANUFACTURER;
        r.d(MANUFACTURER, "MANUFACTURER");
        return MANUFACTURER;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String g() {
        return "android";
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String getPackageName() {
        String strR = MucangConfig.r();
        r.d(strR, "getPackageName()");
        return strR;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String h() {
        return String.valueOf(MucangConfig.p());
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String i() {
        String RELEASE = Build.VERSION.RELEASE;
        r.d(RELEASE, "RELEASE");
        return RELEASE;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String j() {
        String strI = p.i();
        r.d(strI, "getRenyuan()");
        return strI;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String k() {
        String strC = p.c();
        r.d(strC, "getAppName()");
        return strC;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String l() {
        String strJ = p.j();
        r.d(strJ, "getSystem()");
        return strJ;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String m() {
        String strH = p.h();
        r.d(strH, "getQudao()");
        return strH;
    }

    @Override // cn.mucang.android.core.api.url.SafeBasicParamsProvider
    public String n() {
        return PrivacyDataManager.m(false, 1, null);
    }
}
