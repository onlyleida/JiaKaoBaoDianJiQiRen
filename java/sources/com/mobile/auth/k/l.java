package com.mobile.auth.k;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;

/* JADX INFO: loaded from: classes5.dex */
public class l {
    private static String b;
    private static String c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f13499a = s.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f13500d = 0;

    static class a extends u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f13501a;
        final /* synthetic */ String b;
        final /* synthetic */ long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f13502d;

        a(Context context, String str, long j, String str2) {
            this.f13501a = context;
            this.b = str;
            this.c = j;
            this.f13502d = str2;
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            f.b("PhoneScripUtils", "start save scrip to sp in sub thread");
            l.c(this.f13501a, this.b, this.c, this.f13502d);
        }
    }

    private static int a(String str) {
        String strB;
        if (TextUtils.isEmpty(c)) {
            strB = p.b("pre_sim_key", "");
            c = strB;
        } else {
            strB = c;
        }
        if (TextUtils.isEmpty(strB)) {
            return 0;
        }
        return strB.equals(str) ? 1 : 2;
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        String strB = p.b("phonescripcache", "");
        if (TextUtils.isEmpty(strB)) {
            f.a("PhoneScripUtils", BuildConfig.COMMON_MODULE_COMMIT_ID);
            return null;
        }
        f13500d = p.b("phonescripstarttime", 0L);
        String strB2 = e.b(context, strB);
        b = strB2;
        return strB2;
    }

    public static void a(Context context, String str, long j, String str2) {
        b = str;
        f13500d = j;
        c = str2;
        if (f13499a || TextUtils.isEmpty(str2)) {
            return;
        }
        u.a(new a(context, str, j, str2));
    }

    public static void a(boolean z) {
        p.a("phonescripcache");
        p.a("phonescripstarttime");
        p.a("pre_sim_key");
        if (z) {
            b = null;
            c = null;
            f13500d = 0L;
        }
    }

    public static boolean a() {
        return f13499a;
    }

    private static boolean a(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        f.b("PhoneScripUtils", j + "");
        f.b("PhoneScripUtils", jCurrentTimeMillis + "");
        return j - jCurrentTimeMillis > 120000;
    }

    public static boolean a(com.cmic.sso.sdk.a aVar) {
        int iA = a(aVar.c(!aVar.a("keyIsSimKeyICCID", false) ? "imsi" : "iccid"));
        aVar.b("imsiState", iA + "");
        f.b("PhoneScripUtils", "simState = " + iA);
        if (iA != 1) {
            return false;
        }
        if (f13499a) {
            f.b("PhoneScripUtils", "phone is root");
            a(false);
        }
        return b();
    }

    private static boolean b() {
        f.b("PhoneScripUtils", b + " " + c + " " + f13500d);
        if (TextUtils.isEmpty(b)) {
            return !TextUtils.isEmpty(p.b("phonescripcache", "")) && a(p.b("phonescripstarttime", 0L));
        }
        return a(f13500d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str, long j, String str2) {
        String strA = e.a(context, str);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        p.a("phonescripcache", strA);
        p.a("phonescripstarttime", j);
        p.a("pre_sim_key", str2);
    }
}
