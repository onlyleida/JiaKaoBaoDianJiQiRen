package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
@i6(a = "update_item")
public class p0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @j6(a = "localPath", b = 6)
    protected String f11062h;

    @j6(a = "mCompleteCode", b = 2)
    protected int j;

    @j6(a = "mState", b = 2)
    public int l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @j6(a = "title", b = 6)
    protected String f11057a = null;

    @j6(a = "url", b = 6)
    protected String b = null;

    @j6(a = "mAdcode", b = 6)
    protected String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @j6(a = "fileName", b = 6)
    protected String f11058d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @j6(a = "version", b = 6)
    protected String f11059e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @j6(a = "lLocalLength", b = 5)
    protected long f11060f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @j6(a = "lRemoteLength", b = 5)
    protected long f11061g = 0;

    @j6(a = "isProvince", b = 2)
    protected int i = 0;

    @j6(a = "mCityCode", b = 6)
    protected String k = "";

    @j6(a = "mPinyin", b = 6)
    public String m = "";

    public static String e(String str) {
        return "mAdcode='" + str + "'";
    }

    public static String g(String str) {
        return "mPinyin='" + str + "'";
    }

    public void a(String str) {
        this.c = str;
    }

    public String b() {
        return this.f11057a;
    }

    public void c(String str) {
        this.k = str;
    }

    public String d() {
        return this.f11059e;
    }

    public String f() {
        return this.c;
    }

    public String h() {
        return this.b;
    }

    public int i() {
        return this.j;
    }

    public String j() {
        return this.m;
    }
}
