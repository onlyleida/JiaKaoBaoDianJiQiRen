package com.mobile.auth.h;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.k.h;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f13467a;
    private a b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private JSONArray f13468a;

        public JSONArray a() {
            return this.f13468a;
        }

        public void a(JSONArray jSONArray) {
            this.f13468a = jSONArray;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13469a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13470d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13471e;

        public String a() {
            return this.f13471e;
        }

        public void a(String str) {
            this.f13471e = str;
        }

        public String b() {
            return this.f13470d;
        }

        public void b(String str) {
            this.f13470d = str;
        }

        public String c() {
            return this.f13469a;
        }

        public void c(String str) {
            this.f13469a = str;
        }

        public String d() {
            return this.b;
        }

        public void d(String str) {
            this.b = str;
        }

        public String e() {
            return this.c;
        }

        public void e(String str) {
            this.c = str;
        }

        public String f() {
            return h.a(this.f13471e + this.f13470d + this.c + this.b + "@Fdiwmxy7CBDDQNUI");
        }
    }

    @Override // com.mobile.auth.h.f
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put("sign", this.f13467a.c());
            jSONObject2.put("msgid", this.f13467a.d());
            jSONObject2.put("systemtime", this.f13467a.e());
            jSONObject2.put("appid", this.f13467a.b());
            jSONObject2.put("version", this.f13467a.a());
            jSONObject.put("header", jSONObject2);
            jSONObject3.put(BuildConfig.FLAVOR_type, this.b.a());
            jSONObject.put(TtmlNode.TAG_BODY, jSONObject3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(b bVar) {
        this.f13467a = bVar;
    }
}
