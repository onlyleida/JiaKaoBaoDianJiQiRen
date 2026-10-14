package androidx.constraintlayout.core.motion.a;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class h {
    double[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    g f658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f659f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float[] f656a = new float[0];
    double[] b = new double[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    double f660g = 6.283185307179586d;

    public void a(double d2, float f2) {
        int length = this.f656a.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.b, d2);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.b = Arrays.copyOf(this.b, length);
        this.f656a = Arrays.copyOf(this.f656a, length);
        this.c = new double[length];
        double[] dArr = this.b;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.b[iBinarySearch] = d2;
        this.f656a[iBinarySearch] = f2;
    }

    double b(double d2) {
        if (d2 < 0.0d) {
            d2 = 0.0d;
        } else if (d2 > 1.0d) {
            d2 = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.b, d2);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i = (-iBinarySearch) - 1;
        float[] fArr = this.f656a;
        int i2 = i - 1;
        double d3 = fArr[i] - fArr[i2];
        double[] dArr = this.b;
        double d4 = d3 / (dArr[i] - dArr[i2]);
        return this.c[i2] + ((((double) fArr[i2]) - (dArr[i2] * d4)) * (d2 - dArr[i2])) + ((d4 * ((d2 * d2) - (dArr[i2] * dArr[i2]))) / 2.0d);
    }

    public double c(double d2, double d3) {
        double dAbs;
        double dB = b(d2) + d3;
        switch (this.f659f) {
            case 1:
                return Math.signum(0.5d - (dB % 1.0d));
            case 2:
                dAbs = Math.abs((((dB * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((dB * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((dB * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f660g * (d3 + dB));
            case 6:
                double dAbs2 = 1.0d - Math.abs(((dB * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.f658e.c(dB % 1.0d, 0);
            default:
                return Math.sin(this.f660g * dB);
        }
        return 1.0d - dAbs;
    }

    public void d() {
        double d2 = 0.0d;
        int i = 0;
        while (true) {
            float[] fArr = this.f656a;
            if (i >= fArr.length) {
                break;
            }
            d2 += (double) fArr[i];
            i++;
        }
        int i2 = 1;
        double d3 = 0.0d;
        int i3 = 1;
        while (true) {
            float[] fArr2 = this.f656a;
            if (i3 >= fArr2.length) {
                break;
            }
            int i4 = i3 - 1;
            float f2 = (fArr2[i4] + fArr2[i3]) / 2.0f;
            double[] dArr = this.b;
            d3 += (dArr[i3] - dArr[i4]) * ((double) f2);
            i3++;
        }
        int i5 = 0;
        while (true) {
            float[] fArr3 = this.f656a;
            if (i5 >= fArr3.length) {
                break;
            }
            fArr3[i5] = (float) (((double) fArr3[i5]) * (d2 / d3));
            i5++;
        }
        this.c[0] = 0.0d;
        while (true) {
            float[] fArr4 = this.f656a;
            if (i2 >= fArr4.length) {
                return;
            }
            int i6 = i2 - 1;
            float f3 = (fArr4[i6] + fArr4[i2]) / 2.0f;
            double[] dArr2 = this.b;
            double d4 = dArr2[i2] - dArr2[i6];
            double[] dArr3 = this.c;
            dArr3[i2] = dArr3[i6] + (d4 * ((double) f3));
            i2++;
        }
    }

    public void e(int i, String str) {
        this.f659f = i;
        this.f657d = str;
        if (str != null) {
            this.f658e = g.h(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.b) + " period=" + Arrays.toString(this.f656a);
    }
}
