package androidx.constraintlayout.core.motion.a;

/* JADX INFO: loaded from: classes.dex */
public class f extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double[] f651a;
    private double[][] b;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    double[] f652d;

    public f(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f652d = new double[length2];
        this.f651a = dArr;
        this.b = dArr2;
        if (length2 > 2) {
            double d2 = 0.0d;
            double d3 = 0.0d;
            int i = 0;
            while (i < dArr.length) {
                double d4 = dArr2[i][0];
                double d5 = dArr2[i][0];
                if (i > 0) {
                    Math.hypot(d4 - d2, d5 - d3);
                }
                i++;
                d2 = d4;
                d3 = d5;
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public double c(double d2, int i) {
        double[] dArr = this.f651a;
        int length = dArr.length;
        int i2 = 0;
        if (this.c) {
            if (d2 <= dArr[0]) {
                return this.b[0][i] + ((d2 - dArr[0]) * h(dArr[0], i));
            }
            int i3 = length - 1;
            if (d2 >= dArr[i3]) {
                return this.b[i3][i] + ((d2 - dArr[i3]) * h(dArr[i3], i));
            }
        } else {
            if (d2 <= dArr[0]) {
                return this.b[0][i];
            }
            int i4 = length - 1;
            if (d2 >= dArr[i4]) {
                return this.b[i4][i];
            }
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f651a;
            if (d2 == dArr2[i2]) {
                return this.b[i2][i];
            }
            int i5 = i2 + 1;
            if (d2 < dArr2[i5]) {
                double d3 = (d2 - dArr2[i2]) / (dArr2[i5] - dArr2[i2]);
                double[][] dArr3 = this.b;
                return (dArr3[i2][i] * (1.0d - d3)) + (dArr3[i5][i] * d3);
            }
            i2 = i5;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public void d(double d2, double[] dArr) {
        double[] dArr2 = this.f651a;
        int length = dArr2.length;
        int i = 0;
        int length2 = this.b[0].length;
        if (this.c) {
            if (d2 <= dArr2[0]) {
                f(dArr2[0], this.f652d);
                for (int i2 = 0; i2 < length2; i2++) {
                    dArr[i2] = this.b[0][i2] + ((d2 - this.f651a[0]) * this.f652d[i2]);
                }
                return;
            }
            int i3 = length - 1;
            if (d2 >= dArr2[i3]) {
                f(dArr2[i3], this.f652d);
                while (i < length2) {
                    dArr[i] = this.b[i3][i] + ((d2 - this.f651a[i3]) * this.f652d[i]);
                    i++;
                }
                return;
            }
        } else {
            if (d2 <= dArr2[0]) {
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = this.b[0][i4];
                }
                return;
            }
            int i5 = length - 1;
            if (d2 >= dArr2[i5]) {
                while (i < length2) {
                    dArr[i] = this.b[i5][i];
                    i++;
                }
                return;
            }
        }
        int i6 = 0;
        while (i6 < length - 1) {
            if (d2 == this.f651a[i6]) {
                for (int i7 = 0; i7 < length2; i7++) {
                    dArr[i7] = this.b[i6][i7];
                }
            }
            double[] dArr3 = this.f651a;
            int i8 = i6 + 1;
            if (d2 < dArr3[i8]) {
                double d3 = (d2 - dArr3[i6]) / (dArr3[i8] - dArr3[i6]);
                while (i < length2) {
                    double[][] dArr4 = this.b;
                    dArr[i] = (dArr4[i6][i] * (1.0d - d3)) + (dArr4[i8][i] * d3);
                    i++;
                }
                return;
            }
            i6 = i8;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public void e(double d2, float[] fArr) {
        double[] dArr = this.f651a;
        int length = dArr.length;
        int i = 0;
        int length2 = this.b[0].length;
        if (this.c) {
            if (d2 <= dArr[0]) {
                f(dArr[0], this.f652d);
                for (int i2 = 0; i2 < length2; i2++) {
                    fArr[i2] = (float) (this.b[0][i2] + ((d2 - this.f651a[0]) * this.f652d[i2]));
                }
                return;
            }
            int i3 = length - 1;
            if (d2 >= dArr[i3]) {
                f(dArr[i3], this.f652d);
                while (i < length2) {
                    fArr[i] = (float) (this.b[i3][i] + ((d2 - this.f651a[i3]) * this.f652d[i]));
                    i++;
                }
                return;
            }
        } else {
            if (d2 <= dArr[0]) {
                for (int i4 = 0; i4 < length2; i4++) {
                    fArr[i4] = (float) this.b[0][i4];
                }
                return;
            }
            int i5 = length - 1;
            if (d2 >= dArr[i5]) {
                while (i < length2) {
                    fArr[i] = (float) this.b[i5][i];
                    i++;
                }
                return;
            }
        }
        int i6 = 0;
        while (i6 < length - 1) {
            if (d2 == this.f651a[i6]) {
                for (int i7 = 0; i7 < length2; i7++) {
                    fArr[i7] = (float) this.b[i6][i7];
                }
            }
            double[] dArr2 = this.f651a;
            int i8 = i6 + 1;
            if (d2 < dArr2[i8]) {
                double d3 = (d2 - dArr2[i6]) / (dArr2[i8] - dArr2[i6]);
                while (i < length2) {
                    double[][] dArr3 = this.b;
                    fArr[i] = (float) ((dArr3[i6][i] * (1.0d - d3)) + (dArr3[i8][i] * d3));
                    i++;
                }
                return;
            }
            i6 = i8;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public void f(double d2, double[] dArr) {
        double[] dArr2 = this.f651a;
        int length = dArr2.length;
        int length2 = this.b[0].length;
        if (d2 <= dArr2[0]) {
            d2 = dArr2[0];
        } else {
            int i = length - 1;
            if (d2 >= dArr2[i]) {
                d2 = dArr2[i];
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            double[] dArr3 = this.f651a;
            int i3 = i2 + 1;
            if (d2 <= dArr3[i3]) {
                double d3 = dArr3[i3] - dArr3[i2];
                double d4 = dArr3[i2];
                for (int i4 = 0; i4 < length2; i4++) {
                    double[][] dArr4 = this.b;
                    dArr[i4] = (dArr4[i3][i4] - dArr4[i2][i4]) / d3;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public double[] g() {
        return this.f651a;
    }

    public double h(double d2, int i) {
        double[] dArr = this.f651a;
        int length = dArr.length;
        int i2 = 0;
        if (d2 < dArr[0]) {
            d2 = dArr[0];
        } else {
            int i3 = length - 1;
            if (d2 >= dArr[i3]) {
                d2 = dArr[i3];
            }
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f651a;
            int i4 = i2 + 1;
            if (d2 <= dArr2[i4]) {
                double d3 = dArr2[i4] - dArr2[i2];
                double d4 = dArr2[i2];
                double[][] dArr3 = this.b;
                return (dArr3[i4][i] - dArr3[i2][i]) / d3;
            }
            i2 = i4;
        }
        return 0.0d;
    }
}
