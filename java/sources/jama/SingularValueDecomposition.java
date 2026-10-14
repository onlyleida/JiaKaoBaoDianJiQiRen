package jama;

import com.google.common.primitives.Longs;
import jama.a.a;
import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes6.dex */
public class SingularValueDecomposition implements Serializable {
    private double[][] U;
    private double[][] V;
    private int m;
    private int n;
    private double[] s;

    public SingularValueDecomposition(Matrix matrix) {
        double d2;
        int i;
        int i2;
        int i3;
        double[] dArr;
        double d3;
        long j;
        double d4;
        int i4;
        double[][] arrayCopy = matrix.getArrayCopy();
        this.m = matrix.getRowDimension();
        int columnDimension = matrix.getColumnDimension();
        this.n = columnDimension;
        int iMin = Math.min(this.m, columnDimension);
        boolean z = true;
        this.s = new double[Math.min(this.m + 1, this.n)];
        this.U = (double[][]) Array.newInstance((Class<?>) double.class, this.m, iMin);
        int i5 = this.n;
        this.V = (double[][]) Array.newInstance((Class<?>) double.class, i5, i5);
        int i6 = this.n;
        double[] dArr2 = new double[i6];
        int i7 = this.m;
        double[] dArr3 = new double[i7];
        int iMin2 = Math.min(i7 - 1, i6);
        int iMax = Math.max(0, Math.min(this.n - 2, this.m));
        int i8 = 0;
        while (true) {
            d2 = 0.0d;
            if (i8 >= Math.max(iMin2, iMax)) {
                break;
            }
            if (i8 < iMin2) {
                this.s[i8] = 0.0d;
                int i9 = i8;
                while (i9 < this.m) {
                    double[] dArr4 = this.s;
                    dArr4[i8] = a.a(dArr4[i8], arrayCopy[i9][i8]);
                    i9++;
                    iMax = iMax;
                }
                i4 = iMax;
                double[] dArr5 = this.s;
                if (dArr5[i8] != 0.0d) {
                    if (arrayCopy[i8][i8] < 0.0d) {
                        dArr5[i8] = -dArr5[i8];
                    }
                    for (int i10 = i8; i10 < this.m; i10++) {
                        double[] dArr6 = arrayCopy[i10];
                        dArr6[i8] = dArr6[i8] / this.s[i8];
                    }
                    double[] dArr7 = arrayCopy[i8];
                    dArr7[i8] = dArr7[i8] + 1.0d;
                }
                double[] dArr8 = this.s;
                dArr8[i8] = -dArr8[i8];
            } else {
                i4 = iMax;
            }
            int i11 = i8 + 1;
            for (int i12 = i11; i12 < this.n; i12++) {
                if ((i8 < iMin2) & (this.s[i8] != 0.0d)) {
                    double d5 = 0.0d;
                    for (int i13 = i8; i13 < this.m; i13++) {
                        d5 += arrayCopy[i13][i8] * arrayCopy[i13][i12];
                    }
                    double d6 = (-d5) / arrayCopy[i8][i8];
                    for (int i14 = i8; i14 < this.m; i14++) {
                        double[] dArr9 = arrayCopy[i14];
                        dArr9[i12] = dArr9[i12] + (arrayCopy[i14][i8] * d6);
                    }
                }
                dArr2[i12] = arrayCopy[i8][i12];
            }
            if ((i8 < iMin2) & z) {
                for (int i15 = i8; i15 < this.m; i15++) {
                    this.U[i15][i8] = arrayCopy[i15][i8];
                }
            }
            iMax = i4;
            if (i8 < iMax) {
                dArr2[i8] = 0.0d;
                int i16 = i11;
                while (i16 < this.n) {
                    dArr2[i8] = a.a(dArr2[i8], dArr2[i16]);
                    i16++;
                    i11 = i11;
                }
                int i17 = i11;
                if (dArr2[i8] != 0.0d) {
                    if (dArr2[i17] < 0.0d) {
                        dArr2[i8] = -dArr2[i8];
                    }
                    for (int i18 = i17; i18 < this.n; i18++) {
                        dArr2[i18] = dArr2[i18] / dArr2[i8];
                    }
                    dArr2[i17] = dArr2[i17] + 1.0d;
                }
                dArr2[i8] = -dArr2[i8];
                i11 = i17;
                if ((i11 < this.m) & (dArr2[i8] != 0.0d)) {
                    for (int i19 = i11; i19 < this.m; i19++) {
                        dArr3[i19] = 0.0d;
                    }
                    for (int i20 = i11; i20 < this.n; i20++) {
                        for (int i21 = i11; i21 < this.m; i21++) {
                            dArr3[i21] = dArr3[i21] + (dArr2[i20] * arrayCopy[i21][i20]);
                        }
                    }
                    for (int i22 = i11; i22 < this.n; i22++) {
                        double d7 = (-dArr2[i22]) / dArr2[i11];
                        for (int i23 = i11; i23 < this.m; i23++) {
                            double[] dArr10 = arrayCopy[i23];
                            dArr10[i22] = dArr10[i22] + (dArr3[i23] * d7);
                        }
                    }
                }
                for (int i24 = i11; i24 < this.n; i24++) {
                    this.V[i24][i8] = dArr2[i24];
                }
            }
            i8 = i11;
            z = true;
        }
        int iMin3 = Math.min(this.n, this.m + 1);
        if (iMin2 < this.n) {
            this.s[iMin2] = arrayCopy[iMin2][iMin2];
        }
        if (this.m < iMin3) {
            this.s[iMin3 - 1] = 0.0d;
        }
        if (iMax + 1 < iMin3) {
            dArr2[iMax] = arrayCopy[iMax][iMin3 - 1];
        }
        int i25 = iMin3 - 1;
        dArr2[i25] = 0.0d;
        for (int i26 = iMin2; i26 < iMin; i26++) {
            for (int i27 = 0; i27 < this.m; i27++) {
                this.U[i27][i26] = 0.0d;
            }
            this.U[i26][i26] = 1.0d;
        }
        for (int i28 = iMin2 - 1; i28 >= 0; i28--) {
            if (this.s[i28] != 0.0d) {
                for (int i29 = i28 + 1; i29 < iMin; i29++) {
                    double d8 = 0.0d;
                    for (int i30 = i28; i30 < this.m; i30++) {
                        double[][] dArr11 = this.U;
                        d8 += dArr11[i30][i28] * dArr11[i30][i29];
                    }
                    double d9 = (-d8) / this.U[i28][i28];
                    for (int i31 = i28; i31 < this.m; i31++) {
                        double[][] dArr12 = this.U;
                        double[] dArr13 = dArr12[i31];
                        dArr13[i29] = dArr13[i29] + (dArr12[i31][i28] * d9);
                    }
                }
                for (int i32 = i28; i32 < this.m; i32++) {
                    double[][] dArr14 = this.U;
                    dArr14[i32][i28] = -dArr14[i32][i28];
                }
                double[][] dArr15 = this.U;
                dArr15[i28][i28] = dArr15[i28][i28] + 1.0d;
                for (int i33 = 0; i33 < i28 - 1; i33++) {
                    this.U[i33][i28] = 0.0d;
                }
            } else {
                for (int i34 = 0; i34 < this.m; i34++) {
                    this.U[i34][i28] = 0.0d;
                }
                this.U[i28][i28] = 1.0d;
            }
        }
        int i35 = this.n - 1;
        while (i35 >= 0) {
            if ((i35 < iMax) & (dArr2[i35] != 0.0d)) {
                int i36 = i35 + 1;
                for (int i37 = i36; i37 < iMin; i37++) {
                    double d10 = 0.0d;
                    for (int i38 = i36; i38 < this.n; i38++) {
                        double[][] dArr16 = this.V;
                        d10 += dArr16[i38][i35] * dArr16[i38][i37];
                    }
                    double d11 = (-d10) / this.V[i36][i35];
                    for (int i39 = i36; i39 < this.n; i39++) {
                        double[][] dArr17 = this.V;
                        double[] dArr18 = dArr17[i39];
                        dArr18[i37] = dArr18[i37] + (dArr17[i39][i35] * d11);
                    }
                }
            }
            for (int i40 = 0; i40 < this.n; i40++) {
                this.V[i40][i35] = 0.0d;
            }
            this.V[i35][i35] = 1.0d;
            i35--;
        }
        double dPow = Math.pow(2.0d, -52.0d);
        double dPow2 = Math.pow(2.0d, -966.0d);
        while (iMin3 > 0) {
            int i41 = iMin3 - 2;
            int i42 = i41;
            while (i42 >= -1 && i42 != -1) {
                if (Math.abs(dArr2[i42]) <= dPow2 + ((Math.abs(this.s[i42]) + Math.abs(this.s[i42 + 1])) * dPow)) {
                    dArr2[i42] = d2;
                    break;
                }
                i42--;
            }
            if (i42 == i41) {
                i = 1;
                i2 = 4;
            } else {
                int i43 = iMin3 - 1;
                int i44 = i43;
                while (i44 >= i42 && i44 != i42) {
                    if (Math.abs(this.s[i44]) <= dPow2 + (((i44 != iMin3 ? Math.abs(dArr2[i44]) : d2) + (i44 != i42 + 1 ? Math.abs(dArr2[i44 - 1]) : d2)) * dPow)) {
                        this.s[i44] = d2;
                        break;
                    }
                    i44--;
                }
                if (i44 == i42) {
                    i = 1;
                    i2 = 3;
                } else if (i44 == i43) {
                    i = 1;
                    i2 = 1;
                } else {
                    i42 = i44;
                    i = 1;
                    i2 = 2;
                }
            }
            int i45 = i42 + i;
            if (i2 == i) {
                i3 = i25;
                dArr = dArr2;
                dPow = dPow;
                d3 = dPow2;
                j = Longs.MAX_POWER_OF_TWO;
                double d12 = dArr[i41];
                dArr[i41] = 0.0d;
                while (i41 >= i45) {
                    double dA = a.a(this.s[i41], d12);
                    double[] dArr19 = this.s;
                    double d13 = dArr19[i41] / dA;
                    double d14 = d12 / dA;
                    dArr19[i41] = dA;
                    if (i41 != i45) {
                        int i46 = i41 - 1;
                        d12 = (-d14) * dArr[i46];
                        dArr[i46] = dArr[i46] * d13;
                    }
                    for (int i47 = 0; i47 < this.n; i47++) {
                        double[][] dArr20 = this.V;
                        int i48 = iMin3 - 1;
                        double d15 = (dArr20[i47][i41] * d13) + (dArr20[i47][i48] * d14);
                        dArr20[i47][i48] = ((-d14) * dArr20[i47][i41]) + (dArr20[i47][i48] * d13);
                        dArr20[i47][i41] = d15;
                    }
                    i41--;
                }
            } else if (i2 == 2) {
                i3 = i25;
                dArr = dArr2;
                dPow = dPow;
                d3 = dPow2;
                j = Longs.MAX_POWER_OF_TWO;
                int i49 = i45 - 1;
                double d16 = dArr[i49];
                dArr[i49] = 0.0d;
                int i50 = i45;
                iMin3 = iMin3;
                while (i50 < iMin3) {
                    double dA2 = a.a(this.s[i50], d16);
                    double[] dArr21 = this.s;
                    double d17 = dArr21[i50] / dA2;
                    double d18 = d16 / dA2;
                    dArr21[i50] = dA2;
                    double d19 = -d18;
                    double d20 = dArr[i50] * d19;
                    dArr[i50] = dArr[i50] * d17;
                    for (int i51 = 0; i51 < this.m; i51++) {
                        double[][] dArr22 = this.U;
                        double d21 = (dArr22[i51][i50] * d17) + (dArr22[i51][i49] * d18);
                        dArr22[i51][i49] = (dArr22[i51][i50] * d19) + (dArr22[i51][i49] * d17);
                        dArr22[i51][i50] = d21;
                    }
                    i50++;
                    d16 = d20;
                }
            } else if (i2 != 3) {
                if (i2 == 4) {
                    double[] dArr23 = this.s;
                    if (dArr23[i45] <= d2) {
                        dArr23[i45] = dArr23[i45] < d2 ? -dArr23[i45] : d2;
                        for (int i52 = 0; i52 <= i25; i52++) {
                            double[][] dArr24 = this.V;
                            dArr24[i52][i45] = -dArr24[i52][i45];
                        }
                    }
                    while (i45 < i25) {
                        double[] dArr25 = this.s;
                        int i53 = i45 + 1;
                        if (dArr25[i45] >= dArr25[i53]) {
                            break;
                        }
                        double d22 = dArr25[i45];
                        dArr25[i45] = dArr25[i53];
                        dArr25[i53] = d22;
                        if (i45 < this.n - 1) {
                            for (int i54 = 0; i54 < this.n; i54++) {
                                double[][] dArr26 = this.V;
                                double d23 = dArr26[i54][i53];
                                dArr26[i54][i53] = dArr26[i54][i45];
                                dArr26[i54][i45] = d23;
                            }
                        }
                        if (i45 < this.m - 1) {
                            for (int i55 = 0; i55 < this.m; i55++) {
                                double[][] dArr27 = this.U;
                                double d24 = dArr27[i55][i53];
                                dArr27[i55][i53] = dArr27[i55][i45];
                                dArr27[i55][i45] = d24;
                            }
                        }
                        i45 = i53;
                    }
                    iMin3--;
                }
                i3 = i25;
                dArr = dArr2;
                dPow = dPow;
                d3 = dPow2;
                j = Longs.MAX_POWER_OF_TWO;
            } else {
                int i56 = iMin3 - 1;
                int i57 = i56;
                double dMax = Math.max(Math.max(Math.max(Math.max(Math.abs(this.s[i56]), Math.abs(this.s[i41])), Math.abs(dArr2[i41])), Math.abs(this.s[i45])), Math.abs(dArr2[i45]));
                double[] dArr28 = this.s;
                double d25 = dArr28[i57] / dMax;
                double d26 = dArr28[i41] / dMax;
                double d27 = dArr2[i41] / dMax;
                double d28 = dArr28[i45] / dMax;
                double d29 = dArr2[i45] / dMax;
                j = Longs.MAX_POWER_OF_TWO;
                double d30 = (((d26 + d25) * (d26 - d25)) + (d27 * d27)) / 2.0d;
                double d31 = d27 * d25;
                double d32 = d31 * d31;
                if ((d30 != 0.0d) || (d32 != 0.0d)) {
                    double dSqrt = Math.sqrt((d30 * d30) + d32);
                    d4 = d32 / (d30 + (d30 < 0.0d ? -dSqrt : dSqrt));
                } else {
                    d4 = 0.0d;
                }
                double d33 = ((d28 + d25) * (d28 - d25)) + d4;
                int i58 = i45;
                double d34 = d28 * d29;
                while (i58 < i57) {
                    double dA3 = a.a(d33, d34);
                    double d35 = d33 / dA3;
                    double d36 = d34 / dA3;
                    if (i58 != i45) {
                        dArr2[i58 - 1] = dA3;
                    }
                    double[] dArr29 = this.s;
                    double d37 = dPow2;
                    double d38 = (dArr29[i58] * d35) + (dArr2[i58] * d36);
                    dArr2[i58] = (dArr2[i58] * d35) - (dArr29[i58] * d36);
                    int i59 = i58 + 1;
                    int i60 = i25;
                    int i61 = i45;
                    double d39 = d36 * dArr29[i59];
                    dArr29[i59] = dArr29[i59] * d35;
                    int i62 = i57;
                    int i63 = 0;
                    while (i63 < this.n) {
                        double[][] dArr30 = this.V;
                        double d40 = (dArr30[i63][i58] * d35) + (dArr30[i63][i59] * d36);
                        dArr30[i63][i59] = ((-d36) * dArr30[i63][i58]) + (dArr30[i63][i59] * d35);
                        dArr30[i63][i58] = d40;
                        i63++;
                        dArr2 = dArr2;
                        iMin3 = iMin3;
                    }
                    double[] dArr31 = dArr2;
                    int i64 = iMin3;
                    double dA4 = a.a(d38, d39);
                    double d41 = d38 / dA4;
                    double d42 = d39 / dA4;
                    double[] dArr32 = this.s;
                    dArr32[i58] = dA4;
                    d33 = (dArr31[i58] * d41) + (dArr32[i59] * d42);
                    double d43 = -d42;
                    dArr32[i59] = (dArr31[i58] * d43) + (dArr32[i59] * d41);
                    d34 = dArr31[i59] * d42;
                    dArr31[i59] = dArr31[i59] * d41;
                    if (i58 < this.m - 1) {
                        for (int i65 = 0; i65 < this.m; i65++) {
                            double[][] dArr33 = this.U;
                            double d44 = (dArr33[i65][i58] * d41) + (dArr33[i65][i59] * d42);
                            dArr33[i65][i59] = (dArr33[i65][i58] * d43) + (dArr33[i65][i59] * d41);
                            dArr33[i65][i58] = d44;
                        }
                    }
                    i58 = i59;
                    i57 = i62;
                    i25 = i60;
                    i45 = i61;
                    dPow2 = d37;
                    dArr2 = dArr31;
                    iMin3 = i64;
                }
                i3 = i25;
                dArr = dArr2;
                d3 = dPow2;
                dArr[i41] = d33;
            }
            i25 = i3;
            dPow2 = d3;
            dPow = dPow;
            dArr2 = dArr;
            d2 = 0.0d;
        }
    }

