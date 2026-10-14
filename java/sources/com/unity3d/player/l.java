package com.unity3d.player;

import android.graphics.BitmapFactory;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f14311a;
    private String b;
    private String[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String[] f14312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f14313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f14314f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String[] f14315g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String[] f14316h;
    private String i;
    private String j;
    private String[] k;

    public l(JSONObject jSONObject) {
        this.f14311a = jSONObject.optString("imageUrl");
        this.b = jSONObject.optString("clickUrl", "");
        this.f14313e = jSONObject.optInt("duration", 5);
        this.f14314f = jSONObject.optLong("expiration", 0L);
        this.c = a(jSONObject.optJSONArray("impression"));
        this.f14312d = a(jSONObject.optJSONArray("clickImpression"));
        this.f14315g = a(jSONObject.optJSONArray("primaryClickImpression"));
        this.f14316h = a(jSONObject.optJSONArray("fallbackClickImpression"));
        this.i = jSONObject.optString("mediaType");
        this.j = jSONObject.optString("videoUrl");
        this.k = a(jSONObject.optJSONArray("completeClickImpression"));
    }

    private static String[] a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = jSONArray.optString(i);
        }
        return strArr;
    }

    public final boolean a() {
        if ("VIDEO".equals(j())) {
            return (k() == null || k() == "") ? false : true;
        }
        String strB = b();
        if (strB == null || strB == "") {
            return false;
        }
        if (strB.startsWith("file://")) {
            strB = strB.substring(7);
        }
        return BitmapFactory.decodeFile(strB) != null;
    }

    public final String b() {
        return this.f14311a;
    }

    public final String c() {
        return this.b;
    }

    public final String[] d() {
        return this.c;
    }

    public final String[] e() {
        return this.f14312d;
    }

    public final int f() {
        return this.f14313e;
    }

    public final long g() {
        return this.f14314f;
    }

    public final String[] h() {
        return this.f14315g;
    }

    public final String[] i() {
        return this.f14316h;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        return this.j;
    }

    public final String[] l() {
        return this.k;
    }
}
