package jama;

import jama.a.a;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes6.dex */
public class EigenvalueDecomposition implements Serializable {
    private double[][] H;
    private double[][] V;
    private transient double cdivi;
    private transient double cdivr;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double[] f14579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double[] f14580e;
    private boolean issymmetric;
    private int n;
    private double[] ort;

    public EigenvalueDecomposition(Matrix matrix) {
        int i;
        boolean z;
        double[][] array = matrix.getArray();
        int columnDimension = matrix.getColumnDimension();
        this.n = columnDimension;
        this.V = (double[][]) Array.newInstance((Class<?>) double.class, columnDimension, columnDimension);
        int i2 = this.n;
        this.f14579d = new double[i2];
        this.f14580e = new double[i2];
        this.issymmetric = true;
        int i3 = 0;
        while (true) {
            i = this.n;
            boolean z2 = i3 < i;
            z = this.issymmetric;
            if (!z2 || !z) {
                break;
            }
            int i4 = 0;
            while (true) {
                if ((i4 < this.n) & this.issymmetric) {
                    this.issymmetric = array[i4][i3] == array[i3][i4];
                    i4++;
                }
            }
            i3++;
        }
        if (z) {
            for (int i5 = 0; i5 < this.n; i5++) {
                for (int i6 = 0; i6 < this.n; i6++) {
                    this.V[i5][i6] = array[i5][i6];
                }
            }
            tred2();
            tql2();
            return;
        }
        this.H = (double[][]) Array.newInstance((Class<?>) double.class, i, i);
        this.ort = new double[this.n];
        for (int i7 = 0; i7 < this.n; i7++) {
            for (int i8 = 0; i8 < this.n; i8++) {
                this.H[i8][i7] = array[i8][i7];
            }
        }
        orthes();
        hqr2();
    }

    private void cdiv(double d2, double d3, double d4, double d5) {
        if (Math.abs(d4) > Math.abs(d5)) {
            double d6 = d5 / d4;
            double d7 = d4 + (d5 * d6);
            this.cdivr = ((d6 * d3) + d2) / d7;
            this.cdivi = (d3 - (d6 * d2)) / d7;
            return;
        }
        double d8 = d4 / d5;
        double d9 = d5 + (d4 * d8);
        this.cdivr = ((d8 * d2) + d3) / d9;
        this.cdivi = ((d8 * d3) - d2) / d9;
    }

