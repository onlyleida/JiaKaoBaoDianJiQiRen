package com.loc;

import android.text.TextUtils;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.BuildConfig;

/* JADX INFO: loaded from: classes4.dex */
@ar(a = "a")
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @as(a = "a1", b = 6)
    private String f13042a;

    @as(a = "a2", b = 6)
    private String b;

    @as(a = "a6", b = 2)
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @as(a = "a3", b = 6)
    private String f13043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @as(a = "a4", b = 6)
    private String f13044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @as(a = "a5", b = 6)
    private String f13045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13046g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13047h;
    private String i;
    private String j;
    private String k;
    private String[] l;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13048a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13049d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f13050e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f13051f = BuildConfig.FLAVOR_feat;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String[] f13052g = null;

        public a(String str, String str2, String str3) {
            this.f13048a = str2;
            this.b = str2;
            this.f13049d = str3;
            this.c = str;
        }

        public final a a(String str) {
            this.b = str;
            return this;
        }

        public final a a(String[] strArr) {
            if (strArr != null) {
                this.f13052g = (String[]) strArr.clone();
            }
            return this;
        }

        public final v a() throws j {
            if (this.f13052g != null) {
                return new v(this, (byte) 0);
            }
            throw new j("sdk packages is null");
        }
    }

    private v() {
        this.c = 1;
        this.l = null;
    }

    private v(a aVar) {
        this.c = 1;
        this.l = null;
        this.f13046g = aVar.f13048a;
        this.f13047h = aVar.b;
        this.j = aVar.c;
        this.i = aVar.f13049d;
        this.c = aVar.f13050e ? 1 : 0;
        this.k = aVar.f13051f;
        this.l = aVar.f13052g;
        this.b = w.b(this.f13047h);
        this.f13042a = w.b(this.j);
        this.f13043d = w.b(this.i);
        this.f13044e = w.b(a(this.l));
        this.f13045f = w.b(this.k);
    }

    /* synthetic */ v(a aVar, byte b) {
        this(aVar);
    }

    private static String a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
                sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
            }
            return sb.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static String[] a(String str) {
        try {
            return str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final String a() {
        if (TextUtils.isEmpty(this.j) && !TextUtils.isEmpty(this.f13042a)) {
            this.j = w.c(this.f13042a);
        }
        return this.j;
    }

    public final void a(boolean z) {
        this.c = z ? 1 : 0;
    }

    public final String b() {
        return this.f13046g;
    }

    public final String c() {
        if (TextUtils.isEmpty(this.f13047h) && !TextUtils.isEmpty(this.b)) {
            this.f13047h = w.c(this.b);
        }
        return this.f13047h;
    }

    public final String d() {
        if (TextUtils.isEmpty(this.k) && !TextUtils.isEmpty(this.f13045f)) {
            this.k = w.c(this.f13045f);
        }
        if (TextUtils.isEmpty(this.k)) {
            this.k = BuildConfig.FLAVOR_feat;
        }
        return this.k;
    }

    public final boolean e() {
        return this.c == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (v.class != obj.getClass()) {
            return false;
        }
        try {
            return this.j.equals(((v) obj).j) && this.f13046g.equals(((v) obj).f13046g) && this.f13047h.equals(((v) obj).f13047h);
        } catch (Throwable unused) {
        }
    }

    public final String[] f() {
        String[] strArr = this.l;
        if ((strArr == null || strArr.length == 0) && !TextUtils.isEmpty(this.f13044e)) {
            this.l = a(w.c(this.f13044e));
        }
        return (String[]) this.l.clone();
    }
}
