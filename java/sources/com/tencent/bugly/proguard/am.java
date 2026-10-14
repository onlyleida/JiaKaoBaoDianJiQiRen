package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public final class am extends j implements Cloneable {
    private static ArrayList<al> b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<al> f13838a = null;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a((Collection) this.f13838a, 0);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        if (b == null) {
            b = new ArrayList<>();
            b.add(new al());
        }
        this.f13838a = (ArrayList) hVar.a(b, 0, true);
    }
}
