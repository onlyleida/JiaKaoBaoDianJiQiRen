package androidx.constraintlayout.core.motion.a;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[] f623a;
    C0015a[] b;
    private boolean c = true;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.a.a$a, reason: collision with other inner class name */
    private static class C0015a {
        private static double[] s = new double[91];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double[] f624a;
        double b;
        double c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        double f625d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        double f626e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        double f627f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        double f628g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        double f629h;
        double i;
        double j;
        double k;
        double l;
        double m;
        double n;
        double o;
        double p;
        boolean q;
        boolean r;

        C0015a(int i, double d2, double d3, double d4, double d5, double d6, double d7) {
            this.r = false;
            this.q = i == 1;
            this.c = d2;
            this.f625d = d3;
            this.i = 1.0d / (d3 - d2);
            if (3 == i) {
                this.r = true;
            }
            double d8 = d6 - d4;
            double d9 = d7 - d5;
            if (!this.r && Math.abs(d8) >= 0.001d && Math.abs(d9) >= 0.001d) {
                this.f624a = new double[101];
                boolean z = this.q;
                this.j = d8 * ((double) (z ? -1 : 1));
                this.k = d9 * ((double) (z ? 1 : -1));
                this.l = z ? d6 : d4;
                this.m = z ? d5 : d7;
                a(d4, d5, d6, d7);
                this.n = this.b * this.i;
                return;
            }
            this.r = true;
            this.f626e = d4;
            this.f627f = d6;
            this.f628g = d5;
            this.f629h = d7;
            double dHypot = Math.hypot(d9, d8);
            this.b = dHypot;
            this.n = dHypot * this.i;
            double d10 = this.f625d;
            double d11 = this.c;
            this.l = d8 / (d10 - d11);
            this.m = d9 / (d10 - d11);
        }

        private void a(double d2, double d3, double d4, double d5) {
            double dHypot;
            double d6 = d4 - d2;
            double d7 = d3 - d5;
            int i = 0;
            double d8 = 0.0d;
            double d9 = 0.0d;
            double d10 = 0.0d;
            while (true) {
                double[] dArr = s;
                if (i >= dArr.length) {
                    break;
                }
                double d11 = d8;
                double radians = Math.toRadians((((double) i) * 90.0d) / ((double) (dArr.length - 1)));
                double dSin = Math.sin(radians) * d6;
                double dCos = Math.cos(radians) * d7;
                if (i > 0) {
                    dHypot = d11 + Math.hypot(dSin - d9, dCos - d10);
                    s[i] = dHypot;
                } else {
                    dHypot = d11;
                }
                i++;
                d10 = dCos;
                d8 = dHypot;
                d9 = dSin;
            }
            double d12 = d8;
            this.b = d12;
            int i2 = 0;
            while (true) {
                double[] dArr2 = s;
                if (i2 >= dArr2.length) {
                    break;
                }
                dArr2[i2] = dArr2[i2] / d12;
                i2++;
            }
            int i3 = 0;
            while (true) {
                double[] dArr3 = this.f624a;
                if (i3 >= dArr3.length) {
                    return;
                }
                double length = ((double) i3) / ((double) (dArr3.length - 1));
                int iBinarySearch = Arrays.binarySearch(s, length);
                if (iBinarySearch >= 0) {
                    this.f624a[i3] = ((double) iBinarySearch) / ((double) (s.length - 1));
                } else if (iBinarySearch == -1) {
                    this.f624a[i3] = 0.0d;
                } else {
                    int i4 = -iBinarySearch;
                    int i5 = i4 - 2;
                    double[] dArr4 = s;
                    this.f624a[i3] = (((double) i5) + ((length - dArr4[i5]) / (dArr4[i4 - 1] - dArr4[i5]))) / ((double) (dArr4.length - 1));
                }
                i3++;
            }
        }

        double b() {
            double d2 = this.j * this.p;
            double dHypot = this.n / Math.hypot(d2, (-this.k) * this.o);
            if (this.q) {
                d2 = -d2;
            }
            return d2 * dHypot;
        }

        double c() {
            double d2 = this.j * this.p;
            double d3 = (-this.k) * this.o;
            double dHypot = this.n / Math.hypot(d2, d3);
            return this.q ? (-d3) * dHypot : d3 * dHypot;
        }

        public double d(double d2) {
            return this.l;
        }

        public double e(double d2) {
            return this.m;
        }

        public double f(double d2) {
            double d3 = (d2 - this.c) * this.i;
            double d4 = this.f626e;
            return d4 + (d3 * (this.f627f - d4));
        }

        public double g(double d2) {
            double d3 = (d2 - this.c) * this.i;
            double d4 = this.f628g;
            return d4 + (d3 * (this.f629h - d4));
        }

        double h() {
            return this.l + (this.j * this.o);
        }

        double i() {
            return this.m + (this.k * this.p);
        }

        double j(double d2) {
            if (d2 <= 0.0d) {
                return 0.0d;
            }
            if (d2 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f624a;
            double length = d2 * ((double) (dArr.length - 1));
            int i = (int) length;
            return dArr[i] + ((length - ((double) i)) * (dArr[i + 1] - dArr[i]));
        }

        void k(double d2) {
            double dJ = j((this.q ? this.f625d - d2 : d2 - this.c) * this.i) * 1.5707963267948966d;
            this.o = Math.sin(dJ);
            this.p = Math.cos(dJ);
        }
    }

    public a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f623a = dArr;
        this.b = new C0015a[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            C0015a[] c0015aArr = this.b;
            if (i >= c0015aArr.length) {
                return;
            }
            int i4 = iArr[i];
            if (i4 == 0) {
                i3 = 3;
            } else if (i4 == 1) {
                i2 = 1;
                i3 = 1;
            } else if (i4 == 2) {
                i2 = 2;
                i3 = 2;
            } else if (i4 == 3) {
                i2 = i2 == 1 ? 2 : 1;
                i3 = i2;
            }
            int i5 = i + 1;
            c0015aArr[i] = new C0015a(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
            i = i5;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public double c(double d2, int i) {
        double d3;
        double dG;
        double dE;
        double dI;
        double dC;
        int i2 = 0;
        if (this.c) {
            C0015a[] c0015aArr = this.b;
            if (d2 < c0015aArr[0].c) {
                double d4 = c0015aArr[0].c;
                d3 = d2 - c0015aArr[0].c;
                if (!c0015aArr[0].r) {
                    c0015aArr[0].k(d4);
                    if (i == 0) {
                        dI = this.b[0].h();
                        dC = this.b[0].b();
                    } else {
                        dI = this.b[0].i();
                        dC = this.b[0].c();
                    }
                    return dI + (d3 * dC);
                }
                if (i == 0) {
                    dG = c0015aArr[0].f(d4);
                    dE = this.b[0].d(d4);
                } else {
                    dG = c0015aArr[0].g(d4);
                    dE = this.b[0].e(d4);
                }
            } else if (d2 > c0015aArr[c0015aArr.length - 1].f625d) {
                double d5 = c0015aArr[c0015aArr.length - 1].f625d;
                d3 = d2 - d5;
                int length = c0015aArr.length - 1;
                if (i == 0) {
                    dG = c0015aArr[length].f(d5);
                    dE = this.b[length].d(d5);
                } else {
                    dG = c0015aArr[length].g(d5);
                    dE = this.b[length].e(d5);
                }
            }
            return dG + (d3 * dE);
        }
        C0015a[] c0015aArr2 = this.b;
        if (d2 < c0015aArr2[0].c) {
            d2 = c0015aArr2[0].c;
        } else if (d2 > c0015aArr2[c0015aArr2.length - 1].f625d) {
            d2 = c0015aArr2[c0015aArr2.length - 1].f625d;
        }
        while (true) {
            C0015a[] c0015aArr3 = this.b;
            if (i2 >= c0015aArr3.length) {
                return Double.NaN;
            }
            if (d2 <= c0015aArr3[i2].f625d) {
                if (c0015aArr3[i2].r) {
                    return i == 0 ? c0015aArr3[i2].f(d2) : c0015aArr3[i2].g(d2);
                }
                c0015aArr3[i2].k(d2);
                return i == 0 ? this.b[i2].h() : this.b[i2].i();
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public void d(double d2, double[] dArr) {
        if (this.c) {
            C0015a[] c0015aArr = this.b;
            if (d2 < c0015aArr[0].c) {
                double d3 = c0015aArr[0].c;
                double d4 = d2 - c0015aArr[0].c;
                if (c0015aArr[0].r) {
                    dArr[0] = c0015aArr[0].f(d3) + (this.b[0].d(d3) * d4);
                    dArr[1] = this.b[0].g(d3) + (d4 * this.b[0].e(d3));
                    return;
                } else {
                    c0015aArr[0].k(d3);
                    dArr[0] = this.b[0].h() + (this.b[0].b() * d4);
                    dArr[1] = this.b[0].i() + (d4 * this.b[0].c());
                    return;
                }
            }
            if (d2 > c0015aArr[c0015aArr.length - 1].f625d) {
                double d5 = c0015aArr[c0015aArr.length - 1].f625d;
                double d6 = d2 - d5;
                int length = c0015aArr.length - 1;
                if (c0015aArr[length].r) {
                    dArr[0] = c0015aArr[length].f(d5) + (this.b[length].d(d5) * d6);
                    dArr[1] = this.b[length].g(d5) + (d6 * this.b[length].e(d5));
                    return;
                } else {
                    c0015aArr[length].k(d2);
                    dArr[0] = this.b[length].h() + (this.b[length].b() * d6);
                    dArr[1] = this.b[length].i() + (d6 * this.b[length].c());
                    return;
                }
            }
        } else {
            C0015a[] c0015aArr2 = this.b;
            if (d2 < c0015aArr2[0].c) {
                d2 = c0015aArr2[0].c;
            }
            if (d2 > c0015aArr2[c0015aArr2.length - 1].f625d) {
                d2 = c0015aArr2[c0015aArr2.length - 1].f625d;
            }
        }
        int i = 0;
        while (true) {
            C0015a[] c0015aArr3 = this.b;
            if (i >= c0015aArr3.length) {
                return;
            }
            if (d2 <= c0015aArr3[i].f625d) {
                if (c0015aArr3[i].r) {
                    dArr[0] = c0015aArr3[i].f(d2);
                    dArr[1] = this.b[i].g(d2);
                    return;
                } else {
                    c0015aArr3[i].k(d2);
                    dArr[0] = this.b[i].h();
                    dArr[1] = this.b[i].i();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public void e(double d2, float[] fArr) {
        if (this.c) {
            C0015a[] c0015aArr = this.b;
            if (d2 < c0015aArr[0].c) {
                double d3 = c0015aArr[0].c;
                double d4 = d2 - c0015aArr[0].c;
                if (c0015aArr[0].r) {
                    fArr[0] = (float) (c0015aArr[0].f(d3) + (this.b[0].d(d3) * d4));
                    fArr[1] = (float) (this.b[0].g(d3) + (d4 * this.b[0].e(d3)));
                    return;
                } else {
                    c0015aArr[0].k(d3);
                    fArr[0] = (float) (this.b[0].h() + (this.b[0].b() * d4));
                    fArr[1] = (float) (this.b[0].i() + (d4 * this.b[0].c()));
                    return;
                }
            }
            if (d2 > c0015aArr[c0015aArr.length - 1].f625d) {
                double d5 = c0015aArr[c0015aArr.length - 1].f625d;
                double d6 = d2 - d5;
                int length = c0015aArr.length - 1;
                if (c0015aArr[length].r) {
                    fArr[0] = (float) (c0015aArr[length].f(d5) + (this.b[length].d(d5) * d6));
                    fArr[1] = (float) (this.b[length].g(d5) + (d6 * this.b[length].e(d5)));
                    return;
                } else {
                    c0015aArr[length].k(d2);
                    fArr[0] = (float) this.b[length].h();
                    fArr[1] = (float) this.b[length].i();
                    return;
                }
            }
        } else {
            C0015a[] c0015aArr2 = this.b;
            if (d2 < c0015aArr2[0].c) {
                d2 = c0015aArr2[0].c;
            } else if (d2 > c0015aArr2[c0015aArr2.length - 1].f625d) {
                d2 = c0015aArr2[c0015aArr2.length - 1].f625d;
            }
        }
        int i = 0;
        while (true) {
            C0015a[] c0015aArr3 = this.b;
            if (i >= c0015aArr3.length) {
                return;
            }
            if (d2 <= c0015aArr3[i].f625d) {
                if (c0015aArr3[i].r) {
                    fArr[0] = (float) c0015aArr3[i].f(d2);
                    fArr[1] = (float) this.b[i].g(d2);
                    return;
                } else {
                    c0015aArr3[i].k(d2);
                    fArr[0] = (float) this.b[i].h();
                    fArr[1] = (float) this.b[i].i();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public void f(double d2, double[] dArr) {
        C0015a[] c0015aArr = this.b;
        if (d2 < c0015aArr[0].c) {
            d2 = c0015aArr[0].c;
        } else if (d2 > c0015aArr[c0015aArr.length - 1].f625d) {
            d2 = c0015aArr[c0015aArr.length - 1].f625d;
        }
        int i = 0;
        while (true) {
            C0015a[] c0015aArr2 = this.b;
            if (i >= c0015aArr2.length) {
                return;
            }
            if (d2 <= c0015aArr2[i].f625d) {
                if (c0015aArr2[i].r) {
                    dArr[0] = c0015aArr2[i].d(d2);
                    dArr[1] = this.b[i].e(d2);
                    return;
                } else {
                    c0015aArr2[i].k(d2);
                    dArr[0] = this.b[i].b();
                    dArr[1] = this.b[i].c();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.a.b
    public double[] g() {
        return this.f623a;
    }
}
