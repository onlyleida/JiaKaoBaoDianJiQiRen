package androidx.constraintlayout.core.motion.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double f630a;
        double[] b;

        a(double d2, double[] dArr) {
            this.f630a = d2;
            this.b = dArr;
        }

        @Override // androidx.constraintlayout.core.motion.a.b
        public double c(double d2, int i) {
            return this.b[i];
        }

        @Override // androidx.constraintlayout.core.motion.a.b
        public void d(double d2, double[] dArr) {
            double[] dArr2 = this.b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.core.motion.a.b
        public void e(double d2, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.b;
                if (i >= dArr.length) {
                    return;
                }
                fArr[i] = (float) dArr[i];
                i++;
            }
        }

        @Override // androidx.constraintlayout.core.motion.a.b
        public void f(double d2, double[] dArr) {
            for (int i = 0; i < this.b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.core.motion.a.b
        public double[] g() {
            return new double[]{this.f630a};
        }
    }

    public static b a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        if (i != 0) {
            return i != 2 ? new f(dArr, dArr2) : new a(dArr[0], dArr2[0]);
        }
        return new g(dArr, dArr2);
    }

    public static b b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new androidx.constraintlayout.core.motion.a.a(iArr, dArr, dArr2);
    }

    public abstract double c(double d2, int i);

    public abstract void d(double d2, double[] dArr);

    public abstract void e(double d2, float[] fArr);

    public abstract void f(double d2, double[] dArr);

    public abstract double[] g();
}
