package com.mobile.auth.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.k.l;
import com.mobile.auth.k.p;
import com.mobile.auth.k.q;
import com.mobile.auth.k.t;
import com.mobile.auth.k.z;
import com.tencent.open.SocialConstants;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static f f13155a;
    private com.mobile.auth.i.a b;
    private Context c;

    class a implements com.mobile.auth.i.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.cmic.sso.sdk.a f13156a;
        final /* synthetic */ g b;

        a(com.cmic.sso.sdk.a aVar, g gVar) {
            this.f13156a = aVar;
            this.b = gVar;
        }

        /* JADX WARN: Code duplicated, block: B:38:0x0130  */
        /* JADX WARN: Code duplicated, block: B:44:0x0161  */
        /* JADX WARN: Code duplicated, block: B:46:0x016a  */
        /* JADX WARN: Code duplicated, block: B:47:0x0176  */
        /* JADX WARN: Code duplicated, block: B:57:0x01c6  */
        /* JADX WARN: Code duplicated, block: B:59:0x01ce  */
        /* JADX WARN: Code duplicated, block: B:60:0x01d8  */
        /* JADX WARN: Instruction removed from duplicated block: B:38:0x0130, please report this as an issue */
        @Override // com.mobile.auth.i.b
        public void a(String str, String str2, JSONObject jSONObject) {
            g gVar;
            com.cmic.sso.sdk.a aVar;
            com.cmic.sso.sdk.a aVar2;
            String str3;
            String strOptString;
            String strOptString2;
            String strOptString3;
            String strOptString4;
            z.a(f.this.c).a();
            String strA = this.f13156a.a("interfacecode", "");
            this.f13156a.b("interfacecode", strA + str + VoiceWakeuperAidl.PARAMS_SEPARATE);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f13156a.b("request_start_time");
            String strA2 = this.f13156a.a("interfaceelasped", "");
            this.f13156a.b("interfaceelasped", strA2 + jElapsedRealtime + VoiceWakeuperAidl.PARAMS_SEPARATE);
            if (jSONObject.has("downLoadConfig")) {
                this.f13156a.b("downLoadConfig", "1".equals(jSONObject.optString("downLoadConfig")));
            }
            if (!"103000".equals(str)) {
                if (!this.f13156a.a("use_http_get_phone_scrip", true)) {
                    if ("1".equals(jSONObject.optString("retry"))) {
                        com.mobile.auth.k.f.a("AuthBusiness", "https取号触发服务端降级策略");
                        String strOptString5 = jSONObject.optString("retryUrl");
                        if (!TextUtils.isEmpty(strOptString5)) {
                            this.f13156a.b("retryUrl", strOptString5);
                            aVar2 = this.f13156a;
                            str3 = "server";
                        } else if ("200072".equals(str)) {
                            com.mobile.auth.k.f.a("AuthBusiness", "https取号触发本地降级策略");
                            aVar2 = this.f13156a;
                            str3 = "local";
                        } else {
                            gVar = this.b;
                            aVar = this.f13156a;
                        }
                    } else if ("200072".equals(str)) {
                        com.mobile.auth.k.f.a("AuthBusiness", "https取号触发本地降级策略");
                        aVar2 = this.f13156a;
                        str3 = "local";
                    } else {
                        gVar = this.b;
                        aVar = this.f13156a;
                    }
                    aVar2.b("degrade", str3);
                    this.f13156a.b("use_http_get_phone_scrip", true);
                    f.this.b(this.f13156a, this.b);
                    return;
                }
                gVar = this.b;
                aVar = this.f13156a;
                gVar.a(str, str2, aVar, jSONObject);
                return;
            }
            String strOptString6 = jSONObject.optString("resultdata");
            try {
                JSONObject jSONObject2 = new JSONObject((TextUtils.isEmpty(strOptString6) || strOptString6.equals("")) ? jSONObject.toString() : com.mobile.auth.k.a.b(this.f13156a.c(com.cmic.sso.sdk.b.f11648a), strOptString6));
                strOptString2 = jSONObject2.optString("phonescrip");
                try {
                    com.mobile.auth.k.f.b("phonescrip", strOptString2);
                    f.this.a(jSONObject2, strOptString2, this.f13156a);
                    strOptString3 = jSONObject2.optString("securityphone");
                    try {
                        p.a("securityphone", strOptString3);
                        strOptString4 = jSONObject2.optString("openId");
                        try {
                            strOptString = jSONObject2.optString("sourceid");
                            try {
                                p.a("sourceid", strOptString);
                                if (strOptString4.isEmpty()) {
                                    strOptString4 = jSONObject2.optString("pcid");
                                }
                                p.a("allcapaids", jSONObject2.optString("capaids", "acd"));
                                p.a("validated", true);
                            } catch (JSONException e2) {
                                e = e2;
                                e.printStackTrace();
                            }
                        } catch (JSONException e3) {
                            e = e3;
                            strOptString = null;
                        }
                    } catch (JSONException e4) {
                        e = e4;
                        strOptString = null;
                        strOptString4 = null;
                        e.printStackTrace();
                        this.f13156a.b("openId", strOptString4);
                        this.f13156a.b("phonescrip", strOptString2);
                        this.f13156a.b("securityphone", strOptString3);
                        this.f13156a.b("sourceid", strOptString);
                        p.a("securityphone", strOptString3);
                        if (this.f13156a.a("logintype") != 3) {
                            if (1 == this.f13156a.a("logintype")) {
                                this.b.a("103000", "显示登录取号成功", this.f13156a, null);
                                return;
                            } else {
                                f.this.a(this.f13156a, this.b);
                                return;
                            }
                        }
                        com.mobile.auth.k.f.a("AuthBusiness", "displayTimes : " + jElapsedRealtime);
                        JSONObject jSONObject3 = new JSONObject();
                        try {
                            jSONObject3.put("resultCode", "103000");
                            jSONObject3.put(SocialConstants.PARAM_APP_DESC, "true");
                        } catch (JSONException e5) {
                            e5.printStackTrace();
                        }
                        this.b.a("103000", "true", this.f13156a, jSONObject3);
                    }
                } catch (JSONException e6) {
                    e = e6;
                    strOptString = null;
                    strOptString3 = null;
                    strOptString4 = null;
                    e.printStackTrace();
                    this.f13156a.b("openId", strOptString4);
                    this.f13156a.b("phonescrip", strOptString2);
                    this.f13156a.b("securityphone", strOptString3);
                    this.f13156a.b("sourceid", strOptString);
                    p.a("securityphone", strOptString3);
                    if (this.f13156a.a("logintype") != 3) {
                        if (1 == this.f13156a.a("logintype")) {
                            this.b.a("103000", "显示登录取号成功", this.f13156a, null);
                            return;
                        } else {
                            f.this.a(this.f13156a, this.b);
                            return;
                        }
                    }
                    com.mobile.auth.k.f.a("AuthBusiness", "displayTimes : " + jElapsedRealtime);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("resultCode", "103000");
                    jSONObject4.put(SocialConstants.PARAM_APP_DESC, "true");
                    this.b.a("103000", "true", this.f13156a, jSONObject4);
                }
            } catch (JSONException e7) {
                e = e7;
                strOptString = null;
                strOptString2 = null;
            }
            this.f13156a.b("openId", strOptString4);
            this.f13156a.b("phonescrip", strOptString2);
            this.f13156a.b("securityphone", strOptString3);
            this.f13156a.b("sourceid", strOptString);
            p.a("securityphone", strOptString3);
            if (this.f13156a.a("logintype") != 3) {
                if (1 == this.f13156a.a("logintype")) {
                    this.b.a("103000", "显示登录取号成功", this.f13156a, null);
                    return;
                } else {
                    f.this.a(this.f13156a, this.b);
                    return;
                }
            }
            com.mobile.auth.k.f.a("AuthBusiness", "displayTimes : " + jElapsedRealtime);
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("resultCode", "103000");
            jSONObject5.put(SocialConstants.PARAM_APP_DESC, "true");
            this.b.a("103000", "true", this.f13156a, jSONObject5);
        }
    }

    class b implements com.mobile.auth.i.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.cmic.sso.sdk.a f13157a;
        final /* synthetic */ long b;
        final /* synthetic */ g c;

        b(com.cmic.sso.sdk.a aVar, long j, g gVar) {
            this.f13157a = aVar;
            this.b = j;
            this.c = gVar;
        }

        @Override // com.mobile.auth.i.b
        public void a(String str, String str2, JSONObject jSONObject) {
            com.mobile.auth.k.f.c("AuthBusiness", "获取平台token 》》》》" + jSONObject.toString());
            String strA = this.f13157a.a("interfacecode", "");
            this.f13157a.b("interfacecode", strA + str + VoiceWakeuperAidl.PARAMS_SEPARATE);
            if (str.equals("103000")) {
                String strOptString = jSONObject.optString("phonescrip");
                this.f13157a.b("phonescrip", strOptString);
                f.this.a(jSONObject, strOptString, this.f13157a);
                this.f13157a.b("openId", jSONObject.optString("openId"));
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.b;
            String strA2 = this.f13157a.a("interfaceelasped", "");
            this.f13157a.b("interfaceelasped", strA2 + jElapsedRealtime + VoiceWakeuperAidl.PARAMS_SEPARATE);
            this.c.a(str, str2, this.f13157a, jSONObject);
        }
    }

    private f(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.c = applicationContext;
        this.b = com.mobile.auth.i.a.a(applicationContext);
    }

    public static f a(Context context) {
        if (f13155a == null) {
            synchronized (f.class) {
                if (f13155a == null) {
                    f13155a = new f(context);
                }
            }
        }
        return f13155a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject, String str, com.cmic.sso.sdk.a aVar) {
        l.a(this.c, str, jSONObject.optLong("phonescripED"), aVar.a(aVar.a("keyIsSimKeyICCID", false) ? "iccid" : "imsi", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.cmic.sso.sdk.a aVar, g gVar) {
        aVar.b("request_start_time", SystemClock.elapsedRealtime());
        this.b.a(this.c, aVar, new a(aVar, gVar));
    }

    public void a(com.cmic.sso.sdk.a aVar, g gVar) {
        p.a("tokentimes", System.currentTimeMillis());
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.mobile.auth.k.f.c("AuthBusiness", "获取平台token》》》》");
        l.a(true);
        if (aVar.a("logintype") == 1) {
            aVar.b("userCapaid", "200");
        }
        this.b.a(aVar, new b(aVar, jElapsedRealtime, gVar));
    }

    public void a(com.cmic.sso.sdk.a aVar, String str, g gVar) {
        com.mobile.auth.k.f.c("AuthBusiness", "进行取号查询》》》》authtype=" + str);
        String packageName = this.c.getPackageName();
        String strA = com.mobile.auth.k.h.a(q.a(this.c));
        aVar.b("apppackage", packageName);
        aVar.b("appsign", strA);
        aVar.b(com.cmic.sso.sdk.b.f11648a, UUID.randomUUID().toString().substring(0, 16));
        aVar.b("networkType", t.a(this.c));
        aVar.b("authtype", "3");
        String strC = aVar.c("operatorType");
        if (aVar.a().n() || !("1".equals(strC) || "0".equals(strC))) {
            aVar.b("use_http_get_phone_scrip", true);
        } else {
            aVar.b("use_http_get_phone_scrip", false);
        }
        aVar.b("degrade", "none");
        b(aVar, gVar);
    }

    void a(String str, com.cmic.sso.sdk.a aVar, g gVar) {
        int iA = aVar.a("logintype", 0);
        if (!aVar.a("isCacheScrip", false)) {
            a(aVar, str, gVar);
            return;
        }
        if (iA == 3) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("resultCode", "103000");
                jSONObject.put(SocialConstants.PARAM_APP_DESC, "true");
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            gVar.a("103000", "true", aVar, jSONObject);
            return;
        }
        String strA = l.a(this.c);
        if (TextUtils.isEmpty(strA)) {
            aVar.b("isCacheScrip", false);
            if (aVar.a("networkType") == 2) {
                gVar.a("200027", "无数据网络", aVar, null);
                return;
            } else {
                a(aVar, str, gVar);
                return;
            }
        }
        aVar.b("sourceid", p.b("sourceid", ""));
        aVar.b("phonescrip", strA);
        if (1 != iA) {
            a(aVar, gVar);
        } else {
            aVar.b("securityphone", p.b("securityphone", ""));
            gVar.a("103000", "显示登录取号成功", aVar, null);
        }
    }
}