    /* JADX WARN: Code duplicated, block: B:122:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:124:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:129:0x040c  */
    /* JADX WARN: Code duplicated, block: B:131:0x0420  */
    /* JADX WARN: Code duplicated, block: B:135:0x0452  */
    /* JADX WARN: Code duplicated, block: B:137:0x0466  */
    /* JADX WARN: Code duplicated, block: B:271:0x03e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x0436 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x047c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0269 A[PHI: r21
      0x0269: PHI (r21v19 double) = (r21v18 double), (r21v49 double) binds: [B:66:0x022d, B:68:0x023b] A[DONT_GENERATE, DONT_INLINE]] */
    private void hqr2() {
        int i;
        int i2;
        int i3;
        int i4;
        double d2;
        double d3;
        double d4;
        int i5;
        int i6;
        int i7;
        double d5;
        double d6;
        double d7;
        int i8;
        double d8;
        double d9;
        double d10;
        int i9;
        int i10;
        int i11;
        double[][] dArr;
        double[][] dArr2;
        double[][] dArr3;
        int i12 = this.n;
        int i13 = i12 - 1;
        double d11 = 2.0d;
        double dPow = Math.pow(2.0d, -52.0d);
        double dAbs = 0.0d;
        int i14 = 0;
        while (true) {
            if (i14 >= i12) {
                break;
            }
            if ((i14 < 0) | (i14 > i13)) {
                this.f14579d[i14] = this.H[i14][i14];
                this.f14580e[i14] = 0.0d;
            }
            for (int iMax = Math.max(i14 - 1, 0); iMax < i12; iMax++) {
                dAbs += Math.abs(this.H[i14][iMax]);
            }
            i14++;
        }
        int i15 = i13;
        double d12 = 0.0d;
        double d13 = 0.0d;
        double dAbs2 = 0.0d;
        double dSqrt = 0.0d;
        double d14 = 0.0d;
        double d15 = 0.0d;
        int i16 = 0;
        while (i15 >= 0) {
            int i17 = i15;
            while (i17 > 0) {
                int i18 = i17 - 1;
                double dAbs3 = Math.abs(this.H[i18][i18]) + Math.abs(this.H[i17][i17]);
                if (dAbs3 == 0.0d) {
                    dAbs3 = dAbs;
                }
                if (Math.abs(this.H[i17][i18]) < dPow * dAbs3) {
                    dAbs2 = dAbs3;
                    break;
                } else {
                    i17--;
                    dAbs2 = dAbs3;
                }
            }
            if (i17 == i15) {
                double[][] dArr4 = this.H;
                dArr4[i15][i15] = dArr4[i15][i15] + d12;
                this.f14579d[i15] = dArr4[i15][i15];
                this.f14580e[i15] = 0.0d;
                i15--;
            } else {
                int i19 = i15 - 1;
                if (i17 == i19) {
                    double[][] dArr5 = this.H;
                    double d16 = dArr5[i15][i19] * dArr5[i19][i15];
                    d14 = (dArr5[i19][i19] - dArr5[i15][i15]) / d11;
                    double d17 = (d14 * d14) + d16;
                    double dSqrt2 = Math.sqrt(Math.abs(d17));
                    double[][] dArr6 = this.H;
                    dArr6[i15][i15] = dArr6[i15][i15] + d12;
                    dArr6[i19][i19] = dArr6[i19][i19] + d12;
                    double d18 = dArr6[i15][i15];
                    if (d17 >= 0.0d) {
                        double d19 = d14 >= 0.0d ? d14 + dSqrt2 : d14 - dSqrt2;
                        double[] dArr7 = this.f14579d;
                        dArr7[i19] = d18 + d19;
                        dArr7[i15] = dArr7[i19];
                        if (d19 != 0.0d) {
                            dArr7[i15] = d18 - (d16 / d19);
                        }
                        double[] dArr8 = this.f14580e;
                        dArr8[i19] = 0.0d;
                        dArr8[i15] = 0.0d;
                        double d20 = dArr6[i15][i19];
                        dAbs2 = Math.abs(d20) + Math.abs(d19);
                        double d21 = d20 / dAbs2;
                        double d22 = d19 / dAbs2;
                        dSqrt = Math.sqrt((d21 * d21) + (d22 * d22));
                        double d23 = d21 / dSqrt;
                        double d24 = d22 / dSqrt;
                        for (int i20 = i19; i20 < i12; i20++) {
                            double[][] dArr9 = this.H;
                            d19 = dArr9[i19][i20];
                            dArr9[i19][i20] = (d24 * d19) + (dArr9[i15][i20] * d23);
                            dArr9[i15][i20] = (dArr9[i15][i20] * d24) - (d23 * d19);
                        }
                        for (int i21 = 0; i21 <= i15; i21++) {
                            double[][] dArr10 = this.H;
                            d19 = dArr10[i21][i19];
                            dArr10[i21][i19] = (d24 * d19) + (dArr10[i21][i15] * d23);
                            dArr10[i21][i15] = (dArr10[i21][i15] * d24) - (d23 * d19);
                        }
                        for (int i22 = 0; i22 <= i13; i22++) {
                            double[][] dArr11 = this.V;
                            d19 = dArr11[i22][i19];
                            dArr11[i22][i19] = (d24 * d19) + (dArr11[i22][i15] * d23);
                            dArr11[i22][i15] = (dArr11[i22][i15] * d24) - (d23 * d19);
                        }
                        d15 = d24;
                        d13 = d19;
                        d14 = d23;
                    } else {
                        double[] dArr12 = this.f14579d;
                        double d25 = d18 + d14;
                        dArr12[i19] = d25;
                        dArr12[i15] = d25;
                        double[] dArr13 = this.f14580e;
                        dArr13[i19] = dSqrt2;
                        dArr13[i15] = -dSqrt2;
                        d15 = d17;
                        d13 = dSqrt2;
                    }
                    i15 -= 2;
                } else {
                    double[][] dArr14 = this.H;
                    double d26 = dArr14[i15][i15];
                    if (i17 < i15) {
                        d5 = dArr14[i19][i19];
                        d6 = dArr14[i15][i19] * dArr14[i19][i15];
                    } else {
                        d5 = 0.0d;
                        d6 = 0.0d;
                    }
                    if (i16 == 10) {
                        d12 += d26;
                        for (int i23 = 0; i23 <= i15; i23++) {
                            double[] dArr15 = this.H[i23];
                            dArr15[i23] = dArr15[i23] - d26;
                        }
                        dAbs2 = Math.abs(this.H[i15][i19]) + Math.abs(this.H[i19][i15 - 2]);
                        d26 = dAbs2 * 0.75d;
                        d6 = (-0.4375d) * dAbs2 * dAbs2;
                        d5 = d26;
                    }
                    if (i16 == 30) {
                        double d27 = (d5 - d26) / 2.0d;
                        dAbs2 = (d27 * d27) + d6;
                        if (dAbs2 > 0.0d) {
                            double dSqrt3 = Math.sqrt(dAbs2);
                            if (d5 < d26) {
                                dSqrt3 = -dSqrt3;
                            }
                            dAbs2 = d26 - (d6 / (d27 + dSqrt3));
                            for (int i24 = 0; i24 <= i15; i24++) {
                                double[] dArr16 = this.H[i24];
                                dArr16[i24] = dArr16[i24] - dAbs2;
                            }
                            d12 += dAbs2;
                            d26 = 0.964d;
                            d5 = 0.964d;
                            d6 = 0.964d;
                        }
                    }
                    i16++;
                    int i25 = i15 - 2;
                    while (i25 >= i17) {
                        double[][] dArr17 = this.H;
                        d13 = dArr17[i25][i25];
                        double d28 = d26 - d13;
                        double d29 = d5 - d13;
                        int i26 = i25 + 1;
                        double d30 = (((d28 * d29) - d6) / dArr17[i26][i25]) + dArr17[i25][i26];
                        double d31 = ((dArr17[i26][i26] - d13) - d28) - d29;
                        double d32 = dArr17[i25 + 2][i26];
                        dAbs2 = Math.abs(d30) + Math.abs(d31) + Math.abs(d32);
                        double d33 = d30 / dAbs2;
                        d15 = d31 / dAbs2;
                        double d34 = d32 / dAbs2;
                        if (i25 != i17) {
                            int i27 = i25 - 1;
                            if (Math.abs(this.H[i25][i27]) * (Math.abs(d15) + Math.abs(d34)) >= Math.abs(d33) * (Math.abs(this.H[i27][i27]) + Math.abs(d13) + Math.abs(this.H[i26][i26])) * dPow) {
                                i25--;
                                d14 = d33;
                                dSqrt = d34;
                            }
                        }
                        d14 = d33;
                        dSqrt = d34;
                        break;
                    }
                    int i28 = i25 + 2;
                    for (int i29 = i28; i29 <= i15; i29++) {
                        double[][] dArr18 = this.H;
                        dArr18[i29][i29 - 2] = 0.0d;
                        if (i29 > i28) {
                            dArr18[i29][i29 - 3] = 0.0d;
                        }
                    }
                    int i30 = i25;
                    while (i30 <= i19) {
                        boolean z = i30 != i19;
                        if (i30 != i25) {
                            double[][] dArr19 = this.H;
                            int i31 = i30 - 1;
                            double d35 = dArr19[i30][i31];
                            double d36 = dArr19[i30 + 1][i31];
                            double d37 = z ? dArr19[i30 + 2][i31] : 0.0d;
                            double dAbs4 = Math.abs(d35) + Math.abs(d36) + Math.abs(d37);
                            if (dAbs4 != 0.0d) {
                                d35 /= dAbs4;
                                d36 /= dAbs4;
                                d37 /= dAbs4;
                            }
                            d15 = d36;
                            d14 = d35;
                            dSqrt = d37;
                            d26 = dAbs4;
                        }
                        if (d26 == 0.0d) {
                            break;
                        }
                        double dSqrt4 = Math.sqrt((d14 * d14) + (d15 * d15) + (dSqrt * dSqrt));
                        if (d14 < 0.0d) {
                            dSqrt4 = -dSqrt4;
                        }
                        if (dSqrt4 != 0.0d) {
                            if (i30 != i25) {
                                d7 = d12;
                                d8 = dPow;
                                this.H[i30][i30 - 1] = (-dSqrt4) * d26;
                            } else {
                                d7 = d12;
                                d8 = dPow;
                                if (i17 != i25) {
                                    double[][] dArr20 = this.H;
                                    int i32 = i30 - 1;
                                    dArr20[i30][i32] = -dArr20[i30][i32];
                                }
                                d14 += dSqrt4;
                                d9 = d14 / dSqrt4;
                                d10 = d15 / dSqrt4;
                                d13 = dSqrt / dSqrt4;
                                d15 /= d14;
                                dSqrt /= d14;
                                i9 = i30;
                                while (i9 < i12) {
                                    int i33 = i17;
                                    dArr3 = this.H;
                                    int i34 = i30 + 1;
                                    d14 = dArr3[i30][i9] + (dArr3[i34][i9] * d15);
                                    if (z) {
                                        int i35 = i30 + 2;
                                        d14 += dArr3[i35][i9] * dSqrt;
                                        dArr3[i35][i9] = dArr3[i35][i9] - (d14 * d13);
                                    }
                                    dArr3[i30][i9] = dArr3[i30][i9] - (d14 * d9);
                                    dArr3[i34][i9] = dArr3[i34][i9] - (d14 * d10);
                                    i9++;
                                    i17 = i33;
                                }
                                i8 = i17;
                                for (i10 = 0; i10 <= Math.min(i15, i30 + 3); i10++) {
                                    dArr2 = this.H;
                                    int i36 = i30 + 1;
                                    d14 = (dArr2[i10][i30] * d9) + (dArr2[i10][i36] * d10);
                                    if (z) {
                                        int i37 = i30 + 2;
                                        d14 += dArr2[i10][i37] * d13;
                                        dArr2[i10][i37] = dArr2[i10][i37] - (d14 * dSqrt);
                                    }
                                    dArr2[i10][i30] = dArr2[i10][i30] - d14;
                                    dArr2[i10][i36] = dArr2[i10][i36] - (d14 * d15);
                                }
                                for (i11 = 0; i11 <= i13; i11++) {
                                    dArr = this.V;
                                    int i38 = i30 + 1;
                                    d14 = (dArr[i11][i30] * d9) + (dArr[i11][i38] * d10);
                                    if (z) {
                                        int i39 = i30 + 2;
                                        d14 += dArr[i11][i39] * d13;
                                        dArr[i11][i39] = dArr[i11][i39] - (d14 * dSqrt);
                                    }
                                    dArr[i11][i30] = dArr[i11][i30] - d14;
                                    dArr[i11][i38] = dArr[i11][i38] - (d14 * d15);
                                }
                                d26 = d9;
                            }
                            d14 += dSqrt4;
                            d9 = d14 / dSqrt4;
                            d10 = d15 / dSqrt4;
                            d13 = dSqrt / dSqrt4;
                            d15 /= d14;
                            dSqrt /= d14;
                            i9 = i30;
                            while (i9 < i12) {
                                int i310 = i17;
                                dArr3 = this.H;
                                int i311 = i30 + 1;
                                d14 = dArr3[i30][i9] + (dArr3[i311][i9] * d15);
                                if (z) {
                                    int i312 = i30 + 2;
                                    d14 += dArr3[i312][i9] * dSqrt;
                                    dArr3[i312][i9] = dArr3[i312][i9] - (d14 * d13);
                                }
                                dArr3[i30][i9] = dArr3[i30][i9] - (d14 * d9);
                                dArr3[i311][i9] = dArr3[i311][i9] - (d14 * d10);
                                i9++;
                                i17 = i310;
                            }
                            i8 = i17;
                            while (i10 <= Math.min(i15, i30 + 3)) {
                                dArr2 = this.H;
                                int i313 = i30 + 1;
                                d14 = (dArr2[i10][i30] * d9) + (dArr2[i10][i313] * d10);
                                if (z) {
                                    int i314 = i30 + 2;
                                    d14 += dArr2[i10][i314] * d13;
                                    dArr2[i10][i314] = dArr2[i10][i314] - (d14 * dSqrt);
                                }
                                dArr2[i10][i30] = dArr2[i10][i30] - d14;
                                dArr2[i10][i313] = dArr2[i10][i313] - (d14 * d15);
                            }
                            while (i11 <= i13) {
                                dArr = this.V;
                                int i315 = i30 + 1;
                                d14 = (dArr[i11][i30] * d9) + (dArr[i11][i315] * d10);
                                if (z) {
                                    int i316 = i30 + 2;
                                    d14 += dArr[i11][i316] * d13;
                                    dArr[i11][i316] = dArr[i11][i316] - (d14 * dSqrt);
                                }
                                dArr[i11][i30] = dArr[i11][i30] - d14;
                                dArr[i11][i315] = dArr[i11][i315] - (d14 * d15);
                            }
                            d26 = d9;
                        } else {
                            d7 = d12;
                            i25 = i25;
                            i8 = i17;
                            d8 = dPow;
                            i16 = i16;
                        }
                        i30++;
                        dAbs2 = dSqrt4;
                        i16 = i16;
                        d12 = d7;
                        dPow = d8;
                        i25 = i25;
                        i17 = i8;
                    }
                    d13 = d13;
                }
                dPow = dPow;
                d11 = 2.0d;
            }
            dPow = dPow;
            i16 = 0;
            dPow = dPow;
            d11 = 2.0d;
        }
        double d38 = d13;
        double d39 = dPow;
        if (dAbs == 0.0d) {
            return;
        }
        int i40 = i13;
        while (i40 >= 0) {
            double d40 = this.f14579d[i40];
            double d41 = this.f14580e[i40];
            if (d41 == 0.0d) {
                this.H[i40][i40] = 1.0d;
                int i41 = i40 - 1;
                int i42 = i40;
                double d42 = dAbs2;
                while (i41 >= 0) {
                    double d43 = this.H[i41][i41] - d40;
                    double d44 = 0.0d;
                    for (int i43 = i42; i43 <= i40; i43++) {
                        double[][] dArr21 = this.H;
                        d44 += dArr21[i41][i43] * dArr21[i43][i40];
                    }
                    double[] dArr22 = this.f14580e;
                    if (dArr22[i41] < 0.0d) {
                        d38 = d43;
                        d42 = d44;
                        i6 = i12;
                        i7 = i13;
                    } else {
                        if (dArr22[i41] != 0.0d) {
                            i6 = i12;
                            i7 = i13;
                            double[][] dArr23 = this.H;
                            int i44 = i41 + 1;
                            double d45 = dArr23[i41][i44];
                            double d46 = dArr23[i44][i41];
                            double[] dArr24 = this.f14579d;
                            double d47 = ((d45 * d42) - (d38 * d44)) / (((dArr24[i41] - d40) * (dArr24[i41] - d40)) + (dArr22[i41] * dArr22[i41]));
                            dArr23[i41][i40] = d47;
                            if (Math.abs(d45) > Math.abs(d38)) {
                                this.H[i44][i40] = ((-d44) - (d43 * d47)) / d45;
                            } else {
                                this.H[i44][i40] = ((-d42) - (d46 * d47)) / d38;
                            }
                        } else if (d43 != 0.0d) {
                            i6 = i12;
                            i7 = i13;
                            this.H[i41][i40] = (-d44) / d43;
                        } else {
                            i6 = i12;
                            i7 = i13;
                            this.H[i41][i40] = (-d44) / (d39 * dAbs);
                        }
                        double dAbs5 = Math.abs(this.H[i41][i40]);
                        if (d39 * dAbs5 * dAbs5 > 1.0d) {
                            for (int i45 = i41; i45 <= i40; i45++) {
                                double[][] dArr25 = this.H;
                                dArr25[i45][i40] = dArr25[i45][i40] / dAbs5;
                            }
                        }
                        i42 = i41;
                    }
                    i41--;
                    dSqrt = d44;
                    i12 = i6;
                    i13 = i7;
                }
                i = i12;
                i2 = i13;
                dAbs2 = d42;
            } else {
                i = i12;
                i2 = i13;
                if (d41 < 0.0d) {
                    int i46 = i40 - 1;
                    if (Math.abs(this.H[i40][i46]) > Math.abs(this.H[i46][i40])) {
                        double[][] dArr26 = this.H;
                        dArr26[i46][i46] = d41 / dArr26[i40][i46];
                        dArr26[i46][i40] = (-(dArr26[i40][i40] - d40)) / dArr26[i40][i46];
                    } else {
                        double[][] dArr27 = this.H;
                        cdiv(0.0d, -dArr27[i46][i40], dArr27[i46][i46] - d40, d41);
                        double[][] dArr28 = this.H;
                        dArr28[i46][i46] = this.cdivr;
                        dArr28[i46][i40] = this.cdivi;
                    }
                    double[][] dArr29 = this.H;
                    dArr29[i40][i46] = 0.0d;
                    dArr29[i40][i40] = 1.0d;
                    double d48 = dAbs2;
                    double d49 = dSqrt;
                    int i47 = i40 - 2;
                    int i48 = i46;
                    while (i47 >= 0) {
                        double d50 = d48;
                        double d51 = 0.0d;
                        d48 = 0.0d;
                        for (int i49 = i48; i49 <= i40; i49++) {
                            double[][] dArr30 = this.H;
                            d51 += dArr30[i47][i49] * dArr30[i49][i46];
                            d48 += dArr30[i47][i49] * dArr30[i49][i40];
                        }
                        double[][] dArr31 = this.H;
                        double d52 = dArr31[i47][i47] - d40;
                        double[] dArr32 = this.f14580e;
                        if (dArr32[i47] < 0.0d) {
                            d49 = d51;
                            i5 = i40;
                            d2 = d40;
                            d38 = d52;
                        } else {
                            if (dArr32[i47] == 0.0d) {
                                cdiv(-d51, -d48, d52, d41);
                                double[][] dArr33 = this.H;
                                dArr33[i47][i46] = this.cdivr;
                                dArr33[i47][i40] = this.cdivi;
                                i4 = i40;
                                d3 = d49;
                                d2 = d40;
                                d4 = d50;
                            } else {
                                double d53 = d49;
                                int i50 = i47 + 1;
                                double d54 = dArr31[i47][i50];
                                double d55 = dArr31[i50][i47];
                                double[] dArr34 = this.f14579d;
                                double dAbs6 = (((dArr34[i47] - d40) * (dArr34[i47] - d40)) + (dArr32[i47] * dArr32[i47])) - (d41 * d41);
                                double d56 = (dArr34[i47] - d40) * 2.0d * d41;
                                if ((dAbs6 == 0.0d) & (d56 == 0.0d)) {
                                    dAbs6 = d39 * dAbs * (Math.abs(d52) + Math.abs(d41) + Math.abs(d54) + Math.abs(d55) + Math.abs(d38));
                                }
                                i4 = i40;
                                d2 = d40;
                                double d57 = d51;
                                double d58 = d48;
                                cdiv(((d54 * d53) - (d38 * d51)) + (d41 * d48), ((d54 * d50) - (d38 * d48)) - (d41 * d51), dAbs6, d56);
                                double[][] dArr35 = this.H;
                                dArr35[i47][i46] = this.cdivr;
                                dArr35[i47][i4] = this.cdivi;
                                if (Math.abs(d54) > Math.abs(d38) + Math.abs(d41)) {
                                    double[][] dArr36 = this.H;
                                    dArr36[i50][i46] = (((-d57) - (dArr36[i47][i46] * d52)) + (dArr36[i47][i4] * d41)) / d54;
                                    dArr36[i50][i4] = (((-d58) - (d52 * dArr36[i47][i4])) - (dArr36[i47][i46] * d41)) / d54;
                                    d4 = d50;
                                    d3 = d53;
                                } else {
                                    d3 = d53;
                                    double[][] dArr37 = this.H;
                                    d4 = d50;
                                    cdiv((-d3) - (dArr37[i47][i46] * d55), (-d4) - (d55 * dArr37[i47][i4]), d38, d41);
                                    double[][] dArr38 = this.H;
                                    dArr38[i50][i46] = this.cdivr;
                                    dArr38[i50][i4] = this.cdivi;
                                }
                            }
                            double dMax = Math.max(Math.abs(this.H[i47][i46]), Math.abs(this.H[i47][i4]));
                            if (d39 * dMax * dMax > 1.0d) {
                                i5 = i4;
                                for (int i51 = i47; i51 <= i5; i51++) {
                                    double[][] dArr39 = this.H;
                                    dArr39[i51][i46] = dArr39[i51][i46] / dMax;
                                    dArr39[i51][i5] = dArr39[i51][i5] / dMax;
                                }
                            } else {
                                i5 = i4;
                            }
                            d49 = d3;
                            d48 = d4;
                            i48 = i47;
                        }
                        i47--;
                        i40 = i5;
                        d40 = d2;
                    }
                    i3 = i40;
                    dSqrt = d49;
                    dAbs2 = d48;
                }
                i40 = i3 - 1;
                i12 = i;
                i13 = i2;
            }
            i3 = i40;
            i40 = i3 - 1;
            i12 = i;
            i13 = i2;
        }
        int i52 = i13;
        int i53 = i12;
        int i54 = 0;
        while (i54 < i53) {
            int i55 = i52;
            if ((i54 < 0) | (i54 > i55)) {
                for (int i56 = i54; i56 < i53; i56++) {
                    this.V[i54][i56] = this.H[i54][i56];
                }
            }
            i54++;
            i52 = i55;
        }
        int i57 = i52;
        for (int i58 = i57; i58 >= 0; i58--) {
            for (int i59 = 0; i59 <= i57; i59++) {
                double d59 = 0.0d;
                for (int i60 = 0; i60 <= Math.min(i58, i57); i60++) {
                    d59 += this.V[i59][i60] * this.H[i60][i58];
                }
                this.V[i59][i58] = d59;
            }
        }
    }

