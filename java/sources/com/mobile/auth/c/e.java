package com.mobile.auth.c;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13110a = "e";
    private static int b;
    private static Map<String, b> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List<String> f13111d = new ArrayList();

    public static synchronized b a(String str) {
        b bVar;
        try {
            bVar = c.containsKey(str) ? c.get(str) : null;
            if (bVar == null) {
                bVar = new b(str);
                c.put(str, bVar);
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return new b(str);
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
        return bVar;
    }

    static /* synthetic */ void a(Context context) {
        try {
            b(context);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(final Context context, String str) {
        try {
            synchronized (e.class) {
                if (c.containsKey(str)) {
                    f13111d.add(c.get(str).toString());
                    c.remove(str);
                }
                if (b != 1 && !f13111d.isEmpty()) {
                    b = 1;
                    new Timer().schedule(new TimerTask() { // from class: com.mobile.auth.c.e.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            try {
                                e.a(context);
                            } catch (Throwable th) {
                                try {
                                    com.mobile.auth.gatewayauth.a.a(th);
                                } catch (Throwable th2) {
                                    com.mobile.auth.gatewayauth.a.a(th2);
                                }
                            }
                        }
                    }, 8000L);
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                }
            }
        }
    }

    public static void a(String str, String str2, String str3) {
        int i = -1;
        String strOptString = "";
        try {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    JSONObject jSONObject = new JSONObject(str2);
                    i = jSONObject.getInt(SpeechUtility.TAG_RESOURCE_RESULT);
                    strOptString = jSONObject.optString(SocialConstants.PARAM_SEND_MSG);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (i == 0) {
                a(str).a(i).f(strOptString);
            } else {
                a(str).a(i).f(strOptString).e(str3);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private static void b(Context context) {
        if (context == null) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            synchronized (e.class) {
                arrayList.addAll(f13111d);
                b = 0;
                f13111d.clear();
            }
            if (arrayList.isEmpty()) {
                return;
            }
            d.a(context, arrayList);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                }
            }
        }
    }

    public static void b(Context context, String str) {
        try {
            d.a(context, str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
