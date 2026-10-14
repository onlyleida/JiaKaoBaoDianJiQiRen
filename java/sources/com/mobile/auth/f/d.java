package com.mobile.auth.f;

import android.text.TextUtils;
import com.mobile.auth.k.p;

/* JADX INFO: loaded from: classes2.dex */
class d {
    static int a(int i) {
        return p.a("sso_config_xf", "maxFailedLogTimes", i);
    }

    static String a(String str) {
        String strA = p.a("sso_config_xf", "configHost", (String) null);
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static boolean a() {
        return System.currentTimeMillis() >= p.a("sso_config_xf", "client_valid", 0L);
    }

    static boolean a(boolean z) {
        return "1".equals(p.a("sso_config_xf", "CLOSE_IPV4_LIST", !z ? "0" : "1"));
    }

    static int b(int i) {
        return p.a("sso_config_xf", "pauseTime", i);
    }

    static String b(String str) {
        String strA = p.a("sso_config_xf", "httpHost", (String) null);
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static boolean b(boolean z) {
        return "1".equals(p.a("sso_config_xf", "CLOSE_IPV6_LIST", !z ? "0" : "1"));
    }

    static String c(String str) {
        String strA = p.a("sso_config_xf", "https_get_phone_scrip_host", (String) null);
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static boolean c(boolean z) {
        String str = !z ? "0" : "1";
        return "1".equals(p.a("sso_config_xf", "CLOSE_M005_APPID_LIST", str)) || "1".equals(p.a("sso_config_xf", "CLOSE_M005_SDKVERSION_LIST", str));
    }

    static String d(String str) {
        String strA = p.a("sso_config_xf", "httpsHost", (String) null);
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static boolean d(boolean z) {
        String str = !z ? "0" : "1";
        return "1".equals(p.a("sso_config_xf", "CLOSE_M008_APPID_LIST", str)) || "1".equals(p.a("sso_config_xf", "CLOSE_M008_SDKVERSION_LIST", str));
    }

    static String e(String str) {
        String strA = p.a("sso_config_xf", "logHost", "");
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static boolean e(boolean z) {
        return !"1".equals(p.a("sso_config_xf", "WAPKS_HTTPS", !z ? "1" : "0"));
    }

    static String f(String str) {
        return p.a("sso_config_xf", "CERT_INFO", str);
    }

    static boolean f(boolean z) {
        return !"0".equals(p.a("sso_config_xf", "CLOSE_CERT_VERIFY", !z ? "0" : "1"));
    }

    static boolean g(boolean z) {
        return p.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", z ? "CU" : "").contains("CU");
    }

    static boolean h(boolean z) {
        return p.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", z ? "CT" : "").contains("CT");
    }

    static boolean i(boolean z) {
        return "1".equals(p.a("sso_config_xf", "CLOSE_LOGS_VERSION", z ? "1" : "0"));
    }
}
