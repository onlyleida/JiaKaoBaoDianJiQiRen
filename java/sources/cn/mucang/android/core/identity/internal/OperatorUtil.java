package cn.mucang.android.core.identity.internal;

import android.telephony.TelephonyManager;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.z;
import com.mobile.auth.gatewayauth.Constant;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.internal.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/core/identity/internal/OperatorUtil;", "", "()V", "DEFAULT_VALUE", "", "getNetworkNameInternal", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OperatorUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OperatorUtil f2562a = new OperatorUtil();

    private OperatorUtil() {
    }

    /* JADX WARN: Code duplicated, block: B:26:0x009b  */
    public final String a() {
        String upperCase;
        if (!z.a("android.permission.READ_PHONE_STATE")) {
            return "UNKOWN";
        }
        Object systemService = MucangConfig.getContext().getSystemService("phone");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
        if (networkOperatorName == null) {
            upperCase = null;
        } else {
            Locale ENGLISH = Locale.ENGLISH;
            r.d(ENGLISH, "ENGLISH");
            upperCase = networkOperatorName.toUpperCase(ENGLISH);
            r.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        }
        if (upperCase == null) {
            return "UNKOWN";
        }
        HashMap map = new HashMap();
        String str = "M";
        map.put("CHINA MOBILE", "M");
        map.put("中国移动", "M");
        map.put(Constant.CMCC, "M");
        map.put("CHINA UNICOM", "C");
        map.put("中国联通", "C");
        map.put("CHINA TELECOM", ExifInterface.GPS_DIRECTION_TRUE);
        map.put("中国电信", ExifInterface.GPS_DIRECTION_TRUE);
        String str2 = (String) map.get(upperCase);
        if (str2 != null) {
            return str2;
        }
        String strK = o0.k();
        if (strK == null) {
            str = str2;
        } else if (!t.B(strK, "46000", false, 2, null) && !t.B(strK, "46002", false, 2, null)) {
            if (t.B(strK, "46001", false, 2, null)) {
                str = "C";
            } else if (t.B(strK, "46003", false, 2, null)) {
                str = ExifInterface.GPS_DIRECTION_TRUE;
            } else {
                str = str2;
            }
        }
        return str == null ? upperCase : str;
    }
}
