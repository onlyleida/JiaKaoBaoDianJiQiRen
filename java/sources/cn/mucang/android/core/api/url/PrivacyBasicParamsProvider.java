package cn.mucang.android.core.api.url;

import cn.mucang.android.core.config.w;
import cn.mucang.android.core.location.c;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0007H&J\b\u0010\t\u001a\u00020\u0003H&J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0003H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&J\b\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0015\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0017H&J\b\u0010\u0018\u001a\u00020\u0005H&J\b\u0010\u0019\u001a\u00020\u0005H&J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/core/api/url/PrivacyBasicParamsProvider;", "", "getAndroidId", "", "getApiLevel", "", "getAppFirstInstallTime", "", "getAppLastUpdateTime", "getAppUser", "getCurrentLocation", "Lcn/mucang/android/core/location/LocationResult;", "checkPermission", "", "getDeviceId", "getDeviceName", "getFirstLaunchTime", "getOaid", "getPhoneBrand", "getPhoneModel", "getRomName", "getRomVersion", "getScreenDpi", "", "getScreenHeight", "getScreenWidth", "getUserCityProvider", "Lcn/mucang/android/core/config/UserCityProvider;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface PrivacyBasicParamsProvider {
    String a();

    c b(boolean z);

    String c();

    String d();

    String e();

    int f();

    w g();

    int getApiLevel();

    String h();

    String i();

    String j();

    long k();

    int l();

    String m();

    long n();

    String o();

    String p();

    float q();
}
