package cn.mucang.android.core.identity.internal;

import android.provider.Settings;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.internal.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/core/identity/internal/AndroidIdUtil;", "", "()V", "getAndroidIdFromSystem", "", "getAndroidIdInternal", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AndroidIdUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AndroidIdUtil f2557a = new AndroidIdUtil();

    private AndroidIdUtil() {
    }

    private final String a() {
        String string = Settings.Secure.getString(MucangConfig.getContext().getContentResolver(), "android_id");
        r.d(string, "getString(MucangConfig.g…ttings.Secure.ANDROID_ID)");
        return string;
    }

    public static final synchronized String b() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("androidId");
            return "";
        }
        String strF = j0.f("_system_info_key_", "androidId", null);
        if (n0.g(strF)) {
            return strF;
        }
        String strA = f2557a.a();
        j0.k("_system_info_key_", "androidId", strA);
        return strA;
    }
}
