package com.mobile.auth.f;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13159a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13160d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13161e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13162f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13163g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f13164h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;
    private int q;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a f13165a = new a();

        b a(int i) {
            this.f13165a.p = i;
            return this;
        }

        b a(String str) {
            this.f13165a.f13159a = str;
            return this;
        }

        b a(boolean z) {
            this.f13165a.f13163g = z;
            return this;
        }

        public a a() {
            return this.f13165a;
        }

        b b(int i) {
            this.f13165a.q = i;
            return this;
        }

        b b(String str) {
            this.f13165a.b = str;
            return this;
        }

        b b(boolean z) {
            this.f13165a.f13164h = z;
            return this;
        }

        b c(String str) {
            this.f13165a.c = str;
            return this;
        }

        b c(boolean z) {
            this.f13165a.i = z;
            return this;
        }

        b d(String str) {
            this.f13165a.f13162f = str;
            return this;
        }

        b d(boolean z) {
            this.f13165a.j = z;
            return this;
        }

        b e(String str) {
            this.f13165a.f13160d = str;
            return this;
        }

        b e(boolean z) {
            this.f13165a.k = z;
            return this;
        }

        b f(String str) {
            this.f13165a.f13161e = str;
            return this;
        }

        b f(boolean z) {
            this.f13165a.l = z;
            return this;
        }

        b g(boolean z) {
            this.f13165a.m = z;
            return this;
        }

        b h(boolean z) {
            this.f13165a.n = z;
            return this;
        }

        b i(boolean z) {
            this.f13165a.o = z;
            return this;
        }
    }

    private a() {
        this.f13159a = "onekey.cmpassport.com";
        this.b = "onekey.cmpassport.com:443";
        this.c = "rcs.cmpassport.com";
        this.f13160d = "config.cmpassport.com";
        this.f13161e = "log1.cmpassport.com:9443";
        this.f13162f = "";
        this.f13163g = true;
        this.f13164h = false;
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = true;
        this.o = false;
        this.p = 3;
        this.q = 1;
    }

    public String a() {
        return this.f13162f;
    }

    public String b() {
        return this.f13159a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return this.f13160d;
    }

    public String f() {
        return this.f13161e;
    }

    public boolean g() {
        return this.f13163g;
    }

    public boolean h() {
        return this.f13164h;
    }

    public boolean i() {
        return this.i;
    }

    public boolean j() {
        return this.j;
    }

    public boolean k() {
        return this.k;
    }

    public boolean l() {
        return this.l;
    }

    public boolean m() {
        return this.m;
    }

    public boolean n() {
        return this.n;
    }

    public boolean o() {
        return this.o;
    }

    public int p() {
        return this.p;
    }

    public int q() {
        return this.q;
    }

    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public a clone() throws CloneNotSupportedException {
        return (a) super.clone();
    }
}
