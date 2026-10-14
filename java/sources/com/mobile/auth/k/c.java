package com.mobile.auth.k;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b<String, String> f13489a = new b<>();

    private static class b<K, V> extends HashMap<K, V> {
        private b() {
        }

        public V a(Object obj, V v) {
            return (!containsKey(obj) || get(obj) == null) ? v : get(obj);
        }
    }

    public static void a() {
        String strValueOf = String.valueOf(0);
        f13489a.put("authPageIn", strValueOf);
        f13489a.put("authPageOut", strValueOf);
        f13489a.put("authClickFailed", strValueOf);
        f13489a.put("authClickSuccess", strValueOf);
        f13489a.put("timeOnAuthPage", strValueOf);
        f13489a.put("authPrivacyState", strValueOf);
    }

    public static void a(Context context, com.cmic.sso.sdk.a aVar) {
        String str;
        try {
            if (aVar.a().o()) {
                return;
            }
            com.mobile.auth.h.e eVar = new com.mobile.auth.h.e();
            String strValueOf = String.valueOf(0);
            eVar.e(!f13489a.a("authPageIn", strValueOf).equals(strValueOf) ? f13489a.get("authPageIn") : null);
            eVar.f(!f13489a.a("authPageOut", strValueOf).equals(strValueOf) ? f13489a.get("authPageOut") : null);
            eVar.c(!f13489a.a("authClickSuccess", strValueOf).equals(strValueOf) ? f13489a.get("authClickSuccess") : null);
            eVar.b(!f13489a.a("authClickFailed", strValueOf).equals(strValueOf) ? f13489a.get("authClickFailed") : null);
            eVar.d(f13489a.a("timeOnAuthPage", strValueOf).equals(strValueOf) ? null : f13489a.get("timeOnAuthPage"));
            eVar.a(f13489a.a("authPrivacyState", strValueOf));
            JSONObject jSONObjectA = eVar.a();
            com.mobile.auth.j.a aVar2 = new com.mobile.auth.j.a();
            aVar2.D(aVar.a("appid", ""));
            aVar2.y(aVar.c("traceId"));
            aVar2.D(aVar.c("appid"));
            aVar2.r(j.c(context));
            aVar2.s(j.d(context));
            aVar2.E(BuildConfig.CMCC_SDK_VERSION);
            aVar2.p("android");
            aVar2.q(aVar.c("timeOut"));
            String strA = f13489a.a("authPageInTime", "");
            if (TextUtils.isEmpty(strA)) {
                strA = f13489a.a("SMSInTime", "");
            }
            aVar2.z(strA);
            String strA2 = f13489a.a("authPageOutTime", "");
            if (TextUtils.isEmpty(strA2)) {
                strA2 = f13489a.a("SMSOutTime", "");
            }
            aVar2.B(strA2);
            aVar2.C("eventTracking5");
            aVar2.u(aVar.a("operatorType", ""));
            if (aVar.a("startnetworkType", 0) == 0) {
                str = t.a(context) + "";
            } else {
                str = aVar.a("startnetworkType", 0) + "";
            }
            aVar2.F(str);
            aVar2.A(aVar.c("networkClass"));
            aVar2.l(t.a());
            aVar2.v(t.b());
            aVar2.w(t.c());
            aVar2.t(aVar.c("simCardNum"));
            String str2 = "1";
            aVar2.a(aVar.a("hsaReadPhoneStatePermission", false) ? "1" : "0");
            aVar2.a(jSONObjectA);
            if (!l.a()) {
                str2 = "0";
            }
            aVar2.g(str2);
            aVar2.f(aVar.a("imsiState", "0"));
            aVar2.o((System.currentTimeMillis() - aVar.a("methodTimes", 0L)) + "");
            f.a("EventUtils", "埋点日志上报" + aVar2.a());
            new com.mobile.auth.j.b().a(context, aVar2.a(), aVar);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str) {
        try {
            String str2 = f13489a.get(str);
            f13489a.put(str, String.valueOf((TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2)) + 1));
            f13489a.put(str + "Time", v.a());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str, String str2) {
        f13489a.put(str, str2);
    }
}
