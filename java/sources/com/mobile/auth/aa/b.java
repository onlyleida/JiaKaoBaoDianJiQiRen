package com.mobile.auth.aa;

import android.content.Context;
import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.ab.e;
import com.mobile.auth.ab.f;
import com.mobile.auth.gatewayauth.ResultCode;
import com.tencent.connect.common.Constants;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f13076a;
    private Handler b = new Handler(Looper.getMainLooper());
    private a c = new a();

    private b() {
    }

    public static b a() {
        try {
            if (f13076a == null) {
                synchronized (b.class) {
                    if (f13076a == null) {
                        f13076a = new b();
                    }
                }
            }
            return f13076a;
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

    private String a(Context context, int i, String str) {
        try {
            try {
                String packageName = context.getPackageName();
                String strB = f.b(context, context.getPackageName());
                if (packageName == null) {
                    packageName = "";
                }
                if (strB == null) {
                    strB = "";
                }
                String strA = e.a();
                String str2 = i != 2 ? "1" : "";
                String str3 = "" + System.currentTimeMillis();
                String strA2 = com.mobile.auth.y.b.a(f.b(context).getBytes());
                String strDecode = URLDecoder.decode(f.d(str), "utf-8");
                String strA3 = f.a(str2 + strA + "30100jsonp" + strA2 + strDecode + packageName + strB + str3 + BuildConfig.CUCC_SDK_VERSION + e.b());
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(Constants.PARAM_CLIENT_ID, strA);
                jSONObject.put("client_type", "30100");
                jSONObject.put("format", "jsonp");
                jSONObject.put("version", BuildConfig.CUCC_SDK_VERSION);
                if (i != 2) {
                    jSONObject.put("business_type", str2);
                }
                jSONObject.put("packname", packageName);
                jSONObject.put("packsign", URLEncoder.encode(strB, "utf-8"));
                jSONObject.put("timeStamp", str3);
                jSONObject.put("key", strDecode);
                jSONObject.put("fp", strA2);
                jSONObject.put("sign", strA3);
                return jSONObject.toString();
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
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

    private HashMap<String, String> a(Context context) {
        try {
            HashMap<String, String> map = new HashMap<>();
            map.put("model", Build.MODEL);
            map.put("system", Build.VERSION.RELEASE);
            map.put("device_id", f.c(context));
            return map;
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

    private void a(Context context, int i, String str, String str2, Network network, final c cVar) {
        try {
            try {
                this.c.a(str2 + com.mobile.auth.ab.b.a(a(context, i, str), "&"), a(context), network, new a.InterfaceC0248a() { // from class: com.mobile.auth.aa.b.1
                    @Override // com.mobile.auth.aa.a.InterfaceC0248a
                    public void a(String str3) {
                        try {
                            com.mobile.auth.ab.a.a().b();
                            if (TextUtils.isEmpty(str3)) {
                                cVar.a(2, "");
                            } else {
                                cVar.a(1, str3);
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
            } catch (Exception unused) {
                cVar.a(2, "");
                com.mobile.auth.ab.a.a().b();
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(b bVar, Context context, int i, String str, String str2, Network network, c cVar) {
        try {
            bVar.a(context, i, str, str2, network, cVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:25:0x0057 */
    public void a(final Context context, final int i, final String str, final c cVar) {
        try {
            try {
                if (f.a(context.getApplicationContext()) == 1) {
                    this.b.post(new Runnable() { // from class: com.mobile.auth.aa.b.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                com.mobile.auth.ab.a.a().a(context, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?", new com.mobile.auth.ab.a.b() { // from class: com.mobile.auth.aa.b.2.1
                                    @Override // com.mobile.auth.ab.a.b
                                    public void a(boolean z, Network network) {
                                        try {
                                            if (z) {
                                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                                b.a(b.this, context, i, str, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?", network, cVar);
                                            } else {
                                                cVar.a(2, ResultCode.CUCC_MSG_ERROR_NET_ERROR);
                                                com.mobile.auth.ab.a.a().b();
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
                    });
                } else if (f.a(context.getApplicationContext()) == 0) {
                    a(context, i, str, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?", null, cVar);
                } else {
                    cVar.a(2, ResultCode.CUCC_MSG_ERROR_NET_ERROR);
                    com.mobile.auth.ab.a.a().b();
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        } catch (Exception unused) {
            cVar.a(2, "");
            com.mobile.auth.ab.a.a().b();
        }
    }
}
