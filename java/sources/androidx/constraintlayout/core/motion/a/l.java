package androidx.constraintlayout.core.motion.a;

import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    protected static float k = 6.2831855f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected b f667a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f670f;
    protected long i;
    protected int b = 0;
    protected int[] c = new int[10];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float[][] f668d = (float[][]) Array.newInstance((Class<?>) float.class, 10, 3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected float[] f671g = new float[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f672h = false;
    protected float j = Float.NaN;

    protected static class a {
        static void a(int[] iArr, float[][] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                i3 = i4 - 1;
                int i6 = iArr2[i3];
                if (i5 < i6) {
                    int iB = b(iArr, fArr, i5, i6);
                    int i7 = i3 + 1;
                    iArr2[i3] = iB - 1;
                    int i8 = i7 + 1;
                    iArr2[i7] = i5;
                    int i9 = i8 + 1;
                    iArr2[i8] = i6;
                    i3 = i9 + 1;
                    iArr2[i9] = iB + 1;
                }
            }
        }

        private static int b(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    c(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            c(iArr, fArr, i4, i2);
            return i4;
        }

        private static void c(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    protected float a(float f2) {
        float fAbs;
        switch (this.b) {
            case 1:
                return Math.signum(f2 * k);
            case 2:
                fAbs = Math.abs(f2);
                break;
            case 3:
                return (((f2 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f2 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f2 * k);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f2 * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f2 * k);
        }
        return 1.0f - fAbs;
    }

    public void b(int i, float f2, float f3, int i2, float f4) {
        int[] iArr = this.c;
        int i3 = this.f669e;
        iArr[i3] = i;
        float[][] fArr = this.f668d;
        fArr[i3][0] = f2;
        fArr[i3][1] = f3;
        fArr[i3][2] = f4;
        this.b = Math.max(this.b, i2);
        this.f669e++;
    }

    protected void c(long j) {
        this.i = j;
    }

    public void d(String str) {
        this.f670f = str;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    public void e(int i) {
        int i2 = this.f669e;
        if (i2 == 0) {
            System.err.println("Error no points added to " + this.f670f);
            return;
        }
        a.a(this.c, this.f668d, 0, i2 - 1);
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int[] iArr = this.c;
            if (i3 >= iArr.length) {
                break;
            }
            if (iArr[i3] != iArr[i3 - 1]) {
                i4++;
            }
            i3++;
        }
        if (i4 == 0) {
            i4 = 1;
        }
        double[] dArr = new double[i4];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, i4, 3);
        int i5 = 0;
        for (int i6 = 0; i6 < this.f669e; i6++) {
            if (i6 > 0) {
                int[] iArr2 = this.c;
                if (iArr2[i6] != iArr2[i6 - 1]) {
                    dArr[i5] = ((double) this.c[i6]) * 0.01d;
                    double[] dArr3 = dArr2[i5];
                    float[][] fArr = this.f668d;
                    dArr3[0] = fArr[i6][0];
                    dArr2[i5][1] = fArr[i6][1];
                    dArr2[i5][2] = fArr[i6][2];
                    i5++;
                }
            } else {
                dArr[i5] = ((double) this.c[i6]) * 0.01d;
                double[] dArr4 = dArr2[i5];
                float[][] fArr2 = this.f668d;
                dArr4[0] = fArr2[i6][0];
                dArr2[i5][1] = fArr2[i6][1];
                dArr2[i5][2] = fArr2[i6][2];
                i5++;
            }
        }
        this.f667a = b.a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f670f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f669e; i++) {
            str = str + "[" + this.c[i] + " , " + decimalFormat.format(this.f668d[i]) + "] ";
        }
        return str;
    }
}
