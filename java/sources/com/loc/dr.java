package com.loc;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class dr extends dq implements Serializable {
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;

    public dr() {
        this.j = 0;
        this.k = 0;
        this.l = 0;
    }

    public dr(boolean z, boolean z2) {
        super(z, z2);
        this.j = 0;
        this.k = 0;
        this.l = 0;
    }

    @Override // com.loc.dq
    /* JADX INFO: renamed from: a */
    public final dq clone() {
        dr drVar = new dr(this.f12735h, this.i);
        drVar.a(this);
        drVar.j = this.j;
        drVar.k = this.k;
        drVar.l = this.l;
        drVar.m = this.m;
        drVar.n = this.n;
        return drVar;
    }

    @Override // com.loc.dq
    public final String toString() {
        return "AmapCellCdma{sid=" + this.j + ", nid=" + this.k + ", bid=" + this.l + ", latitude=" + this.m + ", longitude=" + this.n + ", mcc='" + this.f12730a + "', mnc='" + this.b + "', signalStrength=" + this.c + ", asuLevel=" + this.f12731d + ", lastUpdateSystemMills=" + this.f12732e + ", lastUpdateUtcMills=" + this.f12733f + ", age=" + this.f12734g + ", main=" + this.f12735h + ", newApi=" + this.i + '}';
    }
}
