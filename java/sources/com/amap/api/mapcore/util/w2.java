package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public class w2 {
    private short[] b;
    private double[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11311d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n3 f11310a = new n3();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c3 f11312e = new c3();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n3 f11313f = new n3();

    private static int a(double d2, double d3, double d4, double d5, double d6, double d7) {
        return (int) Math.signum((d2 * (d7 - d5)) + (d4 * (d3 - d7)) + (d6 * (d5 - d3)));
    }

    private int b(int i) {
        short[] sArr = this.b;
        int i2 = sArr[i(i)] * 2;
        int i3 = sArr[i] * 2;
        int i4 = sArr[j(i)] * 2;
        double[] dArr = this.c;
        return a(dArr[i2], dArr[i2 + 1], dArr[i3], dArr[i3 + 1], dArr[i4], dArr[i4 + 1]);
    }

    private void e() {
        int i;
        int[] iArr = this.f11312e.f10595a;
        while (true) {
            i = this.f11311d;
            int i2 = 0;
            if (i <= 3) {
                break;
            }
            int iF = f();
            h(iF);
            int i3 = i(iF);
            if (iF != this.f11311d) {
                i2 = iF;
            }
            iArr[i3] = b(i3);
            iArr[i2] = b(i2);
        }
        if (i == 3) {
            n3 n3Var = this.f11313f;
            short[] sArr = this.b;
            n3Var.c(sArr[0]);
            n3Var.c(sArr[1]);
            n3Var.c(sArr[2]);
        }
    }

    private int f() {
        int i = this.f11311d;
        for (int i2 = 0; i2 < i; i2++) {
            if (g(i2)) {
                return i2;
            }
        }
        int[] iArr = this.f11312e.f10595a;
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] != -1) {
                return i3;
            }
        }
        return 0;
    }

    private boolean g(int i) {
        int[] iArr = this.f11312e.f10595a;
        if (iArr[i] == -1) {
            return false;
        }
        int i2 = i(i);
        int iJ = j(i);
        short[] sArr = this.b;
        int i3 = sArr[i2] * 2;
        int i4 = sArr[i] * 2;
        int i5 = sArr[iJ] * 2;
        double[] dArr = this.c;
        double d2 = dArr[i3];
        int i6 = 1;
        double d3 = dArr[i3 + 1];
        double d4 = dArr[i4];
        double d5 = dArr[i4 + 1];
        double d6 = dArr[i5];
        double d7 = dArr[i5 + 1];
        int iJ2 = j(iJ);
        while (iJ2 != i2) {
            if (iArr[iJ2] != i6) {
                int i7 = sArr[iJ2] * 2;
                double d8 = dArr[i7];
                double d9 = dArr[i7 + i6];
                if (a(d6, d7, d2, d3, d8, d9) >= 0 && a(d2, d3, d4, d5, d8, d9) >= 0 && a(d4, d5, d6, d7, d8, d9) >= 0) {
                    return false;
                }
            }
            iJ2 = j(iJ2);
            i6 = 1;
        }
        return true;
    }

    private void h(int i) {
        short[] sArr = this.b;
        n3 n3Var = this.f11313f;
        n3Var.c(sArr[i(i)]);
        n3Var.c(sArr[i]);
        n3Var.c(sArr[j(i)]);
        this.f11310a.d(i);
        this.f11312e.c(i);
        this.f11311d--;
    }

    private int i(int i) {
        if (i == 0) {
            i = this.f11311d;
        }
        return i - 1;
    }

    private int j(int i) {
        return (i + 1) % this.f11311d;
    }

    public n3 c(double[] dArr) {
        return d(dArr, 0, dArr.length);
    }

    public n3 d(double[] dArr, int i, int i2) {
        this.c = dArr;
        int i3 = i2 / 2;
        this.f11311d = i3;
        int i4 = i / 2;
        n3 n3Var = this.f11310a;
        n3Var.b();
        n3Var.e(i3);
        n3Var.b = i3;
        short[] sArr = n3Var.f11021a;
        this.b = sArr;
        int i5 = i3 - 1;
        for (int i6 = 0; i6 < i3; i6++) {
            sArr[i6] = (short) ((i4 + i5) - i6);
        }
        c3 c3Var = this.f11312e;
        c3Var.a();
        c3Var.d(i3);
        for (int i7 = 0; i7 < i3; i7++) {
            c3Var.b(b(i7));
        }
        n3 n3Var2 = this.f11313f;
        n3Var2.b();
        n3Var2.e(Math.max(0, i3 - 2) * 3);
        e();
        return n3Var2;
    }
}
