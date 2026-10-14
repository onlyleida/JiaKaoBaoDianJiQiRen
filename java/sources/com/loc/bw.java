package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class bw extends bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringBuilder f12651a;
    private boolean b;

    public bw() {
        this.f12651a = new StringBuilder();
        this.b = true;
    }

    public bw(bz bzVar) {
        super(bzVar);
        this.f12651a = new StringBuilder();
        this.b = true;
    }

    @Override // com.loc.bz
    protected final byte[] a(byte[] bArr) {
        byte[] bArrA = w.a(this.f12651a.toString());
        this.f12654d = bArrA;
        this.b = true;
        StringBuilder sb = this.f12651a;
        sb.delete(0, sb.length());
        return bArrA;
    }

    @Override // com.loc.bz
    public final void b(byte[] bArr) {
        String strA = w.a(bArr);
        if (this.b) {
            this.b = false;
        } else {
            this.f12651a.append(",");
        }
        StringBuilder sb = this.f12651a;
        sb.append("{\"log\":\"");
        sb.append(strA);
        sb.append("\"}");
    }
}
