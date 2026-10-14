package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.BuildConfig;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
@i6(a = "a")
public class m5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @j6(a = "a1", b = 6)
    private String f10996a;

    @j6(a = "a2", b = 6)
    private String b;

    @j6(a = "a6", b = 2)
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @j6(a = "a3", b = 6)
    private String f10997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @j6(a = "a4", b = 6)
    private String f10998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @j6(a = "a5", b = 6)
    private String f10999f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f11000g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f11001h;
    private String i;
    private String j;
    private String k;
    private String[] l;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f11002a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f11003d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f11004e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f11005f = BuildConfig.FLAVOR_feat;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String[] f11006g = null;

        public b(String str, String str2, String str3) {
            this.f11002a = str2;
            this.b = str2;
            this.f11003d = str3;
            this.c = str;
        }

        public b a(String str) {
            this.b = str;
            return this;
        }

        public b b(String[] strArr) {
            if (strArr != null) {
                this.f11006g = (String[]) strArr.clone();
            }
            return this;
        }

        public m5 c() throws gb {
            if (this.f11006g != null) {
                return new m5(this);
            }
            throw new gb("sdk packages is null");
        }
    }

    public static String b(String str) {
        HashMap map = new HashMap();
        map.put("a1", n5.q(str));
        return h6.f(map);
    }

    private String c(String[] strArr) {
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

    private String[] f(String str) {
        try {
            return str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String l() {
        return "a6=1";
    }

    public String a() {
        if (TextUtils.isEmpty(this.j) && !TextUtils.isEmpty(this.f10996a)) {
            this.j = n5.t(this.f10996a);
        }
        return this.j;
    }

    public void d(boolean z) {
        this.c = z ? 1 : 0;
    }

    public String e() {
        return this.f11000g;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return m5.class == obj.getClass() && hashCode() == ((m5) obj).hashCode();
    }

    public String g() {
        if (TextUtils.isEmpty(this.f11001h) && !TextUtils.isEmpty(this.b)) {
            this.f11001h = n5.t(this.b);
        }
        return this.f11001h;
    }

    public String h() {
        if (TextUtils.isEmpty(this.i) && !TextUtils.isEmpty(this.f10997d)) {
            this.i = n5.t(this.f10997d);
        }
        return this.i;
    }

    public int hashCode() {
        z5 z5Var = new z5();
        z5Var.h(this.j);
        z5Var.h(this.f11000g);
        z5Var.h(this.f11001h);
        z5Var.q(this.l);
        return z5Var.a();
    }

    public String i() {
        if (TextUtils.isEmpty(this.k) && !TextUtils.isEmpty(this.f10999f)) {
            this.k = n5.t(this.f10999f);
        }
        if (TextUtils.isEmpty(this.k)) {
            this.k = BuildConfig.FLAVOR_feat;
        }
        return this.k;
    }

    public boolean j() {
        return this.c == 1;
    }

    public String[] k() {
        String[] strArr = this.l;
        if ((strArr == null || strArr.length == 0) && !TextUtils.isEmpty(this.f10998e)) {
            this.l = f(n5.t(this.f10998e));
        }
        return (String[]) this.l.clone();
    }

    private m5() {
        this.c = 1;
        this.l = null;
    }

    private m5(b bVar) {
        this.c = 1;
        this.l = null;
        this.f11000g = bVar.f11002a;
        this.f11001h = bVar.b;
        this.j = bVar.c;
        this.i = bVar.f11003d;
        this.c = bVar.f11004e ? 1 : 0;
        this.k = bVar.f11005f;
        this.l = bVar.f11006g;
        this.b = n5.q(this.f11001h);
        this.f10996a = n5.q(this.j);
        this.f10997d = n5.q(this.i);
        this.f10998e = n5.q(c(this.l));
        this.f10999f = n5.q(this.k);
    }
}
