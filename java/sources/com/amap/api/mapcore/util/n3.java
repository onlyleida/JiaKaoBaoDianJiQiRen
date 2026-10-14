package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public class n3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public short[] f11021a;
    public int b;
    public boolean c;

    public n3() {
        this(true, 16);
    }

    public short a(int i) {
        if (i < this.b) {
            return this.f11021a[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.b);
    }

    public void b() {
        this.b = 0;
    }

    public void c(short s) {
        short[] sArrF = this.f11021a;
        int i = this.b;
        if (i == sArrF.length) {
            sArrF = f(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.b;
        this.b = i2 + 1;
        sArrF[i2] = s;
    }

    public short d(int i) {
        int i2 = this.b;
        if (i >= i2) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.b);
        }
        short[] sArr = this.f11021a;
        short s = sArr[i];
        int i3 = i2 - 1;
        this.b = i3;
        if (this.c) {
            System.arraycopy(sArr, i + 1, sArr, i, i3 - i);
        } else {
            sArr[i] = sArr[i3];
        }
        return s;
    }

    public short[] e(int i) {
        int i2 = this.b + i;
        if (i2 > this.f11021a.length) {
            f(Math.max(8, i2));
        }
        return this.f11021a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n3)) {
            return false;
        }
        n3 n3Var = (n3) obj;
        int i = this.b;
        if (i != n3Var.b) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f11021a[i2] != n3Var.f11021a[i2]) {
                return false;
            }
        }
        return true;
    }

    protected short[] f(int i) {
        short[] sArr = new short[i];
        System.arraycopy(this.f11021a, 0, sArr, 0, Math.min(this.b, i));
        this.f11021a = sArr;
        return sArr;
    }

    public int hashCode() {
        return 42;
    }

    public String toString() {
        if (this.b == 0) {
            return "[]";
        }
        short[] sArr = this.f11021a;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append((int) sArr[0]);
        for (int i = 1; i < this.b; i++) {
            sb.append(", ");
            sb.append((int) sArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    public n3(boolean z, int i) {
        this.c = z;
        this.f11021a = new short[i];
    }
}
