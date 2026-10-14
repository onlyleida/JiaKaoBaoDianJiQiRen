package com.loc;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dq implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12730a;
    public String b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f12732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f12733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12735h;
    public boolean i;

    public dq() {
        this.f12730a = "";
        this.b = "";
        this.c = 99;
        this.f12731d = Integer.MAX_VALUE;
        this.f12732e = 0L;
        this.f12733f = 0L;
        this.f12734g = 0;
        this.i = true;
    }

    public dq(boolean z, boolean z2) {
        this.f12730a = "";
        this.b = "";
        this.c = 99;
        this.f12731d = Integer.MAX_VALUE;
        this.f12732e = 0L;
        this.f12733f = 0L;
        this.f12734g = 0;
        this.i = true;
        this.f12735h = z;
        this.i = z2;
    }

    private static int a(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e2) {
            ea.a(e2);
            return 0;
        }
    }

    @Override // 
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract dq clone();

    public final void a(dq dqVar) {
        this.f12730a = dqVar.f12730a;
        this.b = dqVar.b;
        this.c = dqVar.c;
        this.f12731d = dqVar.f12731d;
        this.f12732e = dqVar.f12732e;
        this.f12733f = dqVar.f12733f;
        this.f12734g = dqVar.f12734g;
        this.f12735h = dqVar.f12735h;
        this.i = dqVar.i;
    }

    public final int b() {
        return a(this.f12730a);
    }

    public final int c() {
        return a(this.b);
    }

    public String toString() {
        return "AmapCell{mcc=" + this.f12730a + ", mnc=" + this.b + ", signalStrength=" + this.c + ", asulevel=" + this.f12731d + ", lastUpdateSystemMills=" + this.f12732e + ", lastUpdateUtcMills=" + this.f12733f + ", age=" + this.f12734g + ", main=" + this.f12735h + ", newapi=" + this.i + '}';
    }
}
