package com.mobile.auth.h;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13442a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13447h;
    private String i;
    private String j;
    private String k;
    private JSONObject l;

    /* JADX INFO: renamed from: com.mobile.auth.h.a$a, reason: collision with other inner class name */
    public static class C0262a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13448a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13449d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13450e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f13451f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f13452g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f13453h;
        private String i;
        private String j;
        private String k;

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("phone_id", this.f13448a);
                jSONObject.put("os", this.b);
                jSONObject.put("dev_model", this.c);
                jSONObject.put("dev_brand", this.f13449d);
                jSONObject.put("mnc", this.f13450e);
                jSONObject.put("client_type", this.f13451f);
                jSONObject.put("network_type", this.f13452g);
                jSONObject.put("ipv4_list", this.f13453h);
                jSONObject.put("ipv6_list", this.i);
                jSONObject.put("is_cert", this.j);
                jSONObject.put("is_root", this.k);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject;
        }

        public void a(String str) {
            this.f13448a = str;
        }

        public void b(String str) {
            this.b = str;
        }

        public void c(String str) {
            this.c = str;
        }

        public void d(String str) {
            this.f13449d = str;
        }

        public void e(String str) {
            this.f13450e = str;
        }

        public void f(String str) {
            this.f13451f = str;
        }

        public void g(String str) {
            this.f13452g = str;
        }

        public void h(String str) {
            this.f13453h = str;
        }

        public void i(String str) {
            this.i = str;
        }

        public void j(String str) {
            this.j = str;
        }

        public void k(String str) {
            this.k = str;
        }
    }

    @Override // com.mobile.auth.h.f
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.f13442a);
            jSONObject.put("msgid", this.b);
            jSONObject.put("appid", this.c);
            jSONObject.put("scrip", this.f13443d);
            jSONObject.put("sign", this.f13444e);
            jSONObject.put("interfacever", this.f13445f);
            jSONObject.put("userCapaid", this.f13446g);
            jSONObject.put("clienttype", this.f13447h);
            jSONObject.put("sourceid", this.i);
            jSONObject.put("authenticated_appid", this.j);
            jSONObject.put("genTokenByAppid", this.k);
            jSONObject.put("rcData", this.l);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(String str) {
        this.f13447h = str;
    }

    public void a(JSONObject jSONObject) {
        this.l = jSONObject;
    }

    public void b(String str) {
        this.i = str;
    }

    public void c(String str) {
    }

    public void d(String str) {
        this.f13445f = str;
    }

    public void e(String str) {
        this.f13446g = str;
    }

    public void f(String str) {
        this.f13442a = str;
    }

    public void g(String str) {
        this.b = str;
    }

    public void h(String str) {
        this.c = str;
    }

    public void i(String str) {
        this.f13443d = str;
    }

    public void j(String str) {
        this.f13444e = str;
    }

    public void k(String str) {
        this.j = str;
    }

    public void l(String str) {
        this.k = str;
    }

    public String m(String str) {
        return n(this.f13442a + this.c + str + this.f13443d);
    }

    public String toString() {
        return a().toString();
    }
}
