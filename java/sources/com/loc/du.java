package com.loc;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class du extends dq implements Serializable {
    public int j;
    public int k;
    public int l;
    public int m;

    public du() {
        this.j = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
    }

    public du(boolean z, boolean z2) {
        super(z, z2);
        this.j = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
    }

    @Override // com.loc.dq
    /* JADX INFO: renamed from: a */
    public final dq clone() {
        du duVar = new du(this.f12735h, this.i);
        duVar.a(this);
        duVar.j = this.j;
        duVar.k = this.k;
        duVar.l = this.l;
        duVar.m = this.m;
        return duVar;
    }

    @Override // com.loc.dq
    public final String toString() {
        return "AmapCellWcdma{lac=" + this.j + ", cid=" + this.k + ", psc=" + this.l + ", uarfcn=" + this.m + ", mcc='" + this.f12730a + "', mnc='" + this.b + "', signalStrength=" + this.c + ", asuLevel=" + this.f12731d + ", lastUpdateSystemMills=" + this.f12732e + ", lastUpdateUtcMills=" + this.f12733f + ", age=" + this.f12734g + ", main=" + this.f12735h + ", newApi=" + this.i + '}';
    }
}
