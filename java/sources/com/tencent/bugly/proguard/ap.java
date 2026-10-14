package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes6.dex */
public final class ap extends j implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13851a = "";
    private String b = "";

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13851a, 0);
        iVar.a(this.b, 1);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13851a = hVar.b(0, true);
        this.b = hVar.b(1, true);
    }
}
