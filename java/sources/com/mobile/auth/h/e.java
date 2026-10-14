package com.mobile.auth.h;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13472a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13475f;

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("authPageOut", this.b);
            jSONObject.put("authPageIn", this.f13472a);
            jSONObject.put("authClickSuccess", this.f13473d);
            jSONObject.put("timeOnAuthPage", this.f13474e);
            jSONObject.put("authClickFailed", this.c);
            jSONObject.put("authPrivacyState", this.f13475f);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(String str) {
        this.f13475f = str;
    }

    public void b(String str) {
        this.c = str;
    }

    public void c(String str) {
        this.f13473d = str;
    }

    public void d(String str) {
        this.f13474e = str;
    }

    public void e(String str) {
        this.f13472a = str;
    }

    public void f(String str) {
        this.b = str;
    }
}