    private void orthes() {
        int i;
        int i2 = this.n - 1;
        int i3 = 1;
        while (true) {
            i = i2 - 1;
            double d2 = 0.0d;
            if (i3 > i) {
                break;
            }
            double dAbs = 0.0d;
            for (int i4 = i3; i4 <= i2; i4++) {
                dAbs += Math.abs(this.H[i4][i3 - 1]);
            }
            if (dAbs != 0.0d) {
                double d3 = 0.0d;
                for (int i5 = i2; i5 >= i3; i5--) {
                    double[] dArr = this.ort;
                    dArr[i5] = this.H[i5][i3 - 1] / dAbs;
                    d3 += dArr[i5] * dArr[i5];
                }
                double dSqrt = Math.sqrt(d3);
                double[] dArr2 = this.ort;
                if (dArr2[i3] > 0.0d) {
                    dSqrt = -dSqrt;
                }
                double d4 = d3 - (dArr2[i3] * dSqrt);
                dArr2[i3] = dArr2[i3] - dSqrt;
                int i6 = i3;
                while (i6 < this.n) {
                    double d5 = d2;
                    for (int i7 = i2; i7 >= i3; i7--) {
                        d5 += this.ort[i7] * this.H[i7][i6];
                    }
                    double d6 = d5 / d4;
                    for (int i8 = i3; i8 <= i2; i8++) {
                        double[] dArr3 = this.H[i8];
                        dArr3[i6] = dArr3[i6] - (this.ort[i8] * d6);
                    }
                    i6++;
                    d2 = 0.0d;
                }
                for (int i9 = 0; i9 <= i2; i9++) {
                    double d7 = 0.0d;
                    for (int i10 = i2; i10 >= i3; i10--) {
                        d7 += this.ort[i10] * this.H[i9][i10];
                    }
                    double d8 = d7 / d4;
                    for (int i11 = i3; i11 <= i2; i11++) {
                        double[] dArr4 = this.H[i9];
                        dArr4[i11] = dArr4[i11] - (this.ort[i11] * d8);
                    }
                }
                double[] dArr5 = this.ort;
                dArr5[i3] = dArr5[i3] * dAbs;
                this.H[i3][i3 - 1] = dAbs * dSqrt;
            }
            i3++;
        }
        int i12 = 0;
        while (i12 < this.n) {
            int i13 = 0;
            while (i13 < this.n) {
                this.V[i12][i13] = i12 == i13 ? 1.0d : 0.0d;
                i13++;
            }
            i12++;
        }
        while (i >= 1) {
            int i14 = i - 1;
            if (this.H[i][i14] != 0.0d) {
                for (int i15 = i + 1; i15 <= i2; i15++) {
                    this.ort[i15] = this.H[i15][i14];
                }
                for (int i16 = i; i16 <= i2; i16++) {
                    double d9 = 0.0d;
                    for (int i17 = i; i17 <= i2; i17++) {
                        d9 += this.ort[i17] * this.V[i17][i16];
                    }
                    double d10 = (d9 / this.ort[i]) / this.H[i][i14];
                    for (int i18 = i; i18 <= i2; i18++) {
                        double[] dArr6 = this.V[i18];
                        dArr6[i16] = dArr6[i16] + (this.ort[i18] * d10);
                    }
                }
            }
            i--;
        }
    }

