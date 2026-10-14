package cn.mucang.android.core.identity;

import android.app.Application;
import android.content.pm.PackageInfo;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.identity.cache.CacheHelper;
import cn.mucang.android.core.identity.cache.CacheInvalidStrategy;
import cn.mucang.android.core.identity.internal.AndroidIdUtil;
import cn.mucang.android.core.identity.internal.AppUserUtil;
import cn.mucang.android.core.identity.internal.DeviceIdUtil;
import cn.mucang.android.core.identity.internal.ImeiUtil;
import cn.mucang.android.core.identity.internal.ImsiUtil;
import cn.mucang.android.core.identity.internal.NetworkTypeUtil;
import cn.mucang.android.core.identity.internal.OperatorUtil;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\u000e\u001a\u00020\u0007H\u0007J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0004H\u0007J\u0012\u0010\u0012\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0004H\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0007J(\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0007J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/core/identity/PrivacyDataManager;", "", "()V", "canAutoFillUserData", "", "canDoPrivacyRequest", "key", "", "cacheInvalidStrategy", "Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy;", "getAndroidId", "getAppUser", "getDeviceId", "getIMEI", "getIMSI", "getMac", "getNetworkName", "needUpToDate", "getNetworkTypeString", "getOaid", "getPackageInfo", "Landroid/content/pm/PackageInfo;", "packageName", "flags", "", "getStrategy", "markAutoFillUserData", "", "isFillUserData", "markPrivacyRequested", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrivacyDataManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PrivacyDataManager f2539a = new PrivacyDataManager();

    private PrivacyDataManager() {
    }

    public static final boolean a() {
        return f.a.a.a.d.d();
    }

    public static final boolean b(String key) {
        r.e(key, "key");
        return d(key, null, 2, null);
    }

    public static final boolean c(String key, CacheInvalidStrategy cacheInvalidStrategy) {
        r.e(key, "key");
        r.e(cacheInvalidStrategy, "cacheInvalidStrategy");
        String strB = CacheHelper.b(key, cacheInvalidStrategy, new Function0<String>() { // from class: cn.mucang.android.core.identity.PrivacyDataManager$canDoPrivacyRequest$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return null;
            }
        });
        return strB == null || t.r(strB);
    }

    public static /* synthetic */ boolean d(String str, CacheInvalidStrategy cacheInvalidStrategy, int i, Object obj) {
        if ((i & 2) != 0) {
            cacheInvalidStrategy = CacheInvalidStrategy.f2544a.b();
        }
        return c(str, cacheInvalidStrategy);
    }

    public static final synchronized String e() {
        return AndroidIdUtil.b();
    }

    public static final synchronized String f() {
        return AppUserUtil.f2558a.a();
    }

    public static final synchronized String g() {
        return DeviceIdUtil.k();
    }

    public static final synchronized String h() {
        return ImeiUtil.f2559a.b();
    }

    public static final synchronized String i() {
        return ImsiUtil.f2560a.a();
    }

    public static final synchronized String j(boolean z) {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("networkName");
            return "";
        }
        String strB = CacheHelper.b("getNetworkName", f2539a.p(z), new Function0<String>() { // from class: cn.mucang.android.core.identity.PrivacyDataManager$getNetworkName$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return OperatorUtil.f2562a.a();
            }
        });
        if (strB == null) {
            strB = "UNKOWN";
        }
        return strB;
    }

    public static /* synthetic */ String k(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return j(z);
    }

    public static final synchronized String l(boolean z) {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("getNetworkTypeString");
            return "";
        }
        String strB = CacheHelper.b("getNetworkTypeString", f2539a.p(z), new Function0<String>() { // from class: cn.mucang.android.core.identity.PrivacyDataManager$getNetworkTypeString$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return NetworkTypeUtil.b();
            }
        });
        if (strB == null) {
            strB = NetworkTypeUtil.f2561a.a();
        }
        return strB;
    }

    public static /* synthetic */ String m(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return l(z);
    }

    public static final synchronized String n() {
        return OaidStorage.f2568a.get();
    }

    public static final PackageInfo o(String str, int i, boolean z) {
        Application context;
        PackageInfo packageInfo = null;
        if (str == null || t.r(str)) {
            return null;
        }
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("getPackageInfo");
            return null;
        }
        if (!c("getPackageInfo", f2539a.p(z)) || (context = MucangConfig.getContext()) == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            PackageInfo packageInfo2 = context.getPackageManager().getPackageInfo(str, i);
            q("getPackageInfo");
            try {
                Result.m139constructorimpl(v.f15822a);
                return packageInfo2;
            } catch (Throwable th) {
                th = th;
                packageInfo = packageInfo2;
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
                return packageInfo;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final CacheInvalidStrategy p(boolean z) {
        return z ? CacheInvalidStrategy.f2544a.a() : CacheInvalidStrategy.f2544a.b();
    }

    public static final void q(String key) {
        r.e(key, "key");
        CacheHelper.a(key, "true");
    }
}
