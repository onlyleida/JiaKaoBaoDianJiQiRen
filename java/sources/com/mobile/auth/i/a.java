package com.mobile.auth.i;

import android.content.Context;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.h.c;
import com.mobile.auth.k.d;
import com.mobile.auth.k.f;
import com.mobile.auth.k.i;
import com.mobile.auth.k.l;
import com.mobile.auth.k.m;
import com.mobile.auth.k.o;
import com.mobile.auth.k.p;
import com.mobile.auth.k.t;
import com.mobile.auth.k.v;
import com.mobile.auth.k.x;
import com.mobile.auth.k.y;
import com.mobile.auth.k.z;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f13476a;
    private Context b;

    /* JADX INFO: renamed from: com.mobile.auth.i.a$a, reason: collision with other inner class name */
    class C0263a implements d.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13477a;
        final /* synthetic */ com.cmic.sso.sdk.a b;
        final /* synthetic */ b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f13478d = false;

        C0263a(a aVar, String str, com.cmic.sso.sdk.a aVar2, b bVar) {
            this.f13477a = str;
            this.b = aVar2;
            this.c = bVar;
        }

        @Override // com.mobile.auth.k.d.b
        public void a(String str, String str2) {
            if (this.f13478d) {
                return;
            }
            this.f13478d = true;
            f.a("BaseRequest", "request success , url : " + this.f13477a + ">>>>result : " + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.has("resultCode") ? jSONObject.getString("resultCode") : jSONObject.getString("resultcode");
                if (!i.a(this.b.c("traceId")) || this.f13477a.contains("Config")) {
                    this.c.a(string, jSONObject.optString(SocialConstants.PARAM_APP_DESC), jSONObject);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                a("200021", "数据解析异常", str2);
            }
        }

        @Override // com.mobile.auth.k.d.b
        public void a(String str, String str2, String str3) {
            if (this.f13478d) {
                return;
            }
            this.f13478d = true;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("resultCode", str);
                jSONObject.put(SocialConstants.PARAM_APP_DESC, str2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            f.a("BaseRequest", "request failed , url : " + this.f13477a + ">>>>>errorMsg : " + jSONObject.toString());
            if (this.c != null) {
                if (!i.a(this.b.c("traceId")) || this.f13477a.contains("Config")) {
                    this.c.a(str, str2, jSONObject);
                }
            }
        }
    }

    protected a() {
    }

    protected a(Context context) {
        this.b = context;
    }

    public static a a(Context context) {
        if (f13476a == null) {
            synchronized (a.class) {
                if (f13476a == null) {
                    f13476a = new a(context);
                }
            }
        }
        return f13476a;
    }

    private String a(String str, String str2, String str3) {
        return str + "://" + str2 + str3;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0190  */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x0190, please report this as an issue */
    public void a(Context context, com.cmic.sso.sdk.a aVar, b bVar) {
        String strD;
        String str;
        String str2;
        String strA;
        boolean z;
        int iA = aVar.a("networkType");
        String strA2 = aVar.a("authtype", "");
        c cVar = new c();
        c.a aVar2 = new c.a();
        aVar2.e("1.0");
        aVar2.f(BuildConfig.CMCC_SDK_VERSION);
        aVar2.g(aVar.c("appid"));
        aVar2.h(strA2);
        aVar2.i(aVar.a("smskey", ""));
        aVar2.j(aVar.a("imsi", ""));
        aVar2.d(o.a(this.b).b());
        aVar2.k(aVar.c("operatorType"));
        aVar2.l(iA + "");
        aVar2.m(t.a());
        aVar2.n(t.b());
        aVar2.o(t.c());
        aVar2.p("0");
        aVar2.q(y.a());
        aVar2.r(v.a());
        aVar2.s(aVar.c("apppackage"));
        aVar2.t(aVar.c("appsign"));
        aVar2.s(aVar.c("apppackage"));
        aVar2.t(aVar.c("appsign"));
        aVar2.u(aVar2.v(aVar.c("appkey")));
        cVar.a(aVar.c(com.cmic.sso.sdk.b.f11648a));
        cVar.b(m.a().a(aVar.c(com.cmic.sso.sdk.b.f11648a)));
        cVar.a(aVar2);
        String strA3 = aVar.a("interfacetype", "");
        aVar.b("interfaceVersion", "7.0");
        com.mobile.auth.f.a aVarA = aVar.a();
        aVar.b("isCloseIpv4", aVarA.l());
        aVar.b("isCloseIpv6", aVarA.m());
        if (aVar.a("use_http_get_phone_scrip", true)) {
            aVar.b("protocol", "HTTP");
            aVar.b("interfacetype", strA3 + "getPrePhonescrip;");
            if (TextUtils.isEmpty(aVar.c("retryUrl"))) {
                strD = aVarA.b();
                str = "http";
                str2 = "/unisdk/rs/getPrePhonescrip";
            } else {
                strA = aVar.c("retryUrl");
            }
            String str3 = strA;
            if (iA == 3 || !strA2.equals("3")) {
                f.b("BaseRequest", "不使用wifi下取号" + iA);
                z = false;
            } else {
                z.a(context);
                f.b("BaseRequest", "使用wifi下取号" + iA);
                z = true;
            }
            a(str3, cVar, z, aVar, bVar);
        }
        aVar2.a(p.b("AID", ""));
        aVar.b("protocol", "HTTPS");
        aVar.b("interfacetype", strA3 + "getPrePhonescripForHttps;");
        strD = aVarA.d();
        str = "https";
        str2 = "/unisdk/rs/getPrePhonescripForHttps";
        strA = a(str, strD, str2);
        String str4 = strA;
        if (iA == 3) {
            f.b("BaseRequest", "不使用wifi下取号" + iA);
            z = false;
        } else {
            f.b("BaseRequest", "不使用wifi下取号" + iA);
            z = false;
        }
        a(str4, cVar, z, aVar, bVar);
    }

    public void a(com.cmic.sso.sdk.a aVar, b bVar) {
        com.mobile.auth.h.a aVar2 = new com.mobile.auth.h.a();
        com.mobile.auth.h.a.C0262a c0262a = new com.mobile.auth.h.a.C0262a();
        aVar2.f("0.1");
        aVar2.i(aVar.c("phonescrip"));
        aVar2.h(aVar.c("appid"));
        aVar2.g(y.a());
        aVar2.c(v.a());
        if ("2".equals(aVar.c("authtype"))) {
            aVar2.d(AliLiveInfoUtils.ALIVC_CONAN_VERSION);
        } else {
            aVar2.d("6.0");
        }
        aVar2.e(aVar.a("userCapaid", "50"));
        aVar2.a("0");
        aVar2.b(aVar.c("sourceid"));
        aVar2.k(aVar.c("authenticated_appid"));
        aVar2.l(aVar.c("genTokenByAppid"));
        aVar2.j(aVar2.m(aVar.c("appkey")));
        c0262a.a(p.b("AID", ""));
        c0262a.b(t.c());
        c0262a.c(t.b());
        c0262a.d(t.a());
        c0262a.e(aVar.a("operatorType", ""));
        c0262a.f("0");
        c0262a.g(t.a(this.b) + "");
        c0262a.h(x.a(true));
        c0262a.i(x.a(false, false));
        com.mobile.auth.f.a aVarA = aVar.a();
        c0262a.j(aVarA.g() ? "0" : "1");
        if (l.a()) {
            c0262a.k("1");
        } else {
            c0262a.k("0");
        }
        aVar2.a(c0262a.a());
        String strA = a("https", aVarA.c(), "/unisdk/api/getAuthToken");
        aVar.b("interfacetype", aVar.a("interfacetype", "") + "getAuthToken;");
        aVar.b("interfaceVersion", "6.0");
        a(strA, aVar2, false, aVar, bVar);
    }

    public <T extends com.mobile.auth.h.f> void a(String str, T t, boolean z, com.cmic.sso.sdk.a aVar, b bVar) {
        String strC = aVar.c("traceId");
        f.a("BaseRequest", "request https url : " + str + ">>>>>>> PARAMS : " + t.a().toString());
        if (t.a(this.b) != 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeOut", aVar.c("timeOut"));
                jSONObject.put("imsiState", aVar.c("imsiState"));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            new d().a(str, t, z, new C0263a(this, str, aVar, bVar), Constants.HTTP_POST, strC, aVar);
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("resultCode", "200022");
            jSONObject2.put(SocialConstants.PARAM_APP_DESC, "网络未连接");
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        f.a("BaseRequest", "request failed , url : " + str + ">>>>>errorMsg : " + jSONObject2.toString());
        if (bVar != null) {
            bVar.a("200022", "网络未连接", jSONObject2);
        }
    }

    public void a(boolean z, com.cmic.sso.sdk.a aVar, b bVar) {
        com.mobile.auth.h.b bVar2 = new com.mobile.auth.h.b();
        bVar2.a("1.0");
        bVar2.b("Android");
        bVar2.c(p.b("AID", ""));
        bVar2.d(z ? "1" : "0");
        bVar2.e(BuildConfig.CMCC_SDK_VERSION);
        bVar2.f(aVar.c("appid"));
        bVar2.g(bVar2.b());
        a(a("https", aVar.a().e(), "/client/uniConfig"), bVar2, false, aVar, bVar);
    }
}
