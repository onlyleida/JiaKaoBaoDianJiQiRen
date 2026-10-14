package com.mobile.auth.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.cmic.sso.sdk.AuthThemeConfig;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.k.i;
import com.mobile.auth.k.k;
import com.mobile.auth.k.l;
import com.mobile.auth.k.o;
import com.mobile.auth.k.p;
import com.mobile.auth.k.t;
import com.mobile.auth.k.u;
import com.mobile.auth.k.v;
import com.mobile.auth.k.y;
import com.mobile.auth.k.z;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static a f13148a;
    private f b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AuthThemeConfig f13149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f13150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f13151f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f13152g = 8000;

    /* JADX INFO: renamed from: com.mobile.auth.e.a$a, reason: collision with other inner class name */
    class C0250a extends u.a {
        C0250a() {
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            String strB = p.b("AID", "");
            com.mobile.auth.k.f.b("AuthnHelper", "aid = " + strB);
            if (TextUtils.isEmpty(strB)) {
                a.this.d();
            }
            com.mobile.auth.k.f.b("AuthnHelper", com.mobile.auth.k.e.a(a.this.c) ? "生成androidkeystore成功" : "生成androidkeystore失败");
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f13154a;
        final /* synthetic */ int b;
        final /* synthetic */ JSONObject c;

        b(a aVar, e eVar, int i, JSONObject jSONObject) {
            this.f13154a = eVar;
            this.b = i;
            this.c = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f13154a.a(this.b, this.c);
        }
    }

    private a(Context context) {
        this.f13150e = new Handler(context.getMainLooper());
        Context applicationContext = context.getApplicationContext();
        this.c = applicationContext;
        this.b = f.a(applicationContext);
        p.a(this.c);
        u.a(new C0250a());
    }

    public static a a(Context context) {
        if (f13148a == null) {
            synchronized (a.class) {
                if (f13148a == null) {
                    f13148a = new a(context);
                }
            }
        }
        return f13148a;
    }

    public static void a(boolean z) {
        com.mobile.auth.k.f.a(z);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0177  */
    private boolean a(com.cmic.sso.sdk.a aVar, String str, String str2, String str3, int i, e eVar) {
        JSONObject jSONObject;
        Throwable th;
        String str4;
        String str5;
        String strB = y.b();
        aVar.b("traceId", strB);
        i.a(strB, eVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.mobile.auth.f.a aVarA = com.mobile.auth.f.c.a(this.c).a();
        aVar.a(aVarA);
        aVar.b("starttime", v.a(jCurrentTimeMillis));
        aVar.b("starttimemills", jCurrentTimeMillis);
        aVar.b("loginMethod", str3);
        aVar.b("appkey", str2);
        aVar.b("appid", str);
        aVar.b("timeOut", this.f13152g + "");
        aVar.b("logintype", i);
        aVar.b("CLOSE_CERT_VERIFY", aVarA.g());
        boolean zA = k.a(this.c, "android.permission.READ_PHONE_STATE");
        com.mobile.auth.k.f.a("AuthnHelper", "有READ_PHONE_STATE权限？" + zA);
        aVar.b("hsaReadPhoneStatePermission", zA);
        com.mobile.auth.g.b.a().a(this.c, zA);
        aVar.b("networkClass", com.mobile.auth.g.b.a().a(this.c));
        aVar.b("simCardNum", com.mobile.auth.g.b.a().b().h() + "");
        int iA = t.a(this.c);
        aVar.b("startnetworkType", iA);
        String strA = o.a(this.c).a();
        String strC = o.a(this.c).c();
        String strA2 = o.a(this.c).a(false);
        aVar.b("imei", "");
        aVar.b("iccid", strC);
        aVar.b("operatorType", strA2);
        com.mobile.auth.k.f.b("AuthnHelper", "iccid=" + strC);
        com.mobile.auth.k.f.b("AuthnHelper", "imsi=" + strA);
        if (TextUtils.isEmpty(strA)) {
            com.mobile.auth.k.f.a("AuthnHelper", "使用iccid作为缓存key");
            aVar.b("keyIsSimKeyICCID", true);
        }
        aVar.b("imsi", strA);
        boolean zA2 = l.a(aVar);
        aVar.b("isCacheScrip", zA2);
        com.mobile.auth.k.f.b("AuthnHelper", "isCachePhoneScrip = " + zA2);
        if (eVar == null) {
            jSONObject = null;
            th = null;
            str4 = "200026";
            str5 = "listener不能为空";
        } else if (!(aVarA.j() && aVarA.n()) && (!aVarA.k() || aVarA.n())) {
            if (TextUtils.isEmpty(str == null ? "" : str.trim())) {
                jSONObject = null;
                th = null;
                str4 = "200026";
                str5 = "appId 不能为空";
            } else {
                if (TextUtils.isEmpty(str2 != null ? str2.trim() : "")) {
                    jSONObject = null;
                    th = null;
                    str4 = "200026";
                    str5 = "appkey不能为空";
                } else if (iA == 0) {
                    jSONObject = null;
                    th = null;
                    str4 = "200022";
                    str5 = "未检测到网络";
                } else if (TextUtils.isEmpty(strA2)) {
                    aVar.b("authtype", "0");
                    jSONObject = null;
                    th = null;
                    str4 = "200002";
                    str5 = "无法识别sim卡或没有sim卡";
                } else if (("2".equals(strA2) && aVarA.i()) || ("3".equals(strA2) && aVarA.h())) {
                    jSONObject = null;
                    th = null;
                    str4 = "200082";
                    str5 = "服务器繁忙，请稍后重试";
                } else {
                    if (iA != 2 || zA2) {
                        return true;
                    }
                    jSONObject = null;
                    th = null;
                    str4 = "200027";
                    str5 = "无数据网络";
                }
            }
        } else {
            jSONObject = null;
            th = null;
            str4 = "200082";
            str5 = "服务器繁忙，请稍后重试";
        }
        a(str4, str5, aVar, jSONObject, th);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        String str = "%" + y.a();
        com.mobile.auth.k.f.b("AuthnHelper", "generate aid = " + str);
        p.a("AID", str);
    }

    private String e() {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder();
            int i = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                if (!TextUtils.isEmpty(className) && className.contains("AuthnHelper")) {
                    break;
                }
                i++;
            }
            int i2 = i + 2;
            if (i2 < stackTrace.length) {
                sb.append(stackTrace[i2].getClassName());
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
            }
            int i3 = i + 3;
            if (i3 < stackTrace.length) {
                sb.append(stackTrace[i3].getClassName());
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public AuthThemeConfig a() {
        if (this.f13149d == null) {
            this.f13149d = new AuthThemeConfig.Builder().build();
        }
        return this.f13149d;
    }

    public void a(long j) {
        this.f13152g = j;
    }

    public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject, Throwable th) {
        a(str, str2, aVar, jSONObject, th, false);
    }

    public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject, Throwable th, boolean z) {
        try {
            String strC = aVar.c("traceId");
            int iA = aVar.a("SDKRequestCode", -1);
            if (i.a(strC)) {
                return;
            }
            synchronized (this) {
                e eVarC = i.c(strC);
                if (!z) {
                    i.b(strC);
                }
                if (eVarC == null) {
                    return;
                }
                int iA2 = aVar.a("logintype", -1);
                if (jSONObject == null) {
                    jSONObject = h.a(str, str2);
                }
                if (iA2 != 3) {
                    jSONObject = h.a(str, str2, aVar, jSONObject);
                }
                jSONObject.put("traceId", strC);
                this.f13150e.post(new b(this, eVarC, iA, jSONObject));
                com.mobile.auth.f.c.a(this.c).a(aVar);
                if (!aVar.a().o() && !y.a(aVar.a())) {
                    new com.mobile.auth.j.b().a(this.c, str, aVar, th);
                }
                if (i.a()) {
                    z.a(this.c).a();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(String str, JSONObject jSONObject) {
        d dVar = this.f13151f;
        if (dVar != null) {
            dVar.a(str, jSONObject);
        }
    }

    public long b() {
        return this.f13152g;
    }

    public JSONObject b(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                com.mobile.auth.g.b.a().a(context, k.a(context, "android.permission.READ_PHONE_STATE"));
                String strA = o.a(context).a(true);
                int iA = t.a(context);
                jSONObject.put("operatorType", strA);
                jSONObject.put("networkType", iA + "");
                com.mobile.auth.k.f.c("AuthnHelper", "网络类型: " + iA);
                com.mobile.auth.k.f.c("AuthnHelper", "运营商类型: " + strA);
            } catch (Exception unused) {
                jSONObject.put("errorDes", "发生未知错误");
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void c() {
        try {
            l.a(true);
        } catch (Exception e2) {
            com.mobile.auth.j.a.f13479a.add(e2);
            e2.printStackTrace();
        }
    }
}
