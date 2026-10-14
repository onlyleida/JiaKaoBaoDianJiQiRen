package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public class c3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f10595a;
    public int b;
    public boolean c;

    public c3() {
        this(true, 16);
    }

    public void a() {
        this.b = 0;
    }

    public void b(int i) {
        int[] iArrE = this.f10595a;
        int i2 = this.b;
        if (i2 == iArrE.length) {
            iArrE = e(Math.max(8, (int) (i2 * 1.75f)));
        }
        int i3 = this.b;
        this.b = i3 + 1;
        iArrE[i3] = i;
    }

    public int c(int i) {
        int i2 = this.b;
        if (i >= i2) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.b);
        }
        int[] iArr = this.f10595a;
        int i3 = iArr[i];
        int i4 = i2 - 1;
        this.b = i4;
        if (this.c) {
            System.arraycopy(iArr, i + 1, iArr, i, i4 - i);
        } else {
            iArr[i] = iArr[i4];
        }
        return i3;
    }

    public int[] d(int i) {
        int i2 = this.b + i;
        if (i2 > this.f10595a.length) {
            e(Math.max(8, i2));
        }
        return this.f10595a;
    }

    protected int[] e(int i) {
        int[] iArr = new int[i];
        System.arraycopy(this.f10595a, 0, iArr, 0, Math.min(this.b, i));
        this.f10595a = iArr;
        return iArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c3)) {
            return false;
        }
        c3 c3Var = (c3) obj;
        int i = this.b;
        if (i != c3Var.b) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f10595a[i2] != c3Var.f10595a[i2]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 42;
    }

    public String toString() {
        if (this.b == 0) {
            return "[]";
        }
        int[] iArr = this.f10595a;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(iArr[0]);
        for (int i = 1; i < this.b; i++) {
            sb.append(", ");
            sb.append(iArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    public c3(boolean z, int i) {
        this.c = z;
        this.f10595a = new int[i];
    }
}
