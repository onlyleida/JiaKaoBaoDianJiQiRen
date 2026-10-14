package com.mobile.auth.j;

import com.amap.api.fence.GeoFence;
import com.mobile.auth.h.f;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ArrayList<Throwable> f13479a = new ArrayList<>();
    private String D;
    private String b = null;
    private String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13480d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13481e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13482f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13483g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13484h = null;
    private String i = null;
    private String j = null;
    private String k = null;
    private String l = null;
    private String m = null;
    private String n = null;
    private String o = null;
    private String p = null;
    private JSONArray q = null;
    private String r = null;
    private String s = null;
    private String t = null;
    private String u = null;
    private String v = null;
    private String w = null;
    private String x = null;
    private String y = null;
    private JSONObject z = null;
    private String A = null;
    private String B = null;
    private String C = null;
    private String E = null;
    private String F = null;
    private String G = "none";
    private String H = "";
    private String I = "";

    public void A(String str) {
        this.t = str;
    }

    public void B(String str) {
        this.i = str;
    }

    public void C(String str) {
        this.k = str;
    }

    public void D(String str) {
        this.A = str;
    }

    public void E(String str) {
        this.f13481e = str;
    }

    public void F(String str) {
        this.s = str;
    }

    public void G(String str) {
        this.F = str;
    }

    @Override // com.mobile.auth.h.f
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("traceId", this.b);
            jSONObject.put("requestTime", this.f13484h);
            jSONObject.put("responseTime", this.i);
            jSONObject.put("requestType", this.k);
            jSONObject.put("loginType", this.p);
            jSONObject.put("sdkVersion", this.f13481e);
            jSONObject.put("networkType", this.s);
            jSONObject.put("networkClass", this.t);
            jSONObject.put("reqDevice", this.v);
            jSONObject.put("reqSystem", this.w);
            jSONObject.put("operatorType", this.r);
            jSONObject.put("simCardNum", this.x);
            jSONObject.put("exceptionStackTrace", this.q);
            jSONObject.put("appName", this.c);
            jSONObject.put("appVersion", this.f13480d);
            jSONObject.put("interfaceCode", this.m);
            jSONObject.put("interfaceType", this.l);
            jSONObject.put("interfaceElasped", this.n);
            jSONObject.put(GeoFence.BUNDLE_KEY_FENCESTATUS, this.z);
            jSONObject.put("appid", this.A);
            jSONObject.put("brand", this.u);
            jSONObject.put("resultCode", this.y);
            jSONObject.put("is_root", this.B);
            jSONObject.put("imsiState", this.C);
            jSONObject.put("elapsedTime", this.j);
            jSONObject.put("loginTime", this.o);
            jSONObject.put("clientType", this.f13482f);
            jSONObject.put("timeOut", this.f13483g);
            jSONObject.put("is_phoneStatePermission", this.D);
            jSONObject.put("AID", this.E);
            jSONObject.put("sysOperType", this.F);
            jSONObject.put("degrade", this.G);
            jSONObject.put("apnType", this.H);
            jSONObject.put("protocol", this.I);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(String str) {
        this.D = str;
    }

    public void a(JSONArray jSONArray) {
        this.q = jSONArray;
    }

    public void a(JSONObject jSONObject) {
        this.z = jSONObject;
    }

    void b(String str) {
        this.G = str;
    }

    void c(String str) {
        this.H = str;
    }

    public void d(String str) {
        this.I = str;
    }

    public void e(String str) {
        this.E = str;
    }

    public void f(String str) {
        this.C = str;
    }

    public void g(String str) {
        this.B = str;
    }

    public void h(String str) {
        this.y = str;
    }

    public void i(String str) {
        this.m = str;
    }

    public void j(String str) {
        this.n = str;
    }

    public void k(String str) {
        this.o = str;
    }

    public void l(String str) {
        this.u = str;
    }

    public void m(String str) {
        this.l = str;
    }

    public void o(String str) {
        this.j = str;
    }

    public void p(String str) {
        this.f13482f = str;
    }

    public void q(String str) {
        this.f13483g = str;
    }

    public void r(String str) {
        this.c = str;
    }

    public void s(String str) {
        this.f13480d = str;
    }

    public void t(String str) {
        this.x = str;
    }

    public void u(String str) {
        this.r = str;
    }

    public void v(String str) {
        this.v = str;
    }

    public void w(String str) {
        this.w = str;
    }

    public void x(String str) {
        this.p = str;
    }

    public void y(String str) {
        this.b = str;
    }

    public void z(String str) {
        this.f13484h = str;
    }
}