    private void tql2() {
        int i;
        double d2;
        double d3;
        double d4;
        int i2 = 1;
        while (true) {
            i = this.n;
            if (i2 >= i) {
                break;
            }
            double[] dArr = this.f14580e;
            dArr[i2 - 1] = dArr[i2];
            i2++;
        }
        double d5 = 0.0d;
        this.f14580e[i - 1] = 0.0d;
        double d6 = 2.0d;
        double dPow = Math.pow(2.0d, -52.0d);
        double d7 = 0.0d;
        double d8 = 0.0d;
        int i3 = 0;
        while (i3 < this.n) {
            double dMax = Math.max(d7, Math.abs(this.f14579d[i3]) + Math.abs(this.f14580e[i3]));
            int i4 = i3;
            while (i4 < this.n && Math.abs(this.f14580e[i4]) > dPow * dMax) {
                i4++;
            }
            if (i4 > i3) {
                while (true) {
                    double[] dArr2 = this.f14579d;
                    double d9 = dArr2[i3];
                    int i5 = i3 + 1;
                    double d10 = (dArr2[i5] - d9) / (this.f14580e[i3] * d6);
                    d2 = dPow;
                    double dA = a.a(d10, 1.0d);
                    if (d10 < d5) {
                        dA = -dA;
                    }
                    double[] dArr3 = this.f14579d;
                    double[] dArr4 = this.f14580e;
                    double d11 = d10 + dA;
                    dArr3[i3] = dArr4[i3] / d11;
                    dArr3[i5] = dArr4[i3] * d11;
                    double d12 = dArr3[i5];
                    double d13 = d9 - dArr3[i3];
                    for (int i6 = i3 + 2; i6 < this.n; i6++) {
                        double[] dArr5 = this.f14579d;
                        dArr5[i6] = dArr5[i6] - d13;
                    }
                    d4 = d8 + d13;
                    double d14 = this.f14579d[i4];
                    double d15 = this.f14580e[i5];
                    int i7 = i4 - 1;
                    double d16 = d5;
                    double d17 = 1.0d;
                    double d18 = 1.0d;
                    double d19 = d16;
                    double d20 = d14;
                    double d21 = 1.0d;
                    while (i7 >= i3) {
                        int i8 = i4;
                        double[] dArr6 = this.f14580e;
                        double d22 = dArr6[i7] * d21;
                        double d23 = d21 * d20;
                        double d24 = dMax;
                        double dA2 = a.a(d20, dArr6[i7]);
                        double[] dArr7 = this.f14580e;
                        int i9 = i7 + 1;
                        dArr7[i9] = d19 * dA2;
                        double d25 = dArr7[i7] / dA2;
                        double d26 = d20 / dA2;
                        double[] dArr8 = this.f14579d;
                        double d27 = (dArr8[i7] * d26) - (d25 * d22);
                        dArr8[i9] = d23 + (((d22 * d26) + (dArr8[i7] * d25)) * d25);
                        for (int i10 = 0; i10 < this.n; i10++) {
                            double[][] dArr9 = this.V;
                            double d28 = dArr9[i10][i9];
                            dArr9[i10][i9] = (dArr9[i10][i7] * d25) + (d26 * d28);
                            dArr9[i10][i7] = (dArr9[i10][i7] * d26) - (d28 * d25);
                        }
                        i7--;
                        d16 = d19;
                        i4 = i8;
                        dMax = d24;
                        d19 = d25;
                        d20 = d27;
                        d18 = d17;
                        d17 = d21;
                        d21 = d26;
                    }
                    int i11 = i4;
                    d3 = dMax;
                    double[] dArr10 = this.f14580e;
                    double d29 = (((((-d19) * d16) * d18) * d15) * dArr10[i3]) / d12;
                    dArr10[i3] = d19 * d29;
                    this.f14579d[i3] = d21 * d29;
                    if (Math.abs(dArr10[i3]) <= d2 * d3) {
                        break;
                    }
                    dPow = d2;
                    i4 = i11;
                    d8 = d4;
                    dMax = d3;
                    d5 = 0.0d;
                    d6 = 2.0d;
                }
                d8 = d4;
            } else {
                d2 = dPow;
                d3 = dMax;
            }
            double[] dArr11 = this.f14579d;
            dArr11[i3] = dArr11[i3] + d8;
            this.f14580e[i3] = 0.0d;
            i3++;
            d5 = 0.0d;
            dPow = d2;
            d7 = d3;
            d6 = 2.0d;
        }
        int i12 = 0;
        while (i12 < this.n - 1) {
            double d30 = this.f14579d[i12];
            int i13 = i12 + 1;
            int i14 = i12;
            for (int i15 = i13; i15 < this.n; i15++) {
                double[] dArr12 = this.f14579d;
                if (dArr12[i15] < d30) {
                    d30 = dArr12[i15];
                    i14 = i15;
                }
            }
            if (i14 != i12) {
                double[] dArr13 = this.f14579d;
                dArr13[i14] = dArr13[i12];
                dArr13[i12] = d30;
                for (int i16 = 0; i16 < this.n; i16++) {
                    double[][] dArr14 = this.V;
                    double d31 = dArr14[i16][i12];
                    dArr14[i16][i12] = dArr14[i16][i14];
                    dArr14[i16][i14] = d31;
                }
            }
            i12 = i13;
        }
    }

