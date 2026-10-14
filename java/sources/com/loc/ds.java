package com.loc;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class ds extends dq implements Serializable {
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;

    public ds() {
        this.j = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
        this.o = Integer.MAX_VALUE;
    }

    public ds(boolean z, boolean z2) {
        super(z, z2);
        this.j = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
        this.o = Integer.MAX_VALUE;
    }

    @Override // com.loc.dq
    /* JADX INFO: renamed from: a */
    public final dq clone() {
        ds dsVar = new ds(this.f12735h, this.i);
        dsVar.a(this);
        dsVar.j = this.j;
        dsVar.k = this.k;
        dsVar.l = this.l;
        dsVar.m = this.m;
        dsVar.n = this.n;
        dsVar.o = this.o;
        return dsVar;
    }

    @Override // com.loc.dq
    public final String toString() {
        return "AmapCellGsm{lac=" + this.j + ", cid=" + this.k + ", psc=" + this.l + ", arfcn=" + this.m + ", bsic=" + this.n + ", timingAdvance=" + this.o + ", mcc='" + this.f12730a + "', mnc='" + this.b + "', signalStrength=" + this.c + ", asuLevel=" + this.f12731d + ", lastUpdateSystemMills=" + this.f12732e + ", lastUpdateUtcMills=" + this.f12733f + ", age=" + this.f12734g + ", main=" + this.f12735h + ", newApi=" + this.i + '}';
    }
}
