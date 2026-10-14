package com.mobile.auth.f;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.loc.ak;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.k.f;
import com.mobile.auth.k.p;
import com.mobile.auth.k.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f13166a;
    private com.mobile.auth.f.a b;
    private com.mobile.auth.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f13167d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f13168e;

    class a implements com.mobile.auth.i.b {
        a() {
        }

        @Override // com.mobile.auth.i.b
        public void a(String str, String str2, JSONObject jSONObject) {
            try {
                if ("103000".equals(str)) {
                    b.this.a(jSONObject);
                    p.a("sdk_config_ver", BuildConfig.CMCC_SDK_VERSION);
                    b bVar = b.this;
                    bVar.b = bVar.d();
                    if (b.this.f13168e != null) {
                        b.this.f13168e.a(b.this.b);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            b.this.f13167d = false;
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.f.b$b, reason: collision with other inner class name */
    class C0252b extends u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f13170a;
        final /* synthetic */ com.cmic.sso.sdk.a b;

        C0252b(Context context, com.cmic.sso.sdk.a aVar) {
            this.f13170a = context;
            this.b = aVar;
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            f.b("UmcConfigHandle", "开始拉取配置..");
            b.this.b(this.f13170a, this.b);
        }
    }

    interface c {
        void a(com.mobile.auth.f.a aVar);
    }

    private b(boolean z) {
        com.mobile.auth.f.a aVarA = new com.mobile.auth.f.a.b().a();
        this.c = aVarA;
        if (z) {
            this.b = aVarA;
        } else {
            this.b = d();
        }
    }

    public static b a(boolean z) {
        if (f13166a == null) {
            synchronized (b.class) {
                if (f13166a == null) {
                    f13166a = new b(z);
                }
            }
        }
        return f13166a;
    }

    private String a(String str, String str2) {
        String str3;
        String[] strArrSplit = str.split("&");
        int length = strArrSplit.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str3 = "";
                break;
            }
            str3 = strArrSplit[i];
            if (str3.contains(str2)) {
                break;
            }
            i++;
        }
        return !TextUtils.isEmpty(str3) ? str3.substring(str3.lastIndexOf("=") + 1) : str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:65:0x01d1  */
    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        String str;
        String str2;
        String str3;
        SharedPreferences.Editor editorB = p.b("sso_config_xf");
        try {
            if (jSONObject.has("client_valid")) {
                editorB.putLong("client_valid", System.currentTimeMillis() + (((long) Integer.parseInt(jSONObject.getString("client_valid"))) * 60 * 60 * 1000));
            }
            if (jSONObject.has("Configlist")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("Configlist");
                if (jSONObject3.has("CHANGE_HOST")) {
                    String string = jSONObject3.getString("CHANGE_HOST");
                    if (string.contains("M005")) {
                        String[] strArrSplit = string.split("&");
                        str = "&";
                        int length = strArrSplit.length;
                        jSONObject2 = jSONObject3;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                str3 = null;
                                break;
                            }
                            int i2 = length;
                            String str4 = strArrSplit[i];
                            if (str4.contains("M005")) {
                                str3 = str4;
                                break;
                            } else {
                                i++;
                                length = i2;
                            }
                        }
                        if (!TextUtils.isEmpty(str3)) {
                            if (str3.contains(",")) {
                                String strSubstring = str3.substring(str3.indexOf("=") + 1, str3.indexOf(","));
                                String strSubstring2 = str3.substring(str3.lastIndexOf("=") + 1);
                                f.a("UmcConfigHandle", "HTTP:" + strSubstring + "||||||||HTTPS:" + strSubstring2);
                                editorB.putString("httpHost", strSubstring);
                                editorB.putString("httpsHost", strSubstring2);
                            } else if (str3.contains("https") || str3.contains("HTTPS")) {
                                editorB.putString("httpsHost", str3.substring(str3.lastIndexOf("=") + 1));
                            } else if (str3.contains("http") || str3.contains("HTTP")) {
                                editorB.putString("httpHost", str3.substring(str3.lastIndexOf("=") + 1));
                            }
                        }
                    } else {
                        jSONObject2 = jSONObject3;
                        str = "&";
                    }
                    if (string.contains("M007")) {
                        String strA = a(string, "M007");
                        if (!TextUtils.isEmpty(strA)) {
                            editorB.putString("logHost", strA);
                        }
                    }
                    if (string.contains("M008")) {
                        String strA2 = a(string, "M008");
                        if (!TextUtils.isEmpty(strA2)) {
                            editorB.putString("https_get_phone_scrip_host", strA2);
                        }
                    }
                    if (string.contains("M009")) {
                        String strA3 = a(string, "M009");
                        if (!TextUtils.isEmpty(strA3)) {
                            editorB.putString("configHost", strA3);
                        }
                    }
                } else {
                    jSONObject2 = jSONObject3;
                    str = "&";
                    editorB.remove("httpHost");
                    editorB.remove("httpsHost");
                    editorB.remove("logHost");
                    editorB.remove("https_get_phone_scrip_host");
                    editorB.remove("configHost");
                }
                JSONObject jSONObject4 = jSONObject2;
                if (jSONObject4.has("HOST_CERT_INFO")) {
                    String strOptString = jSONObject4.optString("HOST_CERT_INFO");
                    if (TextUtils.isEmpty(strOptString) || BuildConfig.COMMON_MODULE_COMMIT_ID.equalsIgnoreCase(strOptString)) {
                        str2 = str;
                    } else {
                        str2 = str;
                        String[] strArrSplit2 = strOptString.split(str2);
                        if (strArrSplit2[0].contains(":") && strArrSplit2[0].contains(",")) {
                            String strSubstring3 = strArrSplit2[0].substring(strArrSplit2[0].indexOf(":") + 1, strArrSplit2[0].indexOf(","));
                            f.b("UmcConfigHandle", "cer = " + strSubstring3);
                            editorB.putString("CERT_INFO", strSubstring3);
                        }
                    }
                } else {
                    str2 = str;
                }
                a(jSONObject4, "CLOSE_CERT_VERIFY", "0", editorB);
                a(jSONObject4, "CLOSE_FRIEND_WAPKS", "0", editorB);
                a(jSONObject4, "CLOSE_LOGS_VERSION", "0", editorB);
                a(jSONObject4, "CLOSE_IPV4_LIST", "0", editorB);
                a(jSONObject4, "CLOSE_IPV6_LIST", "1", editorB);
                a(jSONObject4, "CLOSE_M005_SDKVERSION_LIST", "0", editorB);
                a(jSONObject4, "CLOSE_M005_APPID_LIST", "0", editorB);
                a(jSONObject4, "CLOSE_M008_APPID_LIST", "0", editorB);
                a(jSONObject4, "CLOSE_M008_SDKVERSION_LIST", "0", editorB);
                a(jSONObject4, "WAPKS_HTTPS", "0", editorB);
                if (jSONObject4.has("LOGS_CONTROL")) {
                    String[] strArrSplit3 = jSONObject4.getString("LOGS_CONTROL").replace(ak.f12508g, "").split(str2);
                    if (strArrSplit3.length == 2 && !TextUtils.isEmpty(strArrSplit3[0]) && !TextUtils.isEmpty(strArrSplit3[1])) {
                        try {
                            int i3 = Integer.parseInt(strArrSplit3[0]);
                            int i4 = Integer.parseInt(strArrSplit3[1]);
                            editorB.putInt("maxFailedLogTimes", i3);
                            editorB.putInt("pauseTime", i4);
                        } catch (Exception unused) {
                            f.a("UmcConfigHandle", "解析日志上报限制时间次数异常");
                        }
                    }
                } else {
                    editorB.remove("maxFailedLogTimes");
                    editorB.remove("pauseTime");
                }
            }
            editorB.commit();
        } catch (Exception e2) {
            f.a("UmcConfigHandle", "配置项异常，配置失效");
            e2.printStackTrace();
        }
    }

    private void a(JSONObject jSONObject, String str, String str2, SharedPreferences.Editor editor) {
        if (!jSONObject.has(str)) {
            editor.remove(str);
            return;
        }
        String strOptString = jSONObject.optString(str, str2);
        if ("CLOSE_FRIEND_WAPKS".equals(str)) {
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            if (!strOptString.contains("CU") && !strOptString.contains("CT") && !strOptString.contains("CM")) {
                return;
            }
        } else if (!"0".equals(strOptString) && !"1".equals(strOptString)) {
            return;
        }
        editor.putString(str, jSONObject.optString(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, com.cmic.sso.sdk.a aVar) {
        if (this.f13167d) {
            f.a("UmcConfigHandle", "正在获取配置中...");
            return;
        }
        boolean z = true;
        this.f13167d = true;
        if ((!TextUtils.isEmpty(this.c.a()) || !TextUtils.isEmpty(this.b.a())) && !aVar.a("is_need_to_get_cert", false)) {
            z = false;
        }
        f.b("UmcConfigHandle", "httpsDefaultCert: " + this.c.a());
        f.b("UmcConfigHandle", "httpsLocalCert: " + this.b.a());
        com.mobile.auth.i.a.a(context).a(z, aVar, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mobile.auth.f.a d() {
        return new com.mobile.auth.f.a.b().a(d.b(this.c.b())).b(d.d(this.c.c())).e(d.a(this.c.e())).c(d.c(this.c.d())).f(d.e(this.c.f())).d(d.f(this.c.a())).f(d.a(this.c.l())).g(d.b(this.c.m())).b(d.h(this.c.h())).c(d.g(this.c.i())).a(d.f(this.c.g())).d(d.c(this.c.j())).e(d.d(this.c.k())).h(d.e(this.c.n())).i(d.i(this.c.o())).a(d.a(this.c.p())).b(d.b(this.c.q())).a();
    }

    com.mobile.auth.f.a a() {
        return this.c;
    }

    void a(Context context, com.cmic.sso.sdk.a aVar) {
        if (d.a() || aVar.a("downLoadConfig", false) || aVar.a("is_need_to_get_cert", false)) {
            u.a(new C0252b(context, aVar));
        }
    }

    void a(c cVar) {
        this.f13168e = cVar;
    }

    com.mobile.auth.f.a b() {
        return this.b;
    }

    void c() {
        SharedPreferences.Editor editorB = p.b("sso_config_xf");
        editorB.clear();
        editorB.commit();
    }
}
