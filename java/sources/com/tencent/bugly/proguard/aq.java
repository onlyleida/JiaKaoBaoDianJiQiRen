package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class aq extends j implements Cloneable {
    private static Map<String, String> n;
    private static /* synthetic */ boolean o = true;
    private static ap m = new ap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13852a = true;
    public boolean b = true;
    public boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f13853d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f13854e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ap f13855f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map<String, String> f13856g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f13857h = 0;
    private String j = "";
    private String k = "";
    private int l = 0;
    public int i = 0;

    static {
        HashMap map = new HashMap();
        n = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13852a, 0);
        iVar.a(this.b, 1);
        iVar.a(this.c, 2);
        String str = this.f13853d;
        if (str != null) {
            iVar.a(str, 3);
        }
        String str2 = this.f13854e;
        if (str2 != null) {
            iVar.a(str2, 4);
        }
        ap apVar = this.f13855f;
        if (apVar != null) {
            iVar.a((j) apVar, 5);
        }
        Map<String, String> map = this.f13856g;
        if (map != null) {
            iVar.a((Map) map, 6);
        }
        iVar.a(this.f13857h, 7);
        String str3 = this.j;
        if (str3 != null) {
            iVar.a(str3, 8);
        }
        String str4 = this.k;
        if (str4 != null) {
            iVar.a(str4, 9);
        }
        iVar.a(this.l, 10);
        iVar.a(this.i, 11);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        aq aqVar = (aq) obj;
        return k.a(this.f13852a, aqVar.f13852a) && k.a(this.b, aqVar.b) && k.a(this.c, aqVar.c) && k.a(this.f13853d, aqVar.f13853d) && k.a(this.f13854e, aqVar.f13854e) && k.a(this.f13855f, aqVar.f13855f) && k.a(this.f13856g, aqVar.f13856g) && k.a(this.f13857h, aqVar.f13857h) && k.a(this.j, aqVar.j) && k.a(this.k, aqVar.k) && k.a(this.l, aqVar.l) && k.a(this.i, aqVar.i);
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13852a = hVar.a(0, true);
        this.b = hVar.a(1, true);
        this.c = hVar.a(2, true);
        this.f13853d = hVar.b(3, false);
        this.f13854e = hVar.b(4, false);
        this.f13855f = (ap) hVar.a((j) m, 5, false);
        this.f13856g = (Map) hVar.a(n, 6, false);
        this.f13857h = hVar.a(this.f13857h, 7, false);
        this.j = hVar.b(8, false);
        this.k = hVar.b(9, false);
        this.l = hVar.a(this.l, 10, false);
        this.i = hVar.a(this.i, 11, false);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
        z zVar = new z(sb, i);
        zVar.a(this.f13852a, "enable");
        zVar.a(this.b, "enableUserInfo");
        zVar.a(this.c, "enableQuery");
        zVar.a(this.f13853d, "url");
        zVar.a(this.f13854e, "expUrl");
        zVar.a((j) this.f13855f, "security");
        zVar.a((Map) this.f13856g, "valueMap");
        zVar.a(this.f13857h, "strategylastUpdateTime");
        zVar.a(this.j, "httpsUrl");
        zVar.a(this.k, "httpsExpUrl");
        zVar.a(this.l, "eventRecordCount");
        zVar.a(this.i, "eventTimeInterval");
    }
}
