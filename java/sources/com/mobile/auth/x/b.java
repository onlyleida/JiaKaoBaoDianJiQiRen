package com.mobile.auth.x;

import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.ab.d;
import com.mobile.auth.ab.e;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f13608a;
    private Context b;

    private b() {
    }

    public static b a() {
        try {
            if (f13608a == null) {
                synchronized (b.class) {
                    if (f13608a == null) {
                        f13608a = new b();
                    }
                }
            }
            return f13608a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private void b(Context context, String str, String str2) {
        try {
            if (context != null) {
                try {
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                        if (!TextUtils.isEmpty(e.a())) {
                            d.b("不可重复初始化");
                            return;
                        } else {
                            e.a(str);
                            e.b(str2);
                            return;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            d.b("初始化参数不能为空");
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(int i, a aVar) {
        try {
            new com.mobile.auth.z.a().a(this.b, i, 3, aVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(Context context, String str, String str2) {
        try {
            this.b = context.getApplicationContext();
            b(context, str, str2);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void b(int i, a aVar) {
        try {
            new com.mobile.auth.z.a().a(this.b, i, 2, aVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
