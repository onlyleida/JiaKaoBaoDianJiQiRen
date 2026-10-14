package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class er {
    public int l;
    public boolean n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12832a = 0;
    public int b = 0;
    public int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12833d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f12834e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12835f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12836g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12837h = 0;
    public int i = 0;
    public int j = 0;
    public int k = -113;
    public short m = 0;
    public int o = 32767;
    public int p = Integer.MAX_VALUE;
    public int q = Integer.MAX_VALUE;
    public boolean r = true;
    public int s = 99;
    public long t = 0;

    public er(int i, boolean z) {
        this.l = 0;
        this.n = false;
        this.l = i;
        this.n = z;
    }

    private String e() {
        int i = this.l;
        return this.l + "#" + this.f12832a + "#" + this.b + "#0#" + a();
    }

    private String f() {
        return this.l + "#" + this.f12837h + "#" + this.i + "#" + this.j;
    }

    public final long a() {
        return this.l == 5 ? this.f12834e : this.f12833d;
    }

    public final String b() {
        int i = this.l;
        if (i != 1) {
            if (i == 2) {
                return f();
            }
            if (i != 3 && i != 4 && i != 5) {
                return null;
            }
        }
        return e();
    }

    public final String c() {
        String strB = b();
        if (strB == null || strB.length() <= 0) {
            return "";
        }
        return (this.r ? 1 : 0) + "#" + strB;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final er clone() {
        er erVar = new er(this.l, this.n);
        erVar.f12832a = this.f12832a;
        erVar.b = this.b;
        erVar.c = this.c;
        erVar.f12833d = this.f12833d;
        erVar.f12834e = this.f12834e;
        erVar.f12835f = this.f12835f;
        erVar.f12836g = this.f12836g;
        erVar.f12837h = this.f12837h;
        erVar.i = this.i;
        erVar.j = this.j;
        erVar.k = this.k;
        erVar.m = this.m;
        erVar.o = this.o;
        erVar.p = this.p;
        erVar.q = this.q;
        erVar.r = this.r;
        erVar.s = this.s;
        erVar.t = this.t;
        return erVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof er)) {
            er erVar = (er) obj;
            int i = erVar.l;
            if (i != 1) {
                if (i == 2) {
                    return this.l == 2 && erVar.j == this.j && erVar.i == this.i && erVar.f12837h == this.f12837h;
                }
                if (i == 3) {
                    return this.l == 3 && erVar.c == this.c && erVar.f12833d == this.f12833d && erVar.b == this.b;
                }
                if (i != 4) {
                    return i == 5 && this.l == 5 && erVar.c == this.c && erVar.f12834e == this.f12834e && erVar.q == this.q;
                }
                return this.l == 4 && erVar.c == this.c && erVar.f12833d == this.f12833d && erVar.b == this.b;
            }
            if (this.l == 1 && erVar.c == this.c && erVar.f12833d == this.f12833d && erVar.b == this.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode;
        int i;
        int iHashCode2 = String.valueOf(this.l).hashCode();
        if (this.l == 2) {
            iHashCode = String.valueOf(this.j).hashCode() + String.valueOf(this.i).hashCode();
            i = this.f12837h;
        } else {
            iHashCode = String.valueOf(this.c).hashCode() + String.valueOf(this.f12833d).hashCode();
            i = this.b;
        }
        return iHashCode2 + iHashCode + String.valueOf(i).hashCode();
    }
}