    private void tred2() {
        int i;
        int i2 = 0;
        while (true) {
            i = this.n;
            if (i2 >= i) {
                break;
            }
            this.f14579d[i2] = this.V[i - 1][i2];
            i2++;
        }
        while (true) {
            i--;
            double d2 = 0.0d;
            if (i <= 0) {
                break;
            }
            double dAbs = 0.0d;
            for (int i3 = 0; i3 < i; i3++) {
                dAbs += Math.abs(this.f14579d[i3]);
            }
            if (dAbs == 0.0d) {
                int i4 = i - 1;
                this.f14580e[i] = this.f14579d[i4];
                for (int i5 = 0; i5 < i; i5++) {
                    double[] dArr = this.f14579d;
                    double[][] dArr2 = this.V;
                    dArr[i5] = dArr2[i4][i5];
                    dArr2[i][i5] = 0.0d;
                    dArr2[i5][i] = 0.0d;
                }
            } else {
                double d3 = 0.0d;
                for (int i6 = 0; i6 < i; i6++) {
                    double[] dArr3 = this.f14579d;
                    dArr3[i6] = dArr3[i6] / dAbs;
                    d3 += dArr3[i6] * dArr3[i6];
                }
                int i7 = i - 1;
                double d4 = this.f14579d[i7];
                double dSqrt = Math.sqrt(d3);
                if (d4 > 0.0d) {
                    dSqrt = -dSqrt;
                }
                this.f14580e[i] = dAbs * dSqrt;
                double d5 = d3 - (d4 * dSqrt);
                this.f14579d[i7] = d4 - dSqrt;
                for (int i8 = 0; i8 < i; i8++) {
                    this.f14580e[i8] = 0.0d;
                }
                int i9 = 0;
                while (i9 < i) {
                    double d6 = this.f14579d[i9];
                    double[][] dArr4 = this.V;
                    dArr4[i9][i] = d6;
                    double d7 = this.f14580e[i9] + (dArr4[i9][i9] * d6);
                    int i10 = i9 + 1;
                    for (int i11 = i10; i11 <= i7; i11++) {
                        double[][] dArr5 = this.V;
                        d7 += dArr5[i11][i9] * this.f14579d[i11];
                        double[] dArr6 = this.f14580e;
                        dArr6[i11] = dArr6[i11] + (dArr5[i11][i9] * d6);
                    }
                    this.f14580e[i9] = d7;
                    i9 = i10;
                }
                double d8 = 0.0d;
                for (int i12 = 0; i12 < i; i12++) {
                    double[] dArr7 = this.f14580e;
                    dArr7[i12] = dArr7[i12] / d5;
                    d8 += dArr7[i12] * this.f14579d[i12];
                }
                double d9 = d8 / (d5 + d5);
                for (int i13 = 0; i13 < i; i13++) {
                    double[] dArr8 = this.f14580e;
                    dArr8[i13] = dArr8[i13] - (this.f14579d[i13] * d9);
                }
                for (int i14 = 0; i14 < i; i14++) {
                    double d10 = this.f14579d[i14];
                    double d11 = this.f14580e[i14];
                    for (int i15 = i14; i15 <= i7; i15++) {
                        double[] dArr9 = this.V[i15];
                        dArr9[i14] = dArr9[i14] - ((this.f14580e[i15] * d10) + (this.f14579d[i15] * d11));
                    }
                    double[] dArr10 = this.f14579d;
                    double[][] dArr11 = this.V;
                    dArr10[i14] = dArr11[i7][i14];
                    dArr11[i][i14] = 0.0d;
                }
                d2 = d5;
            }
            this.f14579d[i] = d2;
        }
        int i16 = 0;
        while (true) {
            int i17 = this.n;
            if (i16 >= i17 - 1) {
                break;
            }
            double[][] dArr12 = this.V;
            dArr12[i17 - 1][i16] = dArr12[i16][i16];
            dArr12[i16][i16] = 1.0d;
            int i18 = i16 + 1;
            double d12 = this.f14579d[i18];
            if (d12 != 0.0d) {
                for (int i19 = 0; i19 <= i16; i19++) {
                    this.f14579d[i19] = this.V[i19][i18] / d12;
                }
                for (int i20 = 0; i20 <= i16; i20++) {
                    double d13 = 0.0d;
                    for (int i21 = 0; i21 <= i16; i21++) {
                        double[][] dArr13 = this.V;
                        d13 += dArr13[i21][i18] * dArr13[i21][i20];
                    }
                    for (int i22 = 0; i22 <= i16; i22++) {
                        double[] dArr14 = this.V[i22];
                        dArr14[i20] = dArr14[i20] - (this.f14579d[i22] * d13);
                    }
                }
            }
            for (int i23 = 0; i23 <= i16; i23++) {
                this.V[i23][i18] = 0.0d;
            }
            i16 = i18;
        }
        int i24 = 0;
        while (true) {
            int i25 = this.n;
            if (i24 >= i25) {
                this.V[i25 - 1][i25 - 1] = 1.0d;
                this.f14580e[0] = 0.0d;
                return;
            } else {
                double[] dArr15 = this.f14579d;
                double[][] dArr16 = this.V;
                dArr15[i24] = dArr16[i25 - 1][i24];
                dArr16[i25 - 1][i24] = 0.0d;
                i24++;
            }
        }
    }

    public Matrix getD() {
        int i = this.n;
        Matrix matrix = new Matrix(i, i);
        double[][] array = matrix.getArray();
        for (int i2 = 0; i2 < this.n; i2++) {
            for (int i3 = 0; i3 < this.n; i3++) {
                array[i2][i3] = 0.0d;
            }
            array[i2][i2] = this.f14579d[i2];
            double[] dArr = this.f14580e;
            if (dArr[i2] > 0.0d) {
                array[i2][i2 + 1] = dArr[i2];
            } else if (dArr[i2] < 0.0d) {
                array[i2][i2 - 1] = dArr[i2];
            }
        }
        return matrix;
    }

    public double[] getImagEigenvalues() {
        return this.f14580e;
    }

    public double[] getRealEigenvalues() {
        return this.f14579d;
    }

    public Matrix getV() {
        double[][] dArr = this.V;
        int i = this.n;
        return new Matrix(dArr, i, i);
    }
}
