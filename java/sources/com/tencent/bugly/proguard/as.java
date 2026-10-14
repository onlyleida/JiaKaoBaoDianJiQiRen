package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class as extends j implements Cloneable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ArrayList<ar> f13864f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Map<String, String> f13865g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f13866a = 0;
    public String b = "";
    public String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<ar> f13867d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, String> f13868e = null;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13866a, 0);
        String str = this.b;
        if (str != null) {
            iVar.a(str, 1);
        }
        String str2 = this.c;
        if (str2 != null) {
            iVar.a(str2, 2);
        }
        ArrayList<ar> arrayList = this.f13867d;
        if (arrayList != null) {
            iVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f13868e;
        if (map != null) {
            iVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13866a = hVar.a(this.f13866a, 0, true);
        this.b = hVar.b(1, false);
        this.c = hVar.b(2, false);
        if (f13864f == null) {
            f13864f = new ArrayList<>();
            f13864f.add(new ar());
        }
        this.f13867d = (ArrayList) hVar.a(f13864f, 3, false);
        if (f13865g == null) {
            HashMap map = new HashMap();
            f13865g = map;
            map.put("", "");
        }
        this.f13868e = (Map) hVar.a(f13865g, 4, false);
    }
}
