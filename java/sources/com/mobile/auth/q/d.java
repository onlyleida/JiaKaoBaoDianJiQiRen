package com.mobile.auth.q;

import android.content.Context;
import com.mobile.auth.k.o;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static int a(Context context, int i) {
        try {
            try {
                com.mobile.auth.e.a.a(context).b(context);
                return Integer.parseInt(o.a(context).a(true));
            } catch (Exception e2) {
                e2.toString();
                return i;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1;
            }
        }
    }

    public static String a(Context context) {
        try {
            try {
                com.mobile.auth.e.a.a(context).b(context);
                return o.a(context).c();
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        } catch (Exception e2) {
            e2.toString();
            return null;
        }
    }
}
