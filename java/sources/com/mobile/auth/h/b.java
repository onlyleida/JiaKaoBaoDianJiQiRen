package com.mobile.auth.h;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13454a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13459h;

    @Override // com.mobile.auth.h.f
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.f13454a);
            jSONObject.put("apptype", this.b);
            jSONObject.put("phone_ID", this.c);
            jSONObject.put("certflag", this.f13455d);
            jSONObject.put("sdkversion", this.f13456e);
            jSONObject.put("appid", this.f13457f);
            jSONObject.put("expandparams", this.f13458g);
            jSONObject.put("sign", this.f13459h);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(String str) {
        this.f13454a = str;
    }

    public String b() {
        return n(this.f13454a + this.f13456e + this.f13457f + "iYm0HAnkxQtpvN44").toLowerCase();
    }

    public void b(String str) {
        this.b = str;
    }

    public void c(String str) {
        this.c = str;
    }

    public void d(String str) {
        this.f13455d = str;
    }

    public void e(String str) {
        this.f13456e = str;
    }

    public void f(String str) {
        this.f13457f = str;
    }

    public void g(String str) {
        this.f13459h = str;
    }
}
