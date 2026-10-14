package com.mobile.auth.h;

import android.text.TextUtils;
import com.mobile.auth.k.h;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f13460a;
    private String b;
    private String c;

    public static class a {
        private String E;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13461a = "";
        private String b = "";
        private String c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13462d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13463e = "";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f13464f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f13465g = "";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f13466h = "";
        private String i = "";
        private String j = "";
        private String k = "";
        private String l = "";
        private String m = "";
        private String n = "";
        private String o = "";
        private String p = "";
        private String q = "";
        private String r = "";
        private String s = "";
        private String t = "";
        private String u = "";
        private String v = "";
        private String w = "";
        private String x = "";
        private String y = "";
        private String z = "";
        private String A = "";
        private String B = "";
        private String C = "";
        private String D = null;

        private String w(String str) {
            return str == null ? "" : str;
        }

        public void a(String str) {
            this.D = str;
        }

        public void b(String str) {
            this.B = str;
        }

        public void c(String str) {
            this.C = str;
        }

        public void d(String str) {
            this.x = w(str);
        }

        public void e(String str) {
            this.f13461a = w(str);
        }

        public void f(String str) {
            this.b = w(str);
        }

        public void g(String str) {
            this.c = w(str);
        }

        public void h(String str) {
            this.f13462d = w(str);
        }

        public void i(String str) {
            this.f13463e = w(str);
        }

        public void j(String str) {
            this.f13464f = w(str);
        }

        public void k(String str) {
            this.f13466h = w(str);
        }

        public void l(String str) {
            this.i = w(str);
        }

        public void m(String str) {
            String strW = w(str);
            try {
                this.j = URLEncoder.encode(strW, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                this.j = strW;
            }
        }

        public void n(String str) {
            String strW = w(str);
            try {
                this.k = URLEncoder.encode(strW, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                this.k = strW;
            }
        }

        public void o(String str) {
            this.l = w(str);
        }

        public void p(String str) {
            this.m = w(str);
        }

        public void q(String str) {
            this.o = w(str);
        }

        public void r(String str) {
            this.p = w(str);
        }

        public void s(String str) {
            this.z = w(str);
        }

        public void t(String str) {
            this.A = w(str);
        }

        public String toString() {
            String str = this.f13461a + "&" + this.b + "&" + this.c + "&" + this.f13462d + "&" + this.f13463e + "&" + this.f13464f + "&" + this.f13465g + "&" + this.f13466h + "&" + this.i + "&" + this.j + "&" + this.k + "&" + this.l + "&" + this.m + "&7.0&" + this.n + "&" + this.o + "&" + this.p + "&" + this.q + "&" + this.r + "&" + this.s + "&" + this.t + "&" + this.u + "&" + this.v + "&" + this.w + "&" + this.x + "&" + this.y + "&" + this.z + "&" + this.A + "&" + this.E + "&&" + this.B + "&" + this.C;
            if (TextUtils.isEmpty(this.D)) {
                return str;
            }
            return str + "&" + this.D;
        }

        public void u(String str) {
            this.E = w(str);
        }

        public String v(String str) {
            return h.a(this.b + this.c + this.f13462d + this.f13463e + this.f13464f + this.f13465g + this.f13466h + this.i + this.j + this.k + this.l + this.m + this.o + this.p + str + this.q + this.r + this.s + this.t + this.u + this.v + this.w + this.x + this.y + this.z + this.A + this.B + this.C);
        }
    }

    @Override // com.mobile.auth.h.f
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("encrypted", this.c);
            jSONObject.put("reqdata", com.mobile.auth.k.a.a(this.b, this.f13460a.toString()));
            com.mobile.auth.k.f.a("GETpre", this.f13460a.toString());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(a aVar) {
        this.f13460a = aVar;
    }

    public void a(String str) {
        this.b = str;
    }

    public a b() {
        return this.f13460a;
    }

    public void b(String str) {
        this.c = str;
    }
}