    public double cond() {
        double[] dArr = this.s;
        return dArr[0] / dArr[Math.min(this.m, this.n) - 1];
    }

    public Matrix getS() {
        int i = this.n;
        Matrix matrix = new Matrix(i, i);
        double[][] array = matrix.getArray();
        for (int i2 = 0; i2 < this.n; i2++) {
            for (int i3 = 0; i3 < this.n; i3++) {
                array[i2][i3] = 0.0d;
            }
            array[i2][i2] = this.s[i2];
        }
        return matrix;
    }

    public double[] getSingularValues() {
        return this.s;
    }

    public Matrix getU() {
        double[][] dArr = this.U;
        int i = this.m;
        return new Matrix(dArr, i, Math.min(i + 1, this.n));
    }

    public Matrix getV() {
        double[][] dArr = this.V;
        int i = this.n;
        return new Matrix(dArr, i, i);
    }

    public double norm2() {
        return this.s[0];
    }

    public int rank() {
        int i = 0;
        double dMax = ((double) Math.max(this.m, this.n)) * this.s[0] * Math.pow(2.0d, -52.0d);
        int i2 = 0;
        while (true) {
            double[] dArr = this.s;
            if (i >= dArr.length) {
                return i2;
            }
            if (dArr[i] > dMax) {
                i2++;
            }
            i++;
        }
    }
}
