package com.mobile.auth.k;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13504a = "o";
    private static o b;
    private Context c;

    private o(Context context) {
        this.c = context.getApplicationContext();
    }

    public static o a(Context context) {
        if (b == null) {
            b = new o(context);
        }
        return b;
    }

    private String a(String str) {
        str.hashCode();
        switch (str) {
            case "46000":
            case "46002":
            case "46004":
            case "46007":
                f.a(f13504a, "中国移动");
                return "1";
            case "46001":
            case "46006":
            case "46009":
                f.a(f13504a, "中国联通");
                return "2";
            case "46003":
            case "46005":
            case "46011":
                f.a(f13504a, "中国电信");
                return "3";
            default:
                return "0";
        }
    }

    @SuppressLint({"MissingPermission"})
    public String a() {
        try {
            com.mobile.auth.g.b.C0254b c0254bB = com.mobile.auth.g.b.a().b();
            return c0254bB.g(c0254bB.e());
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public String a(boolean z) {
        TelephonyManager telephonyManager;
        com.mobile.auth.g.b.C0254b c0254bB = com.mobile.auth.g.b.a().b();
        String strH = c0254bB.h(c0254bB.e());
        if (TextUtils.isEmpty(strH) && t.b(this.c) && (telephonyManager = (TelephonyManager) this.c.getSystemService("phone")) != null) {
            strH = telephonyManager.getSimOperator();
            if (TextUtils.isEmpty(strH) && k.a(this.c, "android.permission.READ_PHONE_STATE") && t.e()) {
                String subscriberId = null;
                try {
                    subscriberId = telephonyManager.getSubscriberId();
                } catch (Exception unused) {
                    f.a(f13504a, "getOperator失败");
                }
                if (!TextUtils.isEmpty(subscriberId) && subscriberId.length() >= 5) {
                    strH = subscriberId.substring(0, 5);
                }
            }
        }
        f.b(f13504a, "operator: " + strH);
        if (TextUtils.isEmpty(strH)) {
            return z ? "0" : "";
        }
        return a(strH);
    }

    public String b() {
        try {
            com.mobile.auth.g.b.C0254b c0254bB = com.mobile.auth.g.b.a().b();
            String strG = c0254bB.g((c0254bB.e() + 1) % 2);
            return strG == null ? "" : strG;
        } catch (Exception unused) {
            return "";
        }
    }

    @SuppressLint({"MissingPermission"})
    public String c() {
        com.mobile.auth.g.b.C0254b c0254bB = com.mobile.auth.g.b.a().b();
        return c0254bB.a(c0254bB.e());
    }

    public String d() {
        TelephonyManager telephonyManager = (TelephonyManager) this.c.getSystemService("phone");
        if (telephonyManager == null) {
            return "0";
        }
        String simOperator = telephonyManager.getSimOperator();
        f.b(f13504a, "SysOperType = " + simOperator);
        return a(simOperator);
    }
}
