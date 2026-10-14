package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public class a8 extends e8 {
    private StringBuilder c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10445d;

    public a8(e8 e8Var) {
        super(e8Var);
        this.c = new StringBuilder();
        this.f10445d = true;
    }

    @Override // com.amap.api.mapcore.util.e8
    protected byte[] b(byte[] bArr) {
        byte[] bArrO = n5.o(this.c.toString());
        d(bArrO);
        this.f10445d = true;
        StringBuilder sb = this.c;
        sb.delete(0, sb.length());
        return bArrO;
    }

    @Override // com.amap.api.mapcore.util.e8
    public void c(byte[] bArr) {
        String strG = n5.g(bArr);
        if (this.f10445d) {
            this.f10445d = false;
        } else {
            this.c.append(",");
        }
        StringBuilder sb = this.c;
        sb.append("{\"log\":\"");
        sb.append(strG);
        sb.append("\"}");
    }
}
