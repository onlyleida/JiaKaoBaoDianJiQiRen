package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public final class aj extends j implements Cloneable {
    private static ArrayList<String> c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13829a = "";
    private ArrayList<String> b = null;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13829a, 0);
        ArrayList<String> arrayList = this.b;
        if (arrayList != null) {
            iVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13829a = hVar.b(0, true);
        if (c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            c = arrayList;
            arrayList.add("");
        }
        this.b = (ArrayList) hVar.a(c, 1, false);
    }
}
