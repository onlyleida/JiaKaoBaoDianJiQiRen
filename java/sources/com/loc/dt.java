package com.loc;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class dt extends dq implements Serializable {
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;

    public dt() {
        this.j = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
    }

    public dt(boolean z) {
        super(z, true);
        this.j = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
    }

    @Override // com.loc.dq
    /* JADX INFO: renamed from: a */
    public final dq clone() {
        dt dtVar = new dt(this.f12735h);
        dtVar.a(this);
        dtVar.j = this.j;
        dtVar.k = this.k;
        dtVar.l = this.l;
        dtVar.m = this.m;
        dtVar.n = this.n;
        return dtVar;
    }

    @Override // com.loc.dq
    public final String toString() {
        return "AmapCellLte{tac=" + this.j + ", ci=" + this.k + ", pci=" + this.l + ", earfcn=" + this.m + ", timingAdvance=" + this.n + ", mcc='" + this.f12730a + "', mnc='" + this.b + "', signalStrength=" + this.c + ", asuLevel=" + this.f12731d + ", lastUpdateSystemMills=" + this.f12732e + ", lastUpdateUtcMills=" + this.f12733f + ", age=" + this.f12734g + ", main=" + this.f12735h + ", newApi=" + this.i + '}';
    }
}
