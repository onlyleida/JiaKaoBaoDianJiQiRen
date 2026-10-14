package com.tencent.connect.a;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.d;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.g;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Class<?> f13938a = null;
    private static Class<?> b = null;
    private static Method c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f13939d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f13940e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Method f13941f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f13942g = false;

    public static boolean a(Context context, QQToken qQToken) {
        return g.a(context, qQToken.getAppId()).b("Common_ta_enable");
    }

    public static void b(Context context, QQToken qQToken) {
        try {
            if (a(context, qQToken)) {
                f13941f.invoke(f13938a, Boolean.TRUE);
            } else {
                f13941f.invoke(f13938a, Boolean.FALSE);
            }
        } catch (Exception e2) {
            SLog.e("OpenConfig", "checkStatStatus exception: " + e2.toString());
        }
    }

    public static void c(Context context, QQToken qQToken) {
        String str = "Aqc" + qQToken.getAppId();
        try {
            f13938a = Class.forName("com.tencent.stat.StatConfig");
            Class<?> cls = Class.forName("com.tencent.stat.StatService");
            b = cls;
            c = cls.getMethod("reportQQ", Context.class, String.class);
            f13939d = b.getMethod("trackCustomEvent", Context.class, String.class, String[].class);
            Class<?> cls2 = b;
            Class<?> cls3 = Integer.TYPE;
            f13940e = cls2.getMethod("commitEvents", Context.class, cls3);
            Class<?> cls4 = f13938a;
            Class<?> cls5 = Boolean.TYPE;
            f13941f = cls4.getMethod("setEnableStatService", cls5);
            b(context, qQToken);
            f13938a.getMethod("setAutoExceptionCaught", cls5).invoke(f13938a, Boolean.FALSE);
            f13938a.getMethod("setEnableSmartReporting", cls5).invoke(f13938a, Boolean.TRUE);
            f13938a.getMethod("setSendPeriodMinutes", cls3).invoke(f13938a, 1440);
            Class<?> cls6 = Class.forName("com.tencent.stat.StatReportStrategy");
            f13938a.getMethod("setStatSendStrategy", cls6).invoke(f13938a, cls6.getField("PERIOD").get(null));
            b.getMethod("startStatService", Context.class, String.class, String.class).invoke(b, context, str, Class.forName("com.tencent.stat.common.StatConstants").getField("VERSION").get(null));
            f13942g = true;
        } catch (Exception e2) {
            SLog.e("OpenConfig", "start4QQConnect exception: " + e2.toString());
        }
    }

    public static void d(Context context, QQToken qQToken) {
        if (!TextUtils.isEmpty(qQToken.getOpenId())) {
            d.a().a(qQToken.getOpenId(), qQToken.getAppId(), "2", "1", Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, "0", "0", "0");
        }
        if (f13942g) {
            b(context, qQToken);
            if (qQToken.getOpenId() != null) {
                try {
                    c.invoke(b, context, qQToken.getOpenId());
                } catch (Exception e2) {
                    SLog.e("OpenConfig", "reportQQ exception: " + e2.toString());
                }
            }
        }
    }

    public static void a(Context context, QQToken qQToken, String str, String... strArr) {
        if (f13942g) {
            b(context, qQToken);
            try {
                f13939d.invoke(b, context, str, strArr);
            } catch (Exception e2) {
                SLog.e("OpenConfig", "trackCustomEvent exception: " + e2.toString());
            }
        }
    }
}
