package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
class p implements Comparable<p> {
    static String[] q = {"position", "x", "y", "width", "height", "pathRotate"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    androidx.constraintlayout.core.motion.a.c f783a;
    float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f785e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f786f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f787g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f788h;
    int j;
    int k;
    m l;
    LinkedHashMap<String, ConstraintAttribute> m;
    int n;
    double[] o;
    double[] p;
    int b = 0;
    float i = Float.NaN;

    public p() {
        int i = d.f751f;
        this.j = i;
        this.k = i;
        this.l = null;
        this.m = new LinkedHashMap<>();
        this.n = 0;
        this.o = new double[18];
        this.p = new double[18];
    }

    private boolean b(float f2, float f3) {
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            return Float.isNaN(f2) != Float.isNaN(f3);
        }
        return Math.abs(f2 - f3) > 1.0E-6f;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(p pVar) {
        return Float.compare(this.f784d, pVar.f784d);
    }

    void c(p pVar, boolean[] zArr, String[] strArr, boolean z) {
        boolean zB = b(this.f785e, pVar.f785e);
        boolean zB2 = b(this.f786f, pVar.f786f);
        zArr[0] = zArr[0] | b(this.f784d, pVar.f784d);
        boolean z2 = zB | zB2 | z;
        zArr[1] = zArr[1] | z2;
        zArr[2] = z2 | zArr[2];
        zArr[3] = zArr[3] | b(this.f787g, pVar.f787g);
        zArr[4] = b(this.f788h, pVar.f788h) | zArr[4];
    }

    void d(double[] dArr, int[] iArr) {
        float[] fArr = {this.f784d, this.f785e, this.f786f, this.f787g, this.f788h, this.i};
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] < 6) {
                dArr[i] = fArr[iArr[i2]];
                i++;
            }
        }
    }

    void e(double d2, int[] iArr, double[] dArr, float[] fArr, int i) {
        float fSin = this.f785e;
        float fCos = this.f786f;
        float f2 = this.f787g;
        float f3 = this.f788h;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f4 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                fSin = f4;
            } else if (i3 == 2) {
                fCos = f4;
            } else if (i3 == 3) {
                f2 = f4;
            } else if (i3 == 4) {
                f3 = f4;
            }
        }
        m mVar = this.l;
        if (mVar != null) {
            float[] fArr2 = new float[2];
            mVar.h(d2, fArr2, new float[2]);
            float f5 = fArr2[0];
            float f6 = fArr2[1];
            double d3 = f5;
            double d4 = fSin;
            double d5 = fCos;
            fSin = (float) ((d3 + (Math.sin(d5) * d4)) - ((double) (f2 / 2.0f)));
            fCos = (float) ((((double) f6) - (d4 * Math.cos(d5))) - ((double) (f3 / 2.0f)));
        }
        fArr[i] = fSin + (f2 / 2.0f) + BitmapDescriptorFactory.HUE_RED;
        fArr[i + 1] = fCos + (f3 / 2.0f) + BitmapDescriptorFactory.HUE_RED;
    }

    void g(double d2, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f2 = this.f785e;
        float f3 = this.f786f;
        float f4 = this.f787g;
        float f5 = this.f788h;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        float f8 = BitmapDescriptorFactory.HUE_RED;
        float f9 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < iArr.length; i++) {
            float f10 = (float) dArr[i];
            float f11 = (float) dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f2 = f10;
                f6 = f11;
            } else if (i2 == 2) {
                f3 = f10;
                f8 = f11;
            } else if (i2 == 3) {
                f4 = f10;
                f7 = f11;
            } else if (i2 == 4) {
                f5 = f10;
                f9 = f11;
            }
        }
        float f12 = 2.0f;
        float f13 = (f7 / 2.0f) + f6;
        float fCos = (f9 / 2.0f) + f8;
        m mVar = this.l;
        if (mVar != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            mVar.h(d2, fArr3, fArr4);
            float f14 = fArr3[0];
            float f15 = fArr3[1];
            float f16 = fArr4[0];
            float f17 = fArr4[1];
            double d3 = f2;
            double d4 = f3;
            float fSin = (float) ((((double) f14) + (Math.sin(d4) * d3)) - ((double) (f4 / 2.0f)));
            float fCos2 = (float) ((((double) f15) - (d3 * Math.cos(d4))) - ((double) (f5 / 2.0f)));
            double d5 = f6;
            double d6 = f8;
            float fSin2 = (float) (((double) f16) + (Math.sin(d4) * d5) + (Math.cos(d4) * d6));
            fCos = (float) ((((double) f17) - (d5 * Math.cos(d4))) + (Math.sin(d4) * d6));
            f13 = fSin2;
            f2 = fSin;
            f3 = fCos2;
            f12 = 2.0f;
        }
        fArr[0] = f2 + (f4 / f12) + BitmapDescriptorFactory.HUE_RED;
        fArr[1] = f3 + (f5 / f12) + BitmapDescriptorFactory.HUE_RED;
        fArr2[0] = f13;
        fArr2[1] = fCos;
    }

    int h(String str, double[] dArr, int i) {
        ConstraintAttribute constraintAttribute = this.m.get(str);
        int i2 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.g() == 1) {
            dArr[i] = constraintAttribute.e();
            return 1;
        }
        int iG = constraintAttribute.g();
        float[] fArr = new float[iG];
        constraintAttribute.f(fArr);
        while (i2 < iG) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return iG;
    }

    int k(String str) {
        ConstraintAttribute constraintAttribute = this.m.get(str);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.g();
    }

    void n(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f2 = this.f785e;
        float fCos = this.f786f;
        float f3 = this.f787g;
        float f4 = this.f788h;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f2 = f5;
            } else if (i3 == 2) {
                fCos = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        m mVar = this.l;
        if (mVar != null) {
            float fI = mVar.i();
            float fJ = this.l.j();
            double d2 = f2;
            double d3 = fCos;
            float fSin = (float) ((((double) fI) + (Math.sin(d3) * d2)) - ((double) (f3 / 2.0f)));
            fCos = (float) ((((double) fJ) - (d2 * Math.cos(d3))) - ((double) (f4 / 2.0f)));
            f2 = fSin;
        }
        float f6 = f3 + f2;
        float f7 = f4 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        float f8 = f2 + BitmapDescriptorFactory.HUE_RED;
        float f9 = fCos + BitmapDescriptorFactory.HUE_RED;
        float f10 = f6 + BitmapDescriptorFactory.HUE_RED;
        float f11 = fCos + BitmapDescriptorFactory.HUE_RED;
        float f12 = f6 + BitmapDescriptorFactory.HUE_RED;
        float f13 = f7 + BitmapDescriptorFactory.HUE_RED;
        float f14 = f2 + BitmapDescriptorFactory.HUE_RED;
        float f15 = f7 + BitmapDescriptorFactory.HUE_RED;
        int i4 = i + 1;
        fArr[i] = f8;
        int i5 = i4 + 1;
        fArr[i4] = f9;
        int i6 = i5 + 1;
        fArr[i5] = f10;
        int i7 = i6 + 1;
        fArr[i6] = f11;
        int i8 = i7 + 1;
        fArr[i7] = f12;
        int i9 = i8 + 1;
        fArr[i8] = f13;
        fArr[i9] = f14;
        fArr[i9 + 1] = f15;
    }

    boolean o(String str) {
        return this.m.containsKey(str);
    }

    void p(h hVar, p pVar, p pVar2) {
        float f2 = hVar.f752a / 100.0f;
        this.c = f2;
        this.b = hVar.j;
        float f3 = Float.isNaN(hVar.k) ? f2 : hVar.k;
        float f4 = Float.isNaN(hVar.l) ? f2 : hVar.l;
        float f5 = pVar2.f787g;
        float f6 = pVar.f787g;
        float f7 = pVar2.f788h;
        float f8 = pVar.f788h;
        this.f784d = this.c;
        float f9 = pVar.f785e;
        float f10 = pVar.f786f;
        float f11 = (pVar2.f785e + (f5 / 2.0f)) - ((f6 / 2.0f) + f9);
        float f12 = (pVar2.f786f + (f7 / 2.0f)) - (f10 + (f8 / 2.0f));
        float f13 = (f5 - f6) * f3;
        float f14 = f13 / 2.0f;
        this.f785e = (int) ((f9 + (f11 * f2)) - f14);
        float f15 = (f7 - f8) * f4;
        float f16 = f15 / 2.0f;
        this.f786f = (int) ((f10 + (f12 * f2)) - f16);
        this.f787g = (int) (f6 + f13);
        this.f788h = (int) (f8 + f15);
        float f17 = Float.isNaN(hVar.m) ? f2 : hVar.m;
        boolean zIsNaN = Float.isNaN(hVar.p);
        float f18 = BitmapDescriptorFactory.HUE_RED;
        float f19 = zIsNaN ? BitmapDescriptorFactory.HUE_RED : hVar.p;
        if (!Float.isNaN(hVar.n)) {
            f2 = hVar.n;
        }
        if (!Float.isNaN(hVar.o)) {
            f18 = hVar.o;
        }
        this.n = 0;
        this.f785e = (int) (((pVar.f785e + (f17 * f11)) + (f18 * f12)) - f14);
        this.f786f = (int) (((pVar.f786f + (f11 * f19)) + (f12 * f2)) - f16);
        this.f783a = androidx.constraintlayout.core.motion.a.c.c(hVar.f762h);
        this.j = hVar.i;
    }

    void q(h hVar, p pVar, p pVar2) {
        float f2 = hVar.f752a / 100.0f;
        this.c = f2;
        this.b = hVar.j;
        float f3 = Float.isNaN(hVar.k) ? f2 : hVar.k;
        float f4 = Float.isNaN(hVar.l) ? f2 : hVar.l;
        float f5 = pVar2.f787g - pVar.f787g;
        float f6 = pVar2.f788h - pVar.f788h;
        this.f784d = this.c;
        if (!Float.isNaN(hVar.m)) {
            f2 = hVar.m;
        }
        float f7 = pVar.f785e;
        float f8 = pVar.f787g;
        float f9 = pVar.f786f;
        float f10 = pVar.f788h;
        float f11 = (pVar2.f785e + (pVar2.f787g / 2.0f)) - ((f8 / 2.0f) + f7);
        float f12 = (pVar2.f786f + (pVar2.f788h / 2.0f)) - ((f10 / 2.0f) + f9);
        float f13 = f11 * f2;
        float f14 = f5 * f3;
        float f15 = f14 / 2.0f;
        this.f785e = (int) ((f7 + f13) - f15);
        float f16 = f2 * f12;
        float f17 = f6 * f4;
        float f18 = f17 / 2.0f;
        this.f786f = (int) ((f9 + f16) - f18);
        this.f787g = (int) (f8 + f14);
        this.f788h = (int) (f10 + f17);
        float f19 = Float.isNaN(hVar.n) ? BitmapDescriptorFactory.HUE_RED : hVar.n;
        this.n = 1;
        float f20 = (int) ((pVar.f785e + f13) - f15);
        this.f785e = f20;
        float f21 = (int) ((pVar.f786f + f16) - f18);
        this.f786f = f21;
        this.f785e = f20 + ((-f12) * f19);
        this.f786f = f21 + (f11 * f19);
        this.k = this.k;
        this.f783a = androidx.constraintlayout.core.motion.a.c.c(hVar.f762h);
        this.j = hVar.i;
    }

    void r(int i, int i2, h hVar, p pVar, p pVar2) {
        float fMin;
        float f2;
        float f3 = hVar.f752a / 100.0f;
        this.c = f3;
        this.b = hVar.j;
        this.n = hVar.q;
        float f4 = Float.isNaN(hVar.k) ? f3 : hVar.k;
        float f5 = Float.isNaN(hVar.l) ? f3 : hVar.l;
        float f6 = pVar2.f787g;
        float f7 = pVar.f787g;
        float f8 = pVar2.f788h;
        float f9 = pVar.f788h;
        this.f784d = this.c;
        this.f787g = (int) (f7 + ((f6 - f7) * f4));
        this.f788h = (int) (f9 + ((f8 - f9) * f5));
        int i3 = hVar.q;
        if (i3 == 1) {
            float f10 = Float.isNaN(hVar.m) ? f3 : hVar.m;
            float f11 = pVar2.f785e;
            float f12 = pVar.f785e;
            this.f785e = (f10 * (f11 - f12)) + f12;
            if (!Float.isNaN(hVar.n)) {
                f3 = hVar.n;
            }
            float f13 = pVar2.f786f;
            float f14 = pVar.f786f;
            this.f786f = (f3 * (f13 - f14)) + f14;
        } else if (i3 != 2) {
            float f15 = Float.isNaN(hVar.m) ? f3 : hVar.m;
            float f16 = pVar2.f785e;
            float f17 = pVar.f785e;
            this.f785e = (f15 * (f16 - f17)) + f17;
            if (!Float.isNaN(hVar.n)) {
                f3 = hVar.n;
            }
            float f18 = pVar2.f786f;
            float f19 = pVar.f786f;
            this.f786f = (f3 * (f18 - f19)) + f19;
        } else {
            if (Float.isNaN(hVar.m)) {
                float f20 = pVar2.f785e;
                float f21 = pVar.f785e;
                fMin = ((f20 - f21) * f3) + f21;
            } else {
                fMin = Math.min(f5, f4) * hVar.m;
            }
            this.f785e = fMin;
            if (Float.isNaN(hVar.n)) {
                float f22 = pVar2.f786f;
                float f23 = pVar.f786f;
                f2 = (f3 * (f22 - f23)) + f23;
            } else {
                f2 = hVar.n;
            }
            this.f786f = f2;
        }
        this.k = pVar.k;
        this.f783a = androidx.constraintlayout.core.motion.a.c.c(hVar.f762h);
        this.j = hVar.i;
    }

    void s(int i, int i2, h hVar, p pVar, p pVar2) {
        float f2 = hVar.f752a / 100.0f;
        this.c = f2;
        this.b = hVar.j;
        float f3 = Float.isNaN(hVar.k) ? f2 : hVar.k;
        float f4 = Float.isNaN(hVar.l) ? f2 : hVar.l;
        float f5 = pVar2.f787g;
        float f6 = pVar.f787g;
        float f7 = pVar2.f788h;
        float f8 = pVar.f788h;
        this.f784d = this.c;
        float f9 = pVar.f785e;
        float f10 = pVar.f786f;
        float f11 = pVar2.f785e + (f5 / 2.0f);
        float f12 = pVar2.f786f + (f7 / 2.0f);
        float f13 = (f5 - f6) * f3;
        this.f785e = (int) ((f9 + ((f11 - ((f6 / 2.0f) + f9)) * f2)) - (f13 / 2.0f));
        float f14 = (f7 - f8) * f4;
        this.f786f = (int) ((f10 + ((f12 - (f10 + (f8 / 2.0f))) * f2)) - (f14 / 2.0f));
        this.f787g = (int) (f6 + f13);
        this.f788h = (int) (f8 + f14);
        this.n = 2;
        if (!Float.isNaN(hVar.m)) {
            this.f785e = (int) (hVar.m * ((int) (i - this.f787g)));
        }
        if (!Float.isNaN(hVar.n)) {
            this.f786f = (int) (hVar.n * ((int) (i2 - this.f788h)));
        }
        this.k = this.k;
        this.f783a = androidx.constraintlayout.core.motion.a.c.c(hVar.f762h);
        this.j = hVar.i;
    }

    void t(float f2, float f3, float f4, float f5) {
        this.f785e = f2;
        this.f786f = f3;
        this.f787g = f4;
        this.f788h = f5;
    }

    void u(float f2, float f3, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < iArr.length; i++) {
            float f8 = (float) dArr[i];
            double d2 = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f4 = f8;
            } else if (i2 == 2) {
                f6 = f8;
            } else if (i2 == 3) {
                f5 = f8;
            } else if (i2 == 4) {
                f7 = f8;
            }
        }
        float f9 = f4 - ((BitmapDescriptorFactory.HUE_RED * f5) / 2.0f);
        float f10 = f6 - ((BitmapDescriptorFactory.HUE_RED * f7) / 2.0f);
        fArr[0] = (f9 * (1.0f - f2)) + (((f5 * 1.0f) + f9) * f2) + BitmapDescriptorFactory.HUE_RED;
        fArr[1] = (f10 * (1.0f - f3)) + (((f7 * 1.0f) + f10) * f3) + BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void v(float f2, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f3;
        boolean z;
        float f4;
        float f5 = this.f785e;
        float f6 = this.f786f;
        float f7 = this.f787g;
        float f8 = this.f788h;
        if (iArr.length != 0 && this.o.length <= iArr[iArr.length - 1]) {
            int i = iArr[iArr.length - 1] + 1;
            this.o = new double[i];
            this.p = new double[i];
        }
        Arrays.fill(this.o, Double.NaN);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.o[iArr[i2]] = dArr[i2];
            this.p[iArr[i2]] = dArr2[i2];
        }
        float f9 = Float.NaN;
        int i3 = 0;
        float f10 = BitmapDescriptorFactory.HUE_RED;
        float f11 = BitmapDescriptorFactory.HUE_RED;
        float f12 = BitmapDescriptorFactory.HUE_RED;
        float f13 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            double[] dArr4 = this.o;
            if (i3 >= dArr4.length) {
                break;
            }
            if (Double.isNaN(dArr4[i3]) && (dArr3 == null || dArr3[i3] == 0.0d)) {
                f4 = f9;
            } else {
                double d2 = dArr3 != null ? dArr3[i3] : 0.0d;
                if (!Double.isNaN(this.o[i3])) {
                    d2 = this.o[i3] + d2;
                }
                f4 = f9;
                float f14 = (float) d2;
                float f15 = (float) this.p[i3];
                if (i3 == 1) {
                    f9 = f4;
                    f10 = f15;
                    f5 = f14;
                } else if (i3 == 2) {
                    f9 = f4;
                    f11 = f15;
                    f6 = f14;
                } else if (i3 == 3) {
                    f9 = f4;
                    f12 = f15;
                    f7 = f14;
                } else if (i3 == 4) {
                    f9 = f4;
                    f13 = f15;
                    f8 = f14;
                } else if (i3 == 5) {
                    f9 = f14;
                }
                i3++;
            }
            f9 = f4;
            i3++;
        }
        float f16 = f9;
        m mVar = this.l;
        if (mVar != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            mVar.h(f2, fArr, fArr2);
            float f17 = fArr[0];
            float f18 = fArr[1];
            float f19 = fArr2[0];
            float f20 = fArr2[1];
            double d3 = f5;
            double d4 = f6;
            float fSin = (float) ((((double) f17) + (Math.sin(d4) * d3)) - ((double) (f7 / 2.0f)));
            f3 = f8;
            float fCos = (float) ((((double) f18) - (Math.cos(d4) * d3)) - ((double) (f8 / 2.0f)));
            double d5 = f10;
            double d6 = f11;
            float fSin2 = (float) (((double) f19) + (Math.sin(d4) * d5) + (Math.cos(d4) * d3 * d6));
            float fCos2 = (float) ((((double) f20) - (d5 * Math.cos(d4))) + (d3 * Math.sin(d4) * d6));
            if (dArr2.length >= 2) {
                z = false;
                dArr2[0] = fSin2;
                dArr2[1] = fCos2;
            } else {
                z = false;
            }
            if (!Float.isNaN(f16)) {
                view.setRotation((float) (((double) f16) + Math.toDegrees(Math.atan2(fCos2, fSin2))));
            }
            f5 = fSin;
            f6 = fCos;
        } else {
            f3 = f8;
            z = false;
            if (!Float.isNaN(f16)) {
                view.setRotation((float) (((double) BitmapDescriptorFactory.HUE_RED) + ((double) f16) + Math.toDegrees(Math.atan2(f11 + (f13 / 2.0f), f10 + (f12 / 2.0f)))));
            }
        }
        if (view instanceof c) {
            ((c) view).a(f5, f6, f7 + f5, f6 + f3);
            return;
        }
        float f21 = f5 + 0.5f;
        int i4 = (int) f21;
        float f22 = f6 + 0.5f;
        int i5 = (int) f22;
        int i6 = (int) (f21 + f7);
        int i7 = (int) (f22 + f3);
        int i8 = i6 - i4;
        int i9 = i7 - i5;
        if (i8 != view.getMeasuredWidth() || i9 != view.getMeasuredHeight()) {
            z = true;
        }
        if (z) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
        }
        view.layout(i4, i5, i6, i7);
    }

    public p(int i, int i2, h hVar, p pVar, p pVar2) {
        int i3 = d.f751f;
        this.j = i3;
        this.k = i3;
        this.l = null;
        this.m = new LinkedHashMap<>();
        this.n = 0;
        this.o = new double[18];
        this.p = new double[18];
        if (pVar.k != d.f751f) {
            r(i, i2, hVar, pVar, pVar2);
            return;
        }
        int i4 = hVar.q;
        if (i4 == 1) {
            q(hVar, pVar, pVar2);
        } else if (i4 != 2) {
            p(hVar, pVar, pVar2);
        } else {
            s(i, i2, hVar, pVar, pVar2);
        }
    }
}
