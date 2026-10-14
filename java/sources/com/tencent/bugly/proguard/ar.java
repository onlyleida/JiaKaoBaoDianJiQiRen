package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ar extends j {
    private static Map<String, String> i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13858a = 0;
    public byte b = 0;
    public String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f13859d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f13860e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<String, String> f13861f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13863h = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13862g = true;

    static {
        HashMap map = new HashMap();
        i = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13858a, 0);
        iVar.a(this.b, 1);
        String str = this.c;
        if (str != null) {
            iVar.a(str, 2);
        }
        String str2 = this.f13859d;
        if (str2 != null) {
            iVar.a(str2, 3);
        }
        String str3 = this.f13860e;
        if (str3 != null) {
            iVar.a(str3, 4);
        }
        Map<String, String> map = this.f13861f;
        if (map != null) {
            iVar.a((Map) map, 5);
        }
        String str4 = this.f13863h;
        if (str4 != null) {
            iVar.a(str4, 6);
        }
        iVar.a(this.f13862g, 7);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13858a = hVar.a(this.f13858a, 0, true);
        this.b = hVar.a(this.b, 1, true);
        this.c = hVar.b(2, false);
        this.f13859d = hVar.b(3, false);
        this.f13860e = hVar.b(4, false);
        this.f13861f = (Map) hVar.a(i, 5, false);
        this.f13863h = hVar.b(6, false);
        this.f13862g = hVar.a(7, false);
    }
}
