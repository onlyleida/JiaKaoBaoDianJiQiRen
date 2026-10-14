package com.mobile.auth.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13113a = "a";

    static /* synthetic */ String a() {
        try {
            return f13113a;
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

    public static String a(Context context, String str, String str2, Network network) {
        try {
            return c(context, d.a(context, str, network), str2, network);
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

    private String a(Context context, String str, String str2, String str3, Network network, String str4) {
        try {
            String strB = b();
            String strA = g.a(context, str, str2, str3, strB);
            String str5 = f13113a;
            com.mobile.auth.a.a.a(str5, "request params : " + strA);
            String strA2 = d.a(context, "https://id6.me/auth/preauth.do", strA, network, str4);
            com.mobile.auth.a.a.a(str5, "request result : " + strA2);
            String strB2 = b(context, strA2, strB, network);
            if (TextUtils.isEmpty(strB2)) {
                return "{\"result\":80001,\"msg\":\"请求异常\"}";
            }
            com.mobile.auth.c.e.a(str4, strB2, strA);
            return strB2;
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

    private static String a(Context context, List<String> list, String str, Network network) {
        for (int i = 0; i < list.size(); i++) {
            try {
                try {
                    String str2 = list.get(i);
                    if (!TextUtils.isEmpty(list.get(i)) && context != null && Build.VERSION.SDK_INT < 21) {
                        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                        if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                            int iA = e.a(e.b(str2));
                            Class<?> cls = Class.forName("android.net.ConnectivityManager");
                            Class<?> cls2 = Integer.TYPE;
                            ((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(connectivityManager, 5, Integer.valueOf(iA))).booleanValue();
                        }
                    }
                    String strA = a(context, list.get(i), str, network);
                    try {
                        JSONObject jSONObject = !TextUtils.isEmpty(strA) ? new JSONObject(strA) : null;
                        if (jSONObject != null && jSONObject.getInt(SpeechUtility.TAG_RESOURCE_RESULT) == 0) {
                            return strA;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
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
        return null;
    }

    static /* synthetic */ String a(a aVar, Context context, String str, String str2, String str3, Network network, String str4) {
        try {
            return aVar.a(context, str, str2, str3, network, str4);
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

    public static String a(String str, String str2) {
        try {
            return com.mobile.auth.b.a.c(str, str2);
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

    private void a(final Context context, final String str, final i.a aVar, final int i, final com.mobile.auth.a.b bVar) {
        try {
            final Future futureB = i.b(aVar);
            i.a(new Runnable() { // from class: com.mobile.auth.d.a.4
                @Override // java.lang.Runnable
                public void run() {
                    boolean zIsDone;
                    Future future;
                    try {
                        try {
                            futureB.get(i, TimeUnit.MILLISECONDS);
                            Future future2 = futureB;
                            if (future2 == null || future2.isDone()) {
                                return;
                            }
                            future = futureB;
                            future.cancel(true);
                        } catch (Throwable th) {
                            try {
                                aVar.a(true);
                                if (th instanceof TimeoutException) {
                                    com.mobile.auth.c.e.a(str, "{\"result\":80000,\"msg\":\"请求超时\"}", "");
                                    com.mobile.auth.c.e.a(str).h("submitOnTimeoutInterrupted()");
                                    com.mobile.auth.a.a.b(context, "{\"result\":80000,\"msg\":\"请求超时\"}", str, bVar);
                                } else {
                                    com.mobile.auth.c.e.a(str, "{\"result\":80001,\"msg\":\"请求异常\"}", "");
                                    com.mobile.auth.c.e.a(str).h("submitOnTimeoutInterrupted other exception : " + th.getMessage());
                                    com.mobile.auth.a.a.a(a.a(), "submitOnTimeoutInterrupted other exception", th);
                                    com.mobile.auth.a.a.b(context, "{\"result\":80001,\"msg\":\"请求异常\"}", str, bVar);
                                }
                                if (futureB == null) {
                                    return;
                                }
                                if (zIsDone) {
                                } else {
                                    future = futureB;
                                }
                            } finally {
                                Future future3 = futureB;
                                if (future3 != null && !future3.isDone()) {
                                    futureB.cancel(true);
                                }
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
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private String b() {
        try {
            String string = UUID.randomUUID().toString();
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            String strReplace = string.replace("-", "");
            return strReplace.length() >= 16 ? strReplace.substring(0, 16) : strReplace;
        } catch (Throwable th) {
            try {
                com.mobile.auth.a.a.a(f13113a, "generateAesKey error", th);
                return "";
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
    }

    private String b(Context context, String str, String str2, Network network) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt(SpeechUtility.TAG_RESOURCE_RESULT);
                String strOptString = jSONObject.optString("data");
                if ((iOptInt == 0 || iOptInt == 30002) && !TextUtils.isEmpty(strOptString)) {
                    String strA = a(strOptString, str2);
                    if (!TextUtils.isEmpty(strA)) {
                        try {
                            jSONObject.put("data", new JSONObject(strA));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            jSONObject.put("data", strA);
                        }
                        if (iOptInt != 30002) {
                            return jSONObject.toString();
                        }
                        JSONObject jSONObject2 = (JSONObject) jSONObject.opt("data");
                        ArrayList arrayList = new ArrayList();
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("urls");
                        if (jSONArrayOptJSONArray != null) {
                            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                arrayList.add(jSONArrayOptJSONArray.getString(i));
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        return a(context, arrayList, str2, network);
                    }
                }
                return jSONObject.toString();
            } catch (Throwable th) {
                com.mobile.auth.a.a.a(f13113a, "decryptResult error", th);
                return null;
            }
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
                return null;
            }
        }
    }

    private static String c(Context context, String str, String str2, Network network) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt(SpeechUtility.TAG_RESOURCE_RESULT);
                String strOptString = jSONObject.optString("data");
                if (iOptInt == 0 && !TextUtils.isEmpty(strOptString)) {
                    String strA = a(strOptString, str2);
                    if (!TextUtils.isEmpty(strA)) {
                        try {
                            jSONObject.put("data", new JSONObject(strA));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            jSONObject.put("data", strA);
                        }
                    }
                }
                return jSONObject.toString();
            } catch (Throwable th) {
                com.mobile.auth.a.a.a(f13113a, "decryptResult error", th);
                return null;
            }
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
                return null;
            }
        }
    }

    public void a(final Context context, final String str, final String str2, final String str3, final com.mobile.auth.a.b bVar) {
        try {
            int i = com.mobile.auth.a.a.c;
            int i2 = i <= 0 ? 10000 : i;
            final String strA = c.a();
            com.mobile.auth.c.e.a(strA).a(str).b(c.a(context)).d("preauth").c(f.f(context));
            a(context, strA, new i.a() { // from class: com.mobile.auth.d.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strA2 = a.a(a.this, context, str, str2, str3, null, strA);
                        if (a()) {
                            return;
                        }
                        com.mobile.auth.a.a.b(context, strA2, strA, bVar);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            }, i2, bVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void b(final Context context, final String str, final String str2, final String str3, final com.mobile.auth.a.b bVar) {
        try {
            int i = com.mobile.auth.a.a.c;
            int i2 = i <= 0 ? 10000 : i;
            final String strA = c.a();
            com.mobile.auth.c.e.a(strA).a(str).b(c.a(context)).d("preauth").c(f.f(context));
            if (Build.VERSION.SDK_INT >= 21) {
                e eVar = new e();
                eVar.a(context, new e.a() { // from class: com.mobile.auth.d.a.2

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    private boolean f13124h = false;
                    private boolean i = false;

                    @Override // com.mobile.auth.d.e.a
                    public synchronized void a() {
                        try {
                            this.f13124h = true;
                            if (!this.i) {
                                com.mobile.auth.c.e.a(strA, "{\"result\":80000,\"msg\":\"请求超时\"}", "");
                                com.mobile.auth.a.a.b(context, "{\"result\":80000,\"msg\":\"请求超时\"}", strA, bVar);
                            }
                        } catch (Throwable th) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                            } catch (Throwable th2) {
                                com.mobile.auth.gatewayauth.a.a(th2);
                            }
                        }
                    }

                    @Override // com.mobile.auth.d.e.a
                    public synchronized void a(int i3, String str4, long j) {
                        try {
                            if (!this.f13124h && !this.i) {
                                this.i = true;
                                com.mobile.auth.c.e.a(strA).h("switchToMobile_L  onFail()  expendTime : " + j).a(i3).f(str4).b(j);
                                com.mobile.auth.a.a.b(context, h.a(i3, str4), strA, bVar);
                                com.mobile.auth.a.a.a(a.a(), "Switching network failed (L), errorMsg :" + str4 + " , expendTime ：" + j);
                            }
                        } catch (Throwable th) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                            } catch (Throwable th2) {
                                com.mobile.auth.gatewayauth.a.a(th2);
                            }
                        }
                    }

                    @Override // com.mobile.auth.d.e.a
                    public void a(Network network, long j) {
                        try {
                            com.mobile.auth.a.a.a(a.a(), "Switching network successfully (L) , expendTime ：" + j);
                            if (!this.f13124h && !this.i) {
                                com.mobile.auth.c.e.a(strA).b(j);
                                String strA2 = a.a(a.this, context, str, str2, str3, network, strA);
                                synchronized (this) {
                                    if (!this.f13124h && !this.i) {
                                        this.i = true;
                                        com.mobile.auth.a.a.b(context, strA2, strA, bVar);
                                    }
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
                });
                eVar.a(i2);
            } else {
                a(context, strA, new i.a() { // from class: com.mobile.auth.d.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (new e().a(context, "https://id6.me/auth/preauth.do")) {
                                if (a()) {
                                    return;
                                }
                                String strA2 = a.a(a.this, context, str, str2, str3, null, strA);
                                if (a()) {
                                } else {
                                    com.mobile.auth.a.a.b(context, strA2, strA, bVar);
                                }
                            } else if (a()) {
                            } else {
                                com.mobile.auth.a.a.b(context, h.a(80800, "WIFI切换超时"), strA, bVar);
                            }
                        } catch (Throwable th) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                            } catch (Throwable th2) {
                                com.mobile.auth.gatewayauth.a.a(th2);
                            }
                        }
                    }
                }, i2, bVar);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
