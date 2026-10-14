package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes6.dex */
public final class ak extends j implements Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f13830d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f13831a;
    private String b;
    private byte[] c;

    public ak() {
        this.f13831a = (byte) 0;
        this.b = "";
        this.c = null;
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13831a, 0);
        iVar.a(this.b, 1);
        byte[] bArr = this.c;
        if (bArr != null) {
            iVar.a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    public ak(byte b, String str, byte[] bArr) {
        this.f13831a = (byte) 0;
        this.b = "";
        this.c = null;
        this.f13831a = b;
        this.b = str;
        this.c = bArr;
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f13831a = hVar.a(this.f13831a, 0, true);
        this.b = hVar.b(1, true);
        if (f13830d == null) {
            f13830d = new byte[]{0};
        }
        this.c = hVar.c(2, false);
    }
}
