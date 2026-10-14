package cn.mucang.android.jiakaoyi.signal.i;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f5754a;
    private double b;
    private double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f5755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f5756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f5757f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f5758g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f5759h;
    private double i;
    private double j;
    private double k;
    private double l;
    private double m;
    private double n;
    private double o;
    private double p;
    private double q;

    public c(int i, double d2, double d3, double d4, double d5) {
        if (i == 0) {
            this.f5754a = 6378245.0d;
            this.b = 6356863.0188d;
        } else if (i == 1) {
            this.f5754a = 6378140.0d;
            this.b = 6356755.2882d;
        }
        if (i == 2) {
            this.f5754a = 6378137.0d;
            this.b = 6356752.3142d;
        }
        if (i == 3) {
            this.f5754a = 6378137.0d;
            this.b = 6356752.31414d;
        }
        double d6 = this.f5754a;
        double d7 = (d6 - this.b) / d6;
        this.c = d7;
        double dSqrt = Math.sqrt((2.0d * d7) - (d7 * d7));
        this.f5755d = dSqrt;
        double dSqrt2 = dSqrt / Math.sqrt(1.0d - (dSqrt * dSqrt));
        this.f5756e = dSqrt2;
        this.f5759h = d2;
        this.i = d3;
        this.j = 1.0d;
        this.f5757f = d4;
        this.f5758g = d5;
        double d8 = dSqrt2 * dSqrt2;
        this.k = d8;
        double d9 = d8 * d8;
        this.l = d9;
        double d10 = d9 * d8;
        this.m = d10;
        this.n = d10 * d8;
        double d11 = this.f5755d;
        double d12 = d11 * d11;
        this.o = d12;
        double d13 = d12 * d12;
        this.p = d13;
        this.q = d13 * d12;
    }

    public static c a(double d2) {
        return new c(2, d2, 0.0d, 0.0d, 0.0d);
    }

    public Gps b(Pos pos) {
        double[] dArrC = c(pos.y * 0.01d, pos.x * 0.01d);
        return new Gps(dArrC[1], dArrC[0], pos.z * 0.01d);
    }

    public double[] c(double d2, double d3) {
        double dSqrt = Math.sqrt(1.0d - this.o);
        double d4 = (1.0d - dSqrt) / (dSqrt + 1.0d);
        double d5 = ((d3 - this.f5758g) / this.j) / (this.f5754a * (((1.0d - (this.o / 4.0d)) - ((this.p * 3.0d) / 64.0d)) - ((this.q * 5.0d) / 256.0d)));
        double d6 = d4 * d4;
        double d7 = d6 * d4;
        double d8 = d7 * d4;
        double dSin = ((((d4 * 3.0d) / 2.0d) - ((27.0d * d7) / 32.0d)) * Math.sin(d5 * 2.0d)) + d5 + ((((d6 * 21.0d) / 16.0d) - ((55.0d * d8) / 32.0d)) * Math.sin(d5 * 4.0d)) + (((d7 * 151.0d) / 96.0d) * Math.sin(d5 * 6.0d)) + (d8 * 2.142578125d * Math.sin(d5 * 8.0d));
        double dSin2 = Math.sin(dSin);
        double dCos = Math.cos(dSin);
        double d9 = this.f5755d * dSin2;
        double d10 = 1.0d - (d9 * d9);
        double dSqrt2 = (this.f5754a * (1.0d - this.o)) / Math.sqrt((d10 * d10) * d10);
        double dSqrt3 = this.f5754a / Math.sqrt(d10);
        double dTan = Math.tan(dSin);
        double d11 = dTan * dTan;
        double d12 = (d2 - this.f5757f) / (this.j * dSqrt3);
        double d13 = this.k;
        double d14 = d13 * dCos * dCos;
        double d15 = d12 * d12;
        double d16 = d15 * d15;
        double d17 = d16 * d15;
        double d18 = d11 * d11;
        double d19 = d14 * d14;
        double d20 = (d15 / 2.0d) - ((((((((d11 * 3.0d) + 5.0d) + (10.0d * d14)) - ((d11 * 9.0d) * d14)) - (4.0d * d19)) - (9.0d * d13)) * d16) / 24.0d);
        double d21 = d19 * 3.0d;
        return new double[]{((((this.f5759h * 3.141592653589793d) / 180.0d) + ((1.0d / dCos) * ((d12 - (((((d11 * 2.0d) + 1.0d) + d14) * (d15 * d12)) / 6.0d)) + (((((((5.0d - (d14 * 2.0d)) + (d11 * 28.0d)) - d21) + (d13 * 8.0d)) + (d18 * 24.0d)) * (d16 * d12)) / 120.0d)))) * 180.0d) / 3.141592653589793d, (((dSin - (((dSqrt3 * dTan) / dSqrt2) * (d20 + (((((((90.0d * d11) + 61.0d) + (45.0d * d18)) - (256.0d * d13)) - d21) * d17) / 720.0d)))) * 180.0d) / 3.141592653589793d) + this.i};
    }

    public Pos d(Gps gps) {
        double[] dArrE = e(gps.longitude, gps.latitude);
        return new Pos(dArrE[1] * 100.0d, dArrE[0] * 100.0d, gps.altitude * 100.0d);
    }

    public double[] e(double d2, double d3) {
        double d4 = ((d3 - this.i) * 3.141592653589793d) / 180.0d;
        double d5 = ((d2 - this.f5759h) * 3.141592653589793d) / 180.0d;
        double dSin = Math.sin(d4);
        double dCos = Math.cos(d4);
        double d6 = this.f5755d * dSin;
        double dSqrt = this.f5754a / Math.sqrt(1.0d - (d6 * d6));
        double d7 = this.f5754a;
        double d8 = (d7 * d7) / this.b;
        double d9 = 1.0d - ((this.k * 3.0d) / 4.0d);
        double d10 = this.l;
        double d11 = this.m;
        double d12 = this.n;
        double d13 = ((d9 + ((45.0d * d10) / 64.0d)) - ((175.0d * d11) / 256.0d)) + ((11025.0d * d12) / 16384.0d);
        double d14 = ((d10 * 0.46875d) - (0.4557291666666667d * d11)) + (0.4486083984375d * d12);
        double d15 = (0.0d - (d11 * 0.3645833333333333d)) + (0.35888671875d * d12);
        double d16 = dCos * dCos;
        double d17 = d16 * dCos;
        double d18 = d16 * d17;
        double d19 = d8 * ((d13 * d4) + ((((d13 - 1.0d) * dCos) + (d14 * d17) + (d15 * d18) + (d12 * 0.3076171875d * d16 * d18)) * dSin));
        double dTan = Math.tan(d4);
        double d20 = this.f5756e * dCos;
        double d21 = d5 * d5;
        double d22 = d21 * d5;
        double d23 = d21 * d21;
        double d24 = d23 * d5;
        double d25 = dTan * dTan;
        double d26 = d25 * d25;
        double d27 = d20 * d20;
        return new double[]{(d5 * dSqrt * dCos) + (((d22 * dSqrt) / 6.0d) * d17 * ((1.0d - d25) + d27)) + (((d24 * dSqrt) / 120.0d) * d18 * ((((5.0d - (18.0d * d25)) + d26) + (14.0d * d27)) - ((d27 * 58.0d) * d25))) + this.f5757f, d19 + ((d21 / 2.0d) * dSqrt * dSin * dCos) + (((((d23 * dSqrt) * dSin) * d17) / 24.0d) * ((5.0d - d25) + (9.0d * d27) + (d27 * d27 * 4.0d))) + ((((((d21 * d23) * dSqrt) * dSin) * d18) * ((61.0d - (d25 * 58.0d)) + d26)) / 720.0d) + this.f5758g};
    }
}
