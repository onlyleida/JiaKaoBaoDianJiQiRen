package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ao extends j {
    private static byte[] i = {0};
    private static Map<String, String> j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f13845a = 0;
    public int b = 0;
    public byte[] c = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13848f = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13846d = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13849g = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f13847e = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<String, String> f13850h = null;

    static {
        HashMap map = new HashMap();
        j = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13845a, 0);
        iVar.a(this.b, 1);
        byte[] bArr = this.c;
        if (bArr != null) {
            iVar.a(bArr, 2);
        }
        String str = this.f13848f;
        if (str != null) {
            iVar.a(str, 3);
        }
        iVar.a(this.f13846d, 4);
        String str2 = this.f13849g;
        if (str2 != null) {
            iVar.a(str2, 5);
        }
        String str3 = this.f13847e;
        if (str3 != null) {
            iVar.a(str3, 6);
        }
        Map<String, String> map = this.f13850h;
        if (map != null) {
            iVar.a((Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13845a = hVar.a(this.f13845a, 0, true);
        this.b = hVar.a(this.b, 1, true);
        this.c = hVar.c(2, false);
        this.f13848f = hVar.b(3, false);
        this.f13846d = hVar.a(this.f13846d, 4, false);
        this.f13849g = hVar.b(5, false);
        this.f13847e = hVar.b(6, false);
        this.f13850h = (Map) hVar.a(j, 7, false);
    }
}
