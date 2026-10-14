package cn.mucang.android.core.identity.internal;

import android.os.Build;
import android.telephony.TelephonyManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.l;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.z;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.internal.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0003J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/core/identity/internal/ImeiUtil;", "", "()V", "doGetIMEI", "", "getImeiInternal", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ImeiUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImeiUtil f2559a = new ImeiUtil();

    private ImeiUtil() {
    }

    private final String a() {
        if (l.a()) {
            return "77777777777777777777777777777777";
        }
        String deviceId = null;
        try {
            Object systemService = MucangConfig.getContext().getSystemService("phone");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            }
            deviceId = ((TelephonyManager) systemService).getDeviceId();
            if (n0.e(deviceId)) {
                deviceId = "123";
            }
            r.c(deviceId);
            return deviceId;
        } catch (Exception unused) {
        }
    }

    public final synchronized String b() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("imei");
            return "";
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return "123";
        }
        if (!z.a("android.permission.READ_PHONE_STATE")) {
            return "123";
        }
        String strF = j0.f("_system_info_key_", "imei", null);
        if (n0.g(strF)) {
            return strF;
        }
        String strA = a();
        j0.k("_system_info_key_", "imei", strA);
        return strA;
    }
}
