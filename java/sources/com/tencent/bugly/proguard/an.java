package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class an extends j {
    private static byte[] y = {0};
    private static Map<String, String> z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13839a = 0;
    public String b = "";
    public String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f13840d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f13841e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f13842f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13843g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f13844h = null;
    public String i = "";
    public String j = "";
    public Map<String, String> k = null;
    public String l = "";
    public long m = 0;
    public String n = "";
    public String o = "";
    public String p = "";
    public long q = 0;
    private String u = "";
    public String r = "";
    private String v = "";
    private String w = "";
    public String s = "";
    public String t = "";
    private String x = "";

    static {
        HashMap map = new HashMap();
        z = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13839a, 0);
        iVar.a(this.b, 1);
        iVar.a(this.c, 2);
        iVar.a(this.f13840d, 3);
        String str = this.f13841e;
        if (str != null) {
            iVar.a(str, 4);
        }
        iVar.a(this.f13842f, 5);
        iVar.a(this.f13843g, 6);
        iVar.a(this.f13844h, 7);
        String str2 = this.i;
        if (str2 != null) {
            iVar.a(str2, 8);
        }
        String str3 = this.j;
        if (str3 != null) {
            iVar.a(str3, 9);
        }
        Map<String, String> map = this.k;
        if (map != null) {
            iVar.a((Map) map, 10);
        }
        String str4 = this.l;
        if (str4 != null) {
            iVar.a(str4, 11);
        }
        iVar.a(this.m, 12);
        String str5 = this.n;
        if (str5 != null) {
            iVar.a(str5, 13);
        }
        String str6 = this.o;
        if (str6 != null) {
            iVar.a(str6, 14);
        }
        String str7 = this.p;
        if (str7 != null) {
            iVar.a(str7, 15);
        }
        iVar.a(this.q, 16);
        String str8 = this.u;
        if (str8 != null) {
            iVar.a(str8, 17);
        }
        String str9 = this.r;
        if (str9 != null) {
            iVar.a(str9, 18);
        }
        String str10 = this.v;
        if (str10 != null) {
            iVar.a(str10, 19);
        }
        String str11 = this.w;
        if (str11 != null) {
            iVar.a(str11, 20);
        }
        String str12 = this.s;
        if (str12 != null) {
            iVar.a(str12, 21);
        }
        String str13 = this.t;
        if (str13 != null) {
            iVar.a(str13, 22);
        }
        String str14 = this.x;
        if (str14 != null) {
            iVar.a(str14, 23);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13839a = hVar.a(this.f13839a, 0, true);
        this.b = hVar.b(1, true);
        this.c = hVar.b(2, true);
        this.f13840d = hVar.b(3, true);
        this.f13841e = hVar.b(4, false);
        this.f13842f = hVar.b(5, true);
        this.f13843g = hVar.a(this.f13843g, 6, true);
        this.f13844h = hVar.c(7, true);
        this.i = hVar.b(8, false);
        this.j = hVar.b(9, false);
        this.k = (Map) hVar.a(z, 10, false);
        this.l = hVar.b(11, false);
        this.m = hVar.a(this.m, 12, false);
        this.n = hVar.b(13, false);
        this.o = hVar.b(14, false);
        this.p = hVar.b(15, false);
        this.q = hVar.a(this.q, 16, false);
        this.u = hVar.b(17, false);
        this.r = hVar.b(18, false);
        this.v = hVar.b(19, false);
        this.w = hVar.b(20, false);
        this.s = hVar.b(21, false);
        this.t = hVar.b(22, false);
        this.x = hVar.b(23, false);
    }
}
