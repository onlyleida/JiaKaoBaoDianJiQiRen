package cn.mucang.android.core.identity.internal;

import android.os.Build;
import android.telephony.TelephonyManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.z;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.internal.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/core/identity/internal/ImsiUtil;", "", "()V", "getImsiInternal", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ImsiUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImsiUtil f2560a = new ImsiUtil();

    private ImsiUtil() {
    }

    public final synchronized String a() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("imsi");
            return "";
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        if (!z.a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        String strF = j0.f("_system_info_key_", "imsi", null);
        if (strF != null) {
            return strF;
        }
        try {
            Object systemService = MucangConfig.getContext().getSystemService("phone");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            }
            strF = ((TelephonyManager) systemService).getSubscriberId();
            if (strF == null) {
                strF = "";
            }
            j0.k("_system_info_key_", "imsi", strF);
            return strF;
        } catch (Exception unused) {
        }
    }
}
