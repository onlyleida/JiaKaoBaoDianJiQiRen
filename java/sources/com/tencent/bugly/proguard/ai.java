package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes6.dex */
public final class ai extends j implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13826a = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13827d = "";
    public String b = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13828e = "";
    public String c = "";

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13826a, 0);
        String str = this.f13827d;
        if (str != null) {
            iVar.a(str, 1);
        }
        String str2 = this.b;
        if (str2 != null) {
            iVar.a(str2, 2);
        }
        String str3 = this.f13828e;
        if (str3 != null) {
            iVar.a(str3, 3);
        }
        String str4 = this.c;
        if (str4 != null) {
            iVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13826a = hVar.b(0, true);
        this.f13827d = hVar.b(1, false);
        this.b = hVar.b(2, false);
        this.f13828e = hVar.b(3, false);
        this.c = hVar.b(4, false);
    }
}
