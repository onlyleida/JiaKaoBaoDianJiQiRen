package com.mobile.auth.ab;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f13092a = false;

    public static void a(Exception exc) {
        try {
            if (f13092a) {
                exc.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(String str) {
        try {
            if (f13092a) {
                Log.i("UniAccount", "4.5.0AR02B1217 " + str);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void b(String str) {
        try {
            Log.e("UniAccount", "4.5.0AR02B1217 " + str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void c(String str) {
        try {
            Log.i("UniAccount", "4.5.0AR02B1217 " + str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
