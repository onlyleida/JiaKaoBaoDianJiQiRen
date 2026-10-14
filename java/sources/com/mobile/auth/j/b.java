package com.mobile.auth.j;

import android.content.Context;
import android.content.SharedPreferences;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.k.d;
import com.mobile.auth.k.f;
import com.mobile.auth.k.j;
import com.mobile.auth.k.l;
import com.mobile.auth.k.o;
import com.mobile.auth.k.p;
import com.mobile.auth.k.t;
import com.mobile.auth.k.u;
import com.mobile.auth.k.v;
import com.mobile.auth.k.y;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.cmic.sso.sdk.a f13485a;
    private Context b;

    class a extends u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f13486a;

        a(JSONObject jSONObject) {
            this.f13486a = jSONObject;
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            b.this.a(this.f13486a);
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.j.b$b, reason: collision with other inner class name */
    class C0264b implements com.mobile.auth.i.b {
        C0264b(b bVar) {
        }

        @Override // com.mobile.auth.i.b
        public void a(String str, String str2, JSONObject jSONObject) {
        }
    }

    class c implements d.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f13487a;
        final /* synthetic */ com.mobile.auth.i.b b;

        c(String str, com.mobile.auth.i.b bVar) {
            this.f13487a = str;
            this.b = bVar;
        }

        @Override // com.mobile.auth.k.d.b
        public void a(String str, String str2) {
            f.a("SendLog", "request success , url : " + this.f13487a + ">>>>result : " + str);
            SharedPreferences.Editor editorA = p.a();
            editorA.putInt("logFailTimes", 0);
            editorA.commit();
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.b.a(jSONObject.optString("resultCode"), jSONObject.optString(SocialConstants.PARAM_APP_DESC), jSONObject);
            } catch (Exception e2) {
                e2.printStackTrace();
                a("200021", "数据解析异常", str2);
            }
        }

        @Override // com.mobile.auth.k.d.b
        public void a(String str, String str2, String str3) {
            com.mobile.auth.f.a aVarA = b.this.f13485a.a();
            if (aVarA.q() != 0 && aVarA.p() != 0) {
                int iA = p.a("logFailTimes", 0) + 1;
                SharedPreferences.Editor editorA = p.a();
                if (iA >= aVarA.p()) {
                    editorA.putInt("logFailTimes", 0);
                    editorA.putLong("logCloseTime", System.currentTimeMillis());
                } else {
                    editorA.putInt("logFailTimes", iA);
                }
                editorA.commit();
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("resultCode", str);
                jSONObject.put(SocialConstants.PARAM_APP_DESC, str2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            f.a("SendLog", "request failed , url : " + this.f13487a + ">>>>>errorMsg : " + jSONObject.toString());
            com.mobile.auth.i.b bVar = this.b;
            if (bVar != null) {
                bVar.a(str, str2, jSONObject);
            }
        }
    }

    private <T extends com.mobile.auth.h.f> void a(String str, T t, com.mobile.auth.i.b bVar) {
        f.a("SendLog", "request https url : " + str + ">>>>>>> PARAMS : " + t.a().toString());
        new d().a(str, t, false, new c(str, bVar), Constants.HTTP_POST, this.f13485a.a("traceId", ""), this.f13485a);
    }

    private void a(JSONArray jSONArray, com.mobile.auth.i.b bVar) {
        com.mobile.auth.h.d dVar = new com.mobile.auth.h.d();
        com.mobile.auth.h.d.a aVar = new com.mobile.auth.h.d.a();
        com.mobile.auth.h.d.b bVar2 = new com.mobile.auth.h.d.b();
        bVar2.d(y.a());
        bVar2.e(v.a());
        bVar2.b(this.f13485a.a("appid", ""));
        bVar2.a(AliLiveInfoUtils.ALIVC_CONAN_VERSION);
        bVar2.c(bVar2.f());
        if (jSONArray == null) {
            jSONArray = new JSONArray();
        }
        aVar.a(jSONArray);
        dVar.a(aVar);
        dVar.a(bVar2);
        a("https://" + this.f13485a.a().f() + "/log/logReport", dVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject);
        a(jSONArray, new C0264b(this));
    }

    public void a(Context context, String str, com.cmic.sso.sdk.a aVar, Throwable th) {
        this.b = context;
        try {
            com.mobile.auth.j.a aVar2 = new com.mobile.auth.j.a();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("resultCode", str);
            JSONArray jSONArray = null;
            jSONObject.put("PGWResultCode", aVar.a("PGWResultCode", (String) null));
            JSONObject jSONObject2 = new JSONObject();
            aVar2.F(t.a(this.b) + "");
            jSONObject2.put("timeOut", aVar.c("timeOut"));
            jSONObject2.put("imsiState", aVar.c("imsiState"));
            aVar2.x(aVar.a("isCacheScrip", false) ? "scrip" : "pgw");
            if ("loginAuth".equals(aVar.c("loginMethod"))) {
                aVar2.C("loginAuth");
            } else if ("mobileAuth".equals(aVar.c("loginMethod"))) {
                aVar2.C("mobileAuth");
            } else {
                aVar2.C("preGetMobile");
            }
            aVar2.y(aVar.c("traceId"));
            aVar2.D(aVar.c("appid"));
            aVar2.r(j.c(this.b));
            aVar2.s(j.d(this.b));
            aVar2.b(aVar.c("degrade"));
            aVar2.c(t.c(this.b));
            aVar2.d(aVar.c("protocol"));
            aVar2.E(BuildConfig.CMCC_SDK_VERSION);
            aVar2.p("android");
            aVar2.q(aVar.c("timeOut"));
            aVar2.z(aVar.c("starttime"));
            String str2 = "1";
            aVar2.a(aVar.a("hsaReadPhoneStatePermission", false) ? "1" : "0");
            long jCurrentTimeMillis = System.currentTimeMillis();
            aVar2.B(v.a(jCurrentTimeMillis));
            aVar2.o((jCurrentTimeMillis - aVar.b("starttimemills")) + "");
            aVar2.m(aVar.a("interfacetype", ""));
            aVar.b("interfacetype", "");
            aVar2.i(aVar.a("interfacecode", ""));
            aVar.b("interfacecode", "");
            aVar2.j(aVar.a("interfaceelasped", ""));
            aVar.b("interfaceelasped", "");
            aVar2.k(aVar.a("loginTime", 0L) + "");
            aVar2.u(aVar.a("operatorType", ""));
            if (aVar.a("startnetworkType", 0) == 0) {
                aVar2.F(t.a(this.b) + "");
            } else {
                aVar2.F(aVar.a("startnetworkType", 0) + "");
            }
            aVar2.A(aVar.c("networkClass"));
            aVar2.l(t.a());
            aVar2.v(t.b());
            aVar2.w(t.c());
            aVar2.t(aVar.c("simCardNum"));
            aVar2.h(str);
            if (!l.a()) {
                str2 = "0";
            }
            aVar2.g(str2);
            aVar2.f(aVar.a("imsiState", "0"));
            aVar2.o((System.currentTimeMillis() - aVar.a("methodTimes", 0L)) + "");
            if (th != null) {
                jSONArray = new JSONArray();
                JSONObject jSONObject3 = new JSONObject();
                StringBuffer stringBuffer = new StringBuffer();
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    stringBuffer.append("\n");
                    stringBuffer.append(stackTraceElement.toString());
                }
                jSONObject3.put(ErrorDialogParams.EXTRA_MESSAGE, th.toString());
                jSONObject3.put("stack", stringBuffer.toString());
                jSONArray.put(jSONObject3);
            }
            if (com.mobile.auth.j.a.f13479a.size() > 0) {
                if (jSONArray == null) {
                    jSONArray = new JSONArray();
                }
                for (Throwable th2 : com.mobile.auth.j.a.f13479a) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    JSONObject jSONObject4 = new JSONObject();
                    for (StackTraceElement stackTraceElement2 : th2.getStackTrace()) {
                        stringBuffer2.append("\n");
                        stringBuffer2.append(stackTraceElement2.toString());
                    }
                    jSONObject4.put(ErrorDialogParams.EXTRA_MESSAGE, th2.toString());
                    jSONObject4.put("stack", stringBuffer2.toString());
                    jSONArray.put(jSONObject4);
                }
                com.mobile.auth.j.a.f13479a.clear();
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                aVar2.a(jSONArray);
            }
            aVar2.e(p.b("AID", ""));
            aVar2.G(o.a(this.b).d());
            f.a("SendLog", "登录日志" + aVar2.a());
            a(this.b, aVar2.a(), aVar);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(Context context, JSONObject jSONObject, com.cmic.sso.sdk.a aVar) {
        this.f13485a = aVar;
        this.b = context;
        u.a(new a(jSONObject));
    }
}
