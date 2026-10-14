package androidx.constraintlayout.core.motion.a;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f638a;
    private String b;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f639d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f640e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<c> f641f = new ArrayList<>();

    class a implements Comparator<c> {
        a(e eVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            return Integer.compare(cVar.f648a, cVar2.f648a);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        h f642a;
        float[] b;
        double[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float[] f643d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float[] f644e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float[] f645f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        androidx.constraintlayout.core.motion.a.b f646g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        double[] f647h;

        b(int i, String str, int i2, int i3) {
            h hVar = new h();
            this.f642a = hVar;
            hVar.e(i, str);
            this.b = new float[i3];
            this.c = new double[i3];
            this.f643d = new float[i3];
            this.f644e = new float[i3];
            this.f645f = new float[i3];
            float[] fArr = new float[i3];
        }

        public double a(float f2) {
            androidx.constraintlayout.core.motion.a.b bVar = this.f646g;
            if (bVar != null) {
                bVar.d(f2, this.f647h);
            } else {
                double[] dArr = this.f647h;
                dArr[0] = this.f644e[0];
                dArr[1] = this.f645f[0];
                dArr[2] = this.b[0];
            }
            double[] dArr2 = this.f647h;
            return dArr2[0] + (this.f642a.c(f2, dArr2[1]) * this.f647h[2]);
        }

        public void b(int i, int i2, float f2, float f3, float f4, float f5) {
            this.c[i] = ((double) i2) / 100.0d;
            this.f643d[i] = f2;
            this.f644e[i] = f3;
            this.f645f[i] = f4;
            this.b[i] = f5;
        }

        public void c(float f2) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, this.c.length, 3);
            float[] fArr = this.b;
            this.f647h = new double[fArr.length + 2];
            double[] dArr2 = new double[fArr.length + 2];
            if (this.c[0] > 0.0d) {
                this.f642a.a(0.0d, this.f643d[0]);
            }
            double[] dArr3 = this.c;
            int length = dArr3.length - 1;
            if (dArr3[length] < 1.0d) {
                this.f642a.a(1.0d, this.f643d[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.f644e[i];
                dArr[i][1] = this.f645f[i];
                dArr[i][2] = this.b[i];
                this.f642a.a(this.c[i], this.f643d[i]);
            }
            this.f642a.d();
            double[] dArr4 = this.c;
            if (dArr4.length > 1) {
                this.f646g = androidx.constraintlayout.core.motion.a.b.a(0, dArr4, dArr);
            } else {
                this.f646g = null;
            }
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f648a;
        float b;
        float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f649d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f650e;

        public c(int i, float f2, float f3, float f4, float f5) {
            this.f648a = i;
            this.b = f5;
            this.c = f3;
            this.f649d = f2;
            this.f650e = f4;
        }
    }

    public float a(float f2) {
        return (float) this.f638a.a(f2);
    }

    protected void b(Object obj) {
    }

    public void c(int i, int i2, String str, int i3, float f2, float f3, float f4, float f5) {
        this.f641f.add(new c(i, f2, f3, f4, f5));
        if (i3 != -1) {
            this.f640e = i3;
        }
        this.c = i2;
        this.f639d = str;
    }

    public void d(int i, int i2, String str, int i3, float f2, float f3, float f4, float f5, Object obj) {
        this.f641f.add(new c(i, f2, f3, f4, f5));
        if (i3 != -1) {
            this.f640e = i3;
        }
        this.c = i2;
        b(obj);
        this.f639d = str;
    }

    public void e(String str) {
        this.b = str;
    }

    public void f(float f2) {
        int size = this.f641f.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f641f, new a(this));
        double[] dArr = new double[size];
        char c2 = 0;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, 3);
        this.f638a = new b(this.c, this.f639d, this.f640e, size);
        int i = 0;
        for (c cVar : this.f641f) {
            float f3 = cVar.f649d;
            dArr[i] = ((double) f3) * 0.01d;
            double[] dArr3 = dArr2[i];
            float f4 = cVar.b;
            dArr3[c2] = f4;
            double[] dArr4 = dArr2[i];
            float f5 = cVar.c;
            dArr4[1] = f5;
            double[] dArr5 = dArr2[i];
            float f6 = cVar.f650e;
            dArr5[2] = f6;
            this.f638a.b(i, cVar.f648a, f3, f5, f6, f4);
            i++;
            c2 = 0;
        }
        this.f638a.c(f2);
        androidx.constraintlayout.core.motion.a.b.a(0, dArr, dArr2);
    }

    public boolean g() {
        return this.f640e == 1;
    }

    public String toString() {
        String str = this.b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (c cVar : this.f641f) {
            str = str + "[" + cVar.f648a + " , " + decimalFormat.format(cVar.b) + "] ";
        }
        return str;
    }
}
