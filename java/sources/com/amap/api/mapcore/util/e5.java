package com.amap.api.mapcore.util;

import android.content.Context;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class e5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f10741a = -1;
    public static String b = "";
    private static m5 c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f10742d = "http://apiinit.amap.com/v3/log/init";

    private static String a() {
        return f10742d;
    }

    private static Map<String, String> b(Context context) {
        HashMap map = new HashMap();
        try {
            map.put("resType", "json");
            map.put("encode", "UTF-8");
            String strA = f5.a();
            map.put("ts", strA);
            map.put("key", c5.j(context));
            map.put("scode", f5.d(context, strA, n5.x("resType=json&encode=UTF-8&key=" + c5.j(context))));
        } catch (Throwable th) {
            b6.e(th, "Auth", "gParams");
        }
        return map;
    }

    @Deprecated
    public static synchronized boolean c(Context context, m5 m5Var) {
        return d(context, m5Var, false);
    }

    private static boolean d(Context context, m5 m5Var, boolean z) {
        c = m5Var;
        try {
            String strA = a();
            HashMap map = new HashMap();
            map.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
            map.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
            map.put(HttpHeaders.CONNECTION, "Keep-Alive");
            map.put(HttpHeaders.USER_AGENT, c.h());
            map.put("X-INFO", f5.k(context));
            map.put("logversion", "2.1");
            map.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", c.e(), c.a()));
            f7 f7VarA = f7.a();
            o5 o5Var = new o5();
            o5Var.setProxy(l5.c(context));
            o5Var.f(map);
            o5Var.g(b(context));
            o5Var.e(strA);
            return e(f7VarA.e(o5Var));
        } catch (Throwable th) {
            b6.e(th, "Auth", "getAuth");
            return true;
        }
    }

    private static boolean e(byte[] bArr) {
        if (bArr == null) {
            return true;
        }
        try {
            JSONObject jSONObject = new JSONObject(n5.g(bArr));
            if (jSONObject.has("status")) {
                int i = jSONObject.getInt("status");
                if (i == 1) {
                    f10741a = 1;
                } else if (i == 0) {
                    f10741a = 0;
                }
            }
            if (jSONObject.has("info")) {
                b = jSONObject.getString("info");
            }
            if (f10741a == 0) {
                Log.i("AuthFailure", b);
            }
            return f10741a == 1;
        } catch (JSONException e2) {
            b6.e(e2, "Auth", "lData");
            return false;
        } catch (Throwable th) {
            b6.e(th, "Auth", "lData");
            return false;
        }
    }
}
