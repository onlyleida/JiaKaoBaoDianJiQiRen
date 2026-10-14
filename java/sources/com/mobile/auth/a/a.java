package com.mobile.auth.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mobile.auth.c.e;
import com.mobile.auth.d.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static c b = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f13069f = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Handler f13066a = new Handler(Looper.getMainLooper());
    public static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f13067d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f13068e = 0;

    static /* synthetic */ String a() {
        try {
            return f13069f;
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

    public static void a(int i, int i2, int i3, c cVar) {
        try {
            f13067d = i;
            f13068e = i2;
            c = i3;
            b = cVar;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(Context context, String str, String str2, b bVar) {
        try {
            a(f13069f, "called requestPreAuthCode()   appId：" + str + ",appSecret:" + str2);
            a(context, str, str2, "qhx", bVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private static void a(Context context, String str, String str2, String str3, b bVar) {
        try {
            if (bVar == null) {
                b = null;
                return;
            }
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (!f.b(context)) {
                    bVar.a("{\"result\":80003,\"msg\":\"网络无连接\"}");
                    b = null;
                    return;
                } else if (f.c(context)) {
                    new com.mobile.auth.d.a().a(context, str, str2, str3, bVar);
                    return;
                } else if (f.d(context)) {
                    new com.mobile.auth.d.a().b(context, str, str2, str3, bVar);
                    return;
                } else {
                    bVar.a("{\"result\":80004,\"msg\":\"移动网络未开启\"}");
                    b = null;
                    return;
                }
            }
            bVar.a("{\"result\":80106,\"msg\":\"请求参数异常\"}");
            b = null;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(String str, String str2) {
        try {
            if (b != null) {
                try {
                    b.a("CT_" + str, str2);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        try {
            if (b != null) {
                try {
                    b.a("CT_" + str, str2, th);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }

    public static void b(final Context context, final String str, final String str2, final b bVar) {
        try {
            f13066a.post(new Runnable() { // from class: com.mobile.auth.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (bVar != null) {
                            try {
                                JSONObject jSONObject = new JSONObject(str);
                                jSONObject.put("reqId", str2);
                                bVar.a(jSONObject.toString());
                                a.a(a.a(), "callback result : " + jSONObject.toString());
                            } catch (Exception unused) {
                                bVar.a(str);
                                a.a(a.a(), "Exception callback result : " + str);
                            }
                            a.b = null;
                            e.a(context, str2);
                        }
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
