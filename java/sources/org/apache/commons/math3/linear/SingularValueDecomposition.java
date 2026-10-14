package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class SingularValueDecomposition {
    private static final double EPS = 2.220446049250313E-16d;
    private static final double TINY = 1.6033346880071782E-291d;
    private RealMatrix cachedS;
    private final RealMatrix cachedU;
    private RealMatrix cachedUt;
    private final RealMatrix cachedV;
    private RealMatrix cachedVt;
    private final int m;
    private final int n;
    private final double[] singularValues;
    private final double tol;
    private final boolean transposed;

    private static class Solver implements DecompositionSolver {
        private boolean nonSingular;
        private final RealMatrix pseudoInverse;

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            return this.pseudoInverse;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            return this.nonSingular;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            return this.pseudoInverse.operate(realVector);
        }

        private Solver(double[] dArr, RealMatrix realMatrix, RealMatrix realMatrix2, boolean z, double d2) {
            double[][] data = realMatrix.getData();
            for (int i = 0; i < dArr.length; i++) {
                double d3 = dArr[i] > d2 ? 1.0d / dArr[i] : 0.0d;
                double[] dArr2 = data[i];
                for (int i2 = 0; i2 < dArr2.length; i2++) {
                    dArr2[i2] = dArr2[i2] * d3;
                }
            }
            this.pseudoInverse = realMatrix2.multiply(new Array2DRowRealMatrix(data, false));
            this.nonSingular = z;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            return this.pseudoInverse.multiply(realMatrix);
        }
    }

    public SingularValueDecomposition(RealMatrix realMatrix) {
        double[][] data;
        double d2;
        char c;
        int i;
        int i2;
        double d3;
        int i3;
        double[] dArr;
        if (realMatrix.getRowDimension() < realMatrix.getColumnDimension()) {
            this.transposed = true;
            data = realMatrix.transpose().getData();
            this.m = realMatrix.getColumnDimension();
            this.n = realMatrix.getRowDimension();
        } else {
            this.transposed = false;
            data = realMatrix.getData();
            this.m = realMatrix.getRowDimension();
            this.n = realMatrix.getColumnDimension();
        }
        int i4 = this.n;
        this.singularValues = new double[i4];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, this.m, i4);
        int i5 = this.n;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, i5, i5);
        int i6 = this.n;
        double[] dArr4 = new double[i6];
        int i7 = this.m;
        double[] dArr5 = new double[i7];
        int iMin = FastMath.min(i7 - 1, i6);
        int iMax = FastMath.max(0, this.n - 2);
        int i8 = 0;
        while (true) {
            d2 = 0.0d;
            if (i8 >= FastMath.max(iMin, iMax)) {
                break;
            }
            if (i8 < iMin) {
                this.singularValues[i8] = 0.0d;
                int i9 = i8;
                while (i9 < this.m) {
                    double[] dArr6 = this.singularValues;
                    dArr6[i8] = FastMath.hypot(dArr6[i8], data[i9][i8]);
                    i9++;
                    dArr4 = dArr4;
                    iMin = iMin;
                }
                i3 = iMin;
                dArr = dArr4;
                double[] dArr7 = this.singularValues;
                if (dArr7[i8] != 0.0d) {
                    if (data[i8][i8] < 0.0d) {
                        dArr7[i8] = -dArr7[i8];
                    }
                    for (int i10 = i8; i10 < this.m; i10++) {
                        double[] dArr8 = data[i10];
                        dArr8[i8] = dArr8[i8] / this.singularValues[i8];
                    }
                    double[] dArr9 = data[i8];
                    dArr9[i8] = dArr9[i8] + 1.0d;
                }
                double[] dArr10 = this.singularValues;
                dArr10[i8] = -dArr10[i8];
            } else {
                i3 = iMin;
                dArr = dArr4;
            }
            int i11 = i8 + 1;
            int i12 = i11;
            while (i12 < this.n) {
                int i13 = i3;
                if (i8 < i13 && this.singularValues[i8] != 0.0d) {
                    double d4 = 0.0d;
                    for (int i14 = i8; i14 < this.m; i14++) {
                        d4 += data[i14][i8] * data[i14][i12];
                    }
                    double d5 = (-d4) / data[i8][i8];
                    for (int i15 = i8; i15 < this.m; i15++) {
                        double[] dArr11 = data[i15];
                        dArr11[i12] = dArr11[i12] + (data[i15][i8] * d5);
                    }
                }
                dArr[i12] = data[i8][i12];
                i12++;
                i3 = i13;
            }
            iMin = i3;
            if (i8 < iMin) {
                for (int i16 = i8; i16 < this.m; i16++) {
                    dArr2[i16][i8] = data[i16][i8];
                }
            }
            if (i8 < iMax) {
                dArr[i8] = 0.0d;
                for (int i17 = i11; i17 < this.n; i17++) {
                    dArr[i8] = FastMath.hypot(dArr[i8], dArr[i17]);
                }
                if (dArr[i8] != 0.0d) {
                    if (dArr[i11] < 0.0d) {
                        dArr[i8] = -dArr[i8];
                    }
                    for (int i18 = i11; i18 < this.n; i18++) {
                        dArr[i18] = dArr[i18] / dArr[i8];
                    }
                    dArr[i11] = dArr[i11] + 1.0d;
                }
                dArr[i8] = -dArr[i8];
                if (i11 < this.m && dArr[i8] != 0.0d) {
                    for (int i19 = i11; i19 < this.m; i19++) {
                        dArr5[i19] = 0.0d;
                    }
                    for (int i20 = i11; i20 < this.n; i20++) {
                        for (int i21 = i11; i21 < this.m; i21++) {
                            dArr5[i21] = dArr5[i21] + (dArr[i20] * data[i21][i20]);
                        }
                    }
                    for (int i22 = i11; i22 < this.n; i22++) {
                        double d6 = (-dArr[i22]) / dArr[i11];
                        for (int i23 = i11; i23 < this.m; i23++) {
                            double[] dArr12 = data[i23];
                            dArr12[i22] = dArr12[i22] + (dArr5[i23] * d6);
                        }
                    }
                }
                for (int i24 = i11; i24 < this.n; i24++) {
                    dArr3[i24][i8] = dArr[i24];
                }
            }
            i8 = i11;
            dArr4 = dArr;
        }
        double[] dArr13 = dArr4;
        int i25 = this.n;
        if (iMin < i25) {
            this.singularValues[iMin] = data[iMin][iMin];
        }
        if (this.m < i25) {
            this.singularValues[i25 - 1] = 0.0d;
        }
        if (iMax + 1 < i25) {
            dArr13[iMax] = data[iMax][i25 - 1];
        }
        int i26 = i25 - 1;
        dArr13[i26] = 0.0d;
        for (int i27 = iMin; i27 < this.n; i27++) {
            for (int i28 = 0; i28 < this.m; i28++) {
                dArr2[i28][i27] = 0.0d;
            }
            dArr2[i27][i27] = 1.0d;
        }
        for (int i29 = iMin - 1; i29 >= 0; i29--) {
            if (this.singularValues[i29] != 0.0d) {
                for (int i30 = i29 + 1; i30 < this.n; i30++) {
                    double d7 = 0.0d;
                    for (int i31 = i29; i31 < this.m; i31++) {
                        d7 += dArr2[i31][i29] * dArr2[i31][i30];
                    }
                    double d8 = (-d7) / dArr2[i29][i29];
                    for (int i32 = i29; i32 < this.m; i32++) {
                        double[] dArr14 = dArr2[i32];
                        dArr14[i30] = dArr14[i30] + (dArr2[i32][i29] * d8);
                    }
                }
                for (int i33 = i29; i33 < this.m; i33++) {
                    dArr2[i33][i29] = -dArr2[i33][i29];
                }
                dArr2[i29][i29] = dArr2[i29][i29] + 1.0d;
                for (int i34 = 0; i34 < i29 - 1; i34++) {
                    dArr2[i34][i29] = 0.0d;
                }
            } else {
                for (int i35 = 0; i35 < this.m; i35++) {
                    dArr2[i35][i29] = 0.0d;
                }
                dArr2[i29][i29] = 1.0d;
            }
        }
        for (int i36 = this.n - 1; i36 >= 0; i36--) {
            if (i36 < iMax && dArr13[i36] != 0.0d) {
                int i37 = i36 + 1;
                for (int i38 = i37; i38 < this.n; i38++) {
                    double d9 = 0.0d;
                    for (int i39 = i37; i39 < this.n; i39++) {
                        d9 += dArr3[i39][i36] * dArr3[i39][i38];
                    }
                    double d10 = (-d9) / dArr3[i37][i36];
                    for (int i40 = i37; i40 < this.n; i40++) {
                        double[] dArr15 = dArr3[i40];
                        dArr15[i38] = dArr15[i38] + (dArr3[i40][i36] * d10);
                    }
                }
            }
            for (int i41 = 0; i41 < this.n; i41++) {
                dArr3[i41][i36] = 0.0d;
            }
            dArr3[i36][i36] = 1.0d;
        }
        while (i25 > 0) {
            int i42 = i25 - 2;
            int i43 = i42;
            while (i43 >= 0) {
                if (FastMath.abs(dArr13[i43]) <= ((FastMath.abs(this.singularValues[i43]) + FastMath.abs(this.singularValues[i43 + 1])) * EPS) + TINY) {
                    dArr13[i43] = d2;
                    break;
                }
                i43--;
            }
            if (i43 == i42) {
                c = 4;
            } else {
                int i44 = i25 - 1;
                int i45 = i44;
                while (i45 >= i43 && i45 != i43) {
                    if (FastMath.abs(this.singularValues[i45]) <= (((i45 != i25 ? FastMath.abs(dArr13[i45]) : d2) + (i45 != i43 + 1 ? FastMath.abs(dArr13[i45 - 1]) : d2)) * EPS) + TINY) {
                        this.singularValues[i45] = d2;
                        break;
                    }
                    i45--;
                }
                if (i45 == i43) {
                    c = 3;
                } else if (i45 == i44) {
                    c = 1;
                } else {
                    i43 = i45;
                    c = 2;
                }
            }
            int i46 = i43 + 1;
            if (c == 1) {
                i = i26;
                i2 = i25;
                double d11 = dArr13[i42];
                dArr13[i42] = 0.0d;
                for (int i47 = i42; i47 >= i46; i47--) {
                    double dHypot = FastMath.hypot(this.singularValues[i47], d11);
                    double[] dArr16 = this.singularValues;
                    double d12 = dArr16[i47] / dHypot;
                    double d13 = d11 / dHypot;
                    dArr16[i47] = dHypot;
                    if (i47 != i46) {
                        int i48 = i47 - 1;
                        d11 = (-d13) * dArr13[i48];
                        dArr13[i48] = dArr13[i48] * d12;
                    }
                    int i49 = 0;
                    while (i49 < this.n) {
                        int i50 = i2 - 1;
                        double d14 = (dArr3[i49][i47] * d12) + (dArr3[i49][i50] * d13);
                        dArr3[i49][i50] = ((-d13) * dArr3[i49][i47]) + (dArr3[i49][i50] * d12);
                        dArr3[i49][i47] = d14;
                        i49++;
                        d11 = d11;
                    }
                }
            } else if (c != 2) {
                if (c != 3) {
                    double[] dArr17 = this.singularValues;
                    if (dArr17[i46] <= d2) {
                        dArr17[i46] = dArr17[i46] < d2 ? -dArr17[i46] : d2;
                        for (int i51 = 0; i51 <= i26; i51++) {
                            dArr3[i51][i46] = -dArr3[i51][i46];
                        }
                    }
                    while (i46 < i26) {
                        double[] dArr18 = this.singularValues;
                        int i52 = i46 + 1;
                        if (dArr18[i46] >= dArr18[i52]) {
                            break;
                        }
                        double d15 = dArr18[i46];
                        dArr18[i46] = dArr18[i52];
                        dArr18[i52] = d15;
                        if (i46 < this.n - 1) {
                            for (int i53 = 0; i53 < this.n; i53++) {
                                double d16 = dArr3[i53][i52];
                                dArr3[i53][i52] = dArr3[i53][i46];
                                dArr3[i53][i46] = d16;
                            }
                        }
                        if (i46 < this.m - 1) {
                            for (int i54 = 0; i54 < this.m; i54++) {
                                double d17 = dArr2[i54][i52];
                                dArr2[i54][i52] = dArr2[i54][i46];
                                dArr2[i54][i46] = d17;
                            }
                        }
                        i46 = i52;
                    }
                    i25--;
                    i = i26;
                } else {
                    int i55 = i25 - 1;
                    double dMax = FastMath.max(FastMath.max(FastMath.max(FastMath.max(FastMath.abs(this.singularValues[i55]), FastMath.abs(this.singularValues[i42])), FastMath.abs(dArr13[i42])), FastMath.abs(this.singularValues[i46])), FastMath.abs(dArr13[i46]));
                    double[] dArr19 = this.singularValues;
                    double d18 = dArr19[i55] / dMax;
                    double d19 = dArr19[i42] / dMax;
                    double d20 = dArr13[i42] / dMax;
                    double d21 = dArr19[i46] / dMax;
                    double d22 = dArr13[i46] / dMax;
                    double d23 = (((d19 + d18) * (d19 - d18)) + (d20 * d20)) / 2.0d;
                    double d24 = d20 * d18;
                    double d25 = d24 * d24;
                    if (d23 == d2 && d25 == d2) {
                        d3 = d2;
                    } else {
                        double dSqrt = FastMath.sqrt((d23 * d23) + d25);
                        d3 = d25 / (d23 + (d23 < d2 ? -dSqrt : dSqrt));
                    }
                    double d26 = ((d21 + d18) * (d21 - d18)) + d3;
                    int i56 = i46;
                    double d27 = d21 * d22;
                    while (i56 < i55) {
                        double dHypot2 = FastMath.hypot(d26, d27);
                        double d28 = d26 / dHypot2;
                        double d29 = d27 / dHypot2;
                        if (i56 != i46) {
                            dArr13[i56 - 1] = dHypot2;
                        }
                        double[] dArr20 = this.singularValues;
                        double d30 = d29;
                        double d31 = (dArr20[i56] * d28) + (dArr13[i56] * d29);
                        dArr13[i56] = (dArr13[i56] * d28) - (dArr20[i56] * d30);
                        int i57 = i56 + 1;
                        double d32 = d30 * dArr20[i57];
                        dArr20[i57] = dArr20[i57] * d28;
                        int i58 = i26;
                        int i59 = 0;
                        while (i59 < this.n) {
                            double d33 = (dArr3[i59][i56] * d28) + (dArr3[i59][i57] * d30);
                            int i60 = i55;
                            double d34 = d30;
                            dArr3[i59][i57] = ((-d34) * dArr3[i59][i56]) + (dArr3[i59][i57] * d28);
                            dArr3[i59][i56] = d33;
                            i59++;
                            i46 = i46;
                            d31 = d31;
                            d30 = d34;
                            i42 = i42;
                            i55 = i60;
                        }
                        int i61 = i55;
                        int i62 = i42;
                        int i63 = i46;
                        double d35 = d31;
                        double dHypot3 = FastMath.hypot(d35, d32);
                        double d36 = d35 / dHypot3;
                        double d37 = d32 / dHypot3;
                        double[] dArr21 = this.singularValues;
                        dArr21[i56] = dHypot3;
                        d26 = (dArr13[i56] * d36) + (dArr21[i57] * d37);
                        double d38 = -d37;
                        dArr21[i57] = (dArr13[i56] * d38) + (dArr21[i57] * d36);
                        double d39 = dArr13[i57] * d37;
                        dArr13[i57] = dArr13[i57] * d36;
                        if (i56 < this.m - 1) {
                            for (int i64 = 0; i64 < this.m; i64++) {
                                double d40 = (dArr2[i64][i56] * d36) + (dArr2[i64][i57] * d37);
                                dArr2[i64][i57] = (dArr2[i64][i56] * d38) + (dArr2[i64][i57] * d36);
                                dArr2[i64][i56] = d40;
                            }
                        }
                        i56 = i57;
                        i26 = i58;
                        d27 = d39;
                        i46 = i63;
                        i42 = i62;
                        i55 = i61;
                    }
                    i = i26;
                    dArr13[i42] = d26;
                    i2 = i25;
                }
                i26 = i;
                d2 = 0.0d;
            } else {
                i = i26;
                int i65 = i25;
                int i66 = i46 - 1;
                double d41 = dArr13[i66];
                dArr13[i66] = 0.0d;
                i2 = i65;
                int i67 = i46;
                while (i67 < i2) {
                    double dHypot4 = FastMath.hypot(this.singularValues[i67], d41);
                    double[] dArr22 = this.singularValues;
                    double d42 = dArr22[i67] / dHypot4;
                    double d43 = d41 / dHypot4;
                    dArr22[i67] = dHypot4;
                    double d44 = -d43;
                    double d45 = dArr13[i67] * d44;
                    dArr13[i67] = dArr13[i67] * d42;
                    for (int i68 = 0; i68 < this.m; i68++) {
                        double d46 = (dArr2[i68][i67] * d42) + (dArr2[i68][i66] * d43);
                        dArr2[i68][i66] = (dArr2[i68][i67] * d44) + (dArr2[i68][i66] * d42);
                        dArr2[i68][i67] = d46;
                    }
                    i67++;
                    d41 = d45;
                }
            }
            i25 = i2;
            i26 = i;
            d2 = 0.0d;
        }
        this.tol = FastMath.max(((double) this.m) * this.singularValues[0] * EPS, FastMath.sqrt(Precision.SAFE_MIN));
        if (this.transposed) {
            this.cachedU = MatrixUtils.createRealMatrix(dArr3);
            this.cachedV = MatrixUtils.createRealMatrix(dArr2);
        } else {
            this.cachedU = MatrixUtils.createRealMatrix(dArr2);
            this.cachedV = MatrixUtils.createRealMatrix(dArr3);
        }
    }

    public double getConditionNumber() {
        double[] dArr = this.singularValues;
        return dArr[0] / dArr[this.n - 1];
    }

    public RealMatrix getCovariance(double d2) {
        int length = this.singularValues.length;
        int i = 0;
        while (i < length && this.singularValues[i] >= d2) {
            i++;
        }
        if (i == 0) {
            throw new NumberIsTooLargeException(LocalizedFormats.TOO_LARGE_CUTOFF_SINGULAR_VALUE, Double.valueOf(d2), Double.valueOf(this.singularValues[0]), true);
        }
        final double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i, length);
        getVT().walkInOptimizedOrder(new DefaultRealMatrixPreservingVisitor() { // from class: org.apache.commons.math3.linear.SingularValueDecomposition.1
            @Override // org.apache.commons.math3.linear.DefaultRealMatrixPreservingVisitor, org.apache.commons.math3.linear.RealMatrixPreservingVisitor
            public void visit(int i2, int i3, double d3) {
                dArr[i2][i3] = d3 / SingularValueDecomposition.this.singularValues[i2];
            }
        }, 0, i - 1, 0, length - 1);
        RealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr, false);
        return array2DRowRealMatrix.transpose().multiply(array2DRowRealMatrix);
    }

    public double getInverseConditionNumber() {
        double[] dArr = this.singularValues;
        return dArr[this.n - 1] / dArr[0];
    }

    public double getNorm() {
        return this.singularValues[0];
    }

    public int getRank() {
        int i = 0;
        int i2 = 0;
        while (true) {
            double[] dArr = this.singularValues;
            if (i >= dArr.length) {
                return i2;
            }
            if (dArr[i] > this.tol) {
                i2++;
            }
            i++;
        }
    }

    public RealMatrix getS() {
        if (this.cachedS == null) {
            this.cachedS = MatrixUtils.createRealDiagonalMatrix(this.singularValues);
        }
        return this.cachedS;
    }

    public double[] getSingularValues() {
        return (double[]) this.singularValues.clone();
    }

    public DecompositionSolver getSolver() {
        return new Solver(this.singularValues, getUT(), getV(), getRank() == this.m, this.tol);
    }

    public RealMatrix getU() {
        return this.cachedU;
    }

    public RealMatrix getUT() {
        if (this.cachedUt == null) {
            this.cachedUt = getU().transpose();
        }
        return this.cachedUt;
    }

    public RealMatrix getV() {
        return this.cachedV;
    }

    public RealMatrix getVT() {
        if (this.cachedVt == null) {
            this.cachedVt = getV().transpose();
        }
        return this.cachedVt;
    }
}
