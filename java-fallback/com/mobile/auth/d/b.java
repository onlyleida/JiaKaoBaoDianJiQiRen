package com.mobile.auth.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static SharedPreferences a(Context r2) {
        return r2.getSharedPreferences(b(r2), 0);
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public static void a(Context r1, String r2, int r3) {
        if (r1 == null) goto L22;
    L10:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L13
        return;
    L13:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return;
    L4:
        if (TextUtils.isEmpty(r2) == true) goto L23;
        a(r1).edit().putInt(r2, r3).commit();     // Catch: Exception -> L7 Throwable -> L10
    L24:
        return;
    L7:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L10
        return;
    L23:
        return;
    }

    public static void a(Context r1, String r2, String r3) {
        if (r1 == null) goto L22;
    L10:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L13
        return;
    L13:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return;
    L4:
        if (TextUtils.isEmpty(r2) == true) goto L23;
        a(r1).edit().putString(r2, r3).commit();     // Catch: Exception -> L7 Throwable -> L10
    L24:
        return;
    L7:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L10
        return;
    L23:
        return;
    }

    public static int b(Context r1, String r2, int r3) {
        if (r1 != null) goto L18;
    L17:
        return r3;
    L18:
    L10:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L14
        return -1;
    L14:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return -1;
    L4:
        if (TextUtils.isEmpty(r2) == true) goto L17;
        return a(r1).getInt(r2, r3);
    L7:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L10
        goto L17
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 7 */
    private static String b(Context r1) {
        return "ct_account_api_sdk";
    }

    public static String b(Context r1, String r2, String r3) {
        if (r1 != null) goto L18;
    L17:
        return r3;
    L18:
    L10:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L14
        return null;
    L14:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L4:
        if (TextUtils.isEmpty(r2) == true) goto L17;
        return a(r1).getString(r2, r3);
    L7:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L10
        goto L17
    }
}
