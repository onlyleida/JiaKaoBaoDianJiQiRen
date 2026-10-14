package org.apache.commons.math3.linear;

import com.google.common.base.Ascii;
import java.lang.reflect.Array;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class EigenDecomposition {
    private static final double EPSILON = 1.0E-12d;
    private RealMatrix cachedD;
    private RealMatrix cachedV;
    private RealMatrix cachedVt;
    private ArrayRealVector[] eigenvectors;
    private double[] imagEigenvalues;
    private final boolean isSymmetric;
    private double[] main;
    private byte maxIter;
    private double[] realEigenvalues;
    private double[] secondary;
    private TriDiagonalTransformer transformer;

    private static class Solver implements DecompositionSolver {
        private final ArrayRealVector[] eigenvectors;
        private double[] imagEigenvalues;
        private double[] realEigenvalues;

        private double eigenvalueNorm(int i) {
            double d2 = this.realEigenvalues[i];
            double d3 = this.imagEigenvalues[i];
            return FastMath.sqrt((d2 * d2) + (d3 * d3));
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            if (!isNonSingular()) {
                throw new SingularMatrixException();
            }
            int length = this.realEigenvalues.length;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
            for (int i = 0; i < length; i++) {
                double[] dArr2 = dArr[i];
                for (int i2 = 0; i2 < length; i2++) {
                    double d2 = 0.0d;
                    for (int i3 = 0; i3 < length; i3++) {
                        double[] dataRef = this.eigenvectors[i3].getDataRef();
                        d2 += (dataRef[i] * dataRef[i2]) / this.realEigenvalues[i3];
                    }
                    dArr2[i2] = d2;
                }
            }
            return MatrixUtils.createRealMatrix(dArr);
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            double dMax = 0.0d;
            for (int i = 0; i < this.realEigenvalues.length; i++) {
                dMax = FastMath.max(dMax, eigenvalueNorm(i));
            }
            if (dMax == 0.0d) {
                return false;
            }
            for (int i2 = 0; i2 < this.realEigenvalues.length; i2++) {
                if (Precision.equals(eigenvalueNorm(i2) / dMax, 0.0d, 1.0E-12d)) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            if (!isNonSingular()) {
                throw new SingularMatrixException();
            }
            int length = this.realEigenvalues.length;
            if (realVector.getDimension() != length) {
                throw new DimensionMismatchException(realVector.getDimension(), length);
            }
            double[] dArr = new double[length];
            for (int i = 0; i < length; i++) {
                ArrayRealVector arrayRealVector = this.eigenvectors[i];
                double[] dataRef = arrayRealVector.getDataRef();
                double dDotProduct = arrayRealVector.dotProduct(realVector) / this.realEigenvalues[i];
                for (int i2 = 0; i2 < length; i2++) {
                    dArr[i2] = dArr[i2] + (dataRef[i2] * dDotProduct);
                }
            }
            return new ArrayRealVector(dArr, false);
        }

        private Solver(double[] dArr, double[] dArr2, ArrayRealVector[] arrayRealVectorArr) {
            this.realEigenvalues = dArr;
            this.imagEigenvalues = dArr2;
            this.eigenvectors = arrayRealVectorArr;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            if (isNonSingular()) {
                int length = this.realEigenvalues.length;
                if (realMatrix.getRowDimension() == length) {
                    int columnDimension = realMatrix.getColumnDimension();
                    double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, length, columnDimension);
                    double[] dArr2 = new double[length];
                    for (int i = 0; i < columnDimension; i++) {
                        for (int i2 = 0; i2 < length; i2++) {
                            dArr2[i2] = realMatrix.getEntry(i2, i);
                            dArr[i2][i] = 0.0d;
                        }
                        for (int i3 = 0; i3 < length; i3++) {
                            ArrayRealVector arrayRealVector = this.eigenvectors[i3];
                            double[] dataRef = arrayRealVector.getDataRef();
                            double entry = 0.0d;
                            for (int i4 = 0; i4 < length; i4++) {
                                entry += arrayRealVector.getEntry(i4) * dArr2[i4];
                            }
                            double d2 = entry / this.realEigenvalues[i3];
                            for (int i5 = 0; i5 < length; i5++) {
                                double[] dArr3 = dArr[i5];
                                dArr3[i] = dArr3[i] + (dataRef[i5] * d2);
                            }
                        }
                    }
                    return new Array2DRowRealMatrix(dArr, false);
                }
                throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
            }
            throw new SingularMatrixException();
        }
    }

    public EigenDecomposition(RealMatrix realMatrix) throws MathArithmeticException {
        this.maxIter = Ascii.RS;
        boolean zIsSymmetric = MatrixUtils.isSymmetric(realMatrix, ((double) (realMatrix.getRowDimension() * 10 * realMatrix.getColumnDimension())) * Precision.EPSILON);
        this.isSymmetric = zIsSymmetric;
        if (!zIsSymmetric) {
            findEigenVectorsFromSchur(transformToSchur(realMatrix));
        } else {
            transformToTridiagonal(realMatrix);
            findEigenVectors(this.transformer.getQ().getData());
        }
    }

    private Complex cdiv(double d2, double d3, double d4, double d5) {
        return new Complex(d2, d3).divide(new Complex(d4, d5));
    }

    private void findEigenVectors(double[][] dArr) {
        int i;
        int i2;
        double d2;
        double d3;
        double d4;
        double d5;
        double[][] dArr2 = (double[][]) dArr.clone();
        int length = this.main.length;
        this.realEigenvalues = new double[length];
        this.imagEigenvalues = new double[length];
        double[] dArr3 = new double[length];
        int i3 = 0;
        while (true) {
            i = length - 1;
            if (i3 >= i) {
                break;
            }
            this.realEigenvalues[i3] = this.main[i3];
            dArr3[i3] = this.secondary[i3];
            i3++;
        }
        this.realEigenvalues[i] = this.main[i];
        dArr3[i] = 0.0d;
        double dAbs = 0.0d;
        for (int i4 = 0; i4 < length; i4++) {
            if (FastMath.abs(this.realEigenvalues[i4]) > dAbs) {
                dAbs = FastMath.abs(this.realEigenvalues[i4]);
            }
            if (FastMath.abs(dArr3[i4]) > dAbs) {
                dAbs = FastMath.abs(dArr3[i4]);
            }
        }
        if (dAbs != 0.0d) {
            for (int i5 = 0; i5 < length; i5++) {
                double dAbs2 = FastMath.abs(this.realEigenvalues[i5]);
                double d6 = Precision.EPSILON;
                if (dAbs2 <= d6 * dAbs) {
                    this.realEigenvalues[i5] = 0.0d;
                }
                if (FastMath.abs(dArr3[i5]) <= d6 * dAbs) {
                    dArr3[i5] = 0.0d;
                }
            }
        }
        for (int i6 = 0; i6 < length; i6++) {
            int i7 = 0;
            do {
                i2 = i6;
                while (i2 < i) {
                    int i8 = i2 + 1;
                    double dAbs3 = FastMath.abs(this.realEigenvalues[i2]) + FastMath.abs(this.realEigenvalues[i8]);
                    if (FastMath.abs(dArr3[i2]) + dAbs3 == dAbs3) {
                        break;
                    } else {
                        i2 = i8;
                    }
                }
                if (i2 != i6) {
                    if (i7 == this.maxIter) {
                        throw new MaxCountExceededException(LocalizedFormats.CONVERGENCE_FAILED, Byte.valueOf(this.maxIter), new Object[0]);
                    }
                    i7++;
                    double[] dArr4 = this.realEigenvalues;
                    double d7 = (dArr4[i6 + 1] - dArr4[i6]) / (dArr3[i6] * 2.0d);
                    double dSqrt = FastMath.sqrt((d7 * d7) + 1.0d);
                    if (d7 < 0.0d) {
                        double[] dArr5 = this.realEigenvalues;
                        d2 = dArr5[i2] - dArr5[i6];
                        d3 = dArr3[i6];
                        d4 = d7 - dSqrt;
                    } else {
                        double[] dArr6 = this.realEigenvalues;
                        d2 = dArr6[i2] - dArr6[i6];
                        d3 = dArr3[i6];
                        d4 = d7 + dSqrt;
                    }
                    double d8 = d2 + (d3 / d4);
                    int i9 = i2 - 1;
                    double d9 = 0.0d;
                    double d10 = 1.0d;
                    double d11 = 1.0d;
                    while (i9 >= i6) {
                        double d12 = d10 * dArr3[i9];
                        double d13 = d11 * dArr3[i9];
                        if (FastMath.abs(d12) >= FastMath.abs(d8)) {
                            double d14 = d8 / d12;
                            double dSqrt2 = FastMath.sqrt((d14 * d14) + 1.0d);
                            dArr3[i9 + 1] = d12 * dSqrt2;
                            d10 = 1.0d / dSqrt2;
                            double d15 = d14 * d10;
                            dSqrt = dSqrt2;
                            d5 = d15;
                        } else {
                            double d16 = d12 / d8;
                            dSqrt = FastMath.sqrt((d16 * d16) + 1.0d);
                            dArr3[i9 + 1] = d8 * dSqrt;
                            d5 = 1.0d / dSqrt;
                            d10 = d16 * d5;
                        }
                        int i10 = i9 + 1;
                        if (dArr3[i10] == 0.0d) {
                            double[] dArr7 = this.realEigenvalues;
                            dArr7[i10] = dArr7[i10] - d9;
                            dArr3[i2] = 0.0d;
                            break;
                        }
                        double[] dArr8 = this.realEigenvalues;
                        double d17 = dArr8[i10] - d9;
                        double d18 = ((dArr8[i9] - d17) * d10) + (d5 * 2.0d * d13);
                        double d19 = d10 * d18;
                        dArr8[i10] = d17 + d19;
                        d8 = (d5 * d18) - d13;
                        for (int i11 = 0; i11 < length; i11++) {
                            double d20 = dArr2[i11][i10];
                            dArr2[i11][i10] = (dArr2[i11][i9] * d10) + (d5 * d20);
                            dArr2[i11][i9] = (dArr2[i11][i9] * d5) - (d20 * d10);
                        }
                        i9--;
                        dSqrt = d18;
                        d11 = d5;
                        d9 = d19;
                    }
                    if (dSqrt != 0.0d || i9 < i6) {
                        double[] dArr9 = this.realEigenvalues;
                        dArr9[i6] = dArr9[i6] - d9;
                        dArr3[i6] = d8;
                        dArr3[i2] = 0.0d;
                    }
                }
            } while (i2 != i6);
        }
        int i12 = 0;
        while (i12 < length) {
            double d21 = this.realEigenvalues[i12];
            int i13 = i12 + 1;
            int i14 = i12;
            for (int i15 = i13; i15 < length; i15++) {
                double[] dArr10 = this.realEigenvalues;
                if (dArr10[i15] > d21) {
                    d21 = dArr10[i15];
                    i14 = i15;
                }
            }
            if (i14 != i12) {
                double[] dArr11 = this.realEigenvalues;
                dArr11[i14] = dArr11[i12];
                dArr11[i12] = d21;
                for (int i16 = 0; i16 < length; i16++) {
                    double d22 = dArr2[i16][i12];
                    dArr2[i16][i12] = dArr2[i16][i14];
                    dArr2[i16][i14] = d22;
                }
            }
            i12 = i13;
        }
        double dAbs4 = 0.0d;
        for (int i17 = 0; i17 < length; i17++) {
            if (FastMath.abs(this.realEigenvalues[i17]) > dAbs4) {
                dAbs4 = FastMath.abs(this.realEigenvalues[i17]);
            }
        }
        if (dAbs4 != 0.0d) {
            for (int i18 = 0; i18 < length; i18++) {
                if (FastMath.abs(this.realEigenvalues[i18]) < Precision.EPSILON * dAbs4) {
                    this.realEigenvalues[i18] = 0.0d;
                }
            }
        }
        this.eigenvectors = new ArrayRealVector[length];
        double[] dArr12 = new double[length];
        for (int i19 = 0; i19 < length; i19++) {
            for (int i20 = 0; i20 < length; i20++) {
                dArr12[i20] = dArr2[i20][i19];
            }
            this.eigenvectors[i19] = new ArrayRealVector(dArr12);
        }
    }

    private void findEigenVectorsFromSchur(SchurTransformer schurTransformer) throws MathArithmeticException {
        int i;
        double[][] dArr;
        double d2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        double d3;
        double d4;
        int i7;
        int i8;
        double[][] data = schurTransformer.getT().getData();
        double[][] data2 = schurTransformer.getP().getData();
        int length = data.length;
        double d5 = 0.0d;
        double dAbs = 0.0d;
        for (int i9 = 0; i9 < length; i9++) {
            for (int iMax = FastMath.max(i9 - 1, 0); iMax < length; iMax++) {
                dAbs += FastMath.abs(data[i9][iMax]);
            }
        }
        if (Precision.equals(dAbs, 0.0d, 1.0E-12d)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        int i10 = length - 1;
        int i11 = i10;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        while (i11 >= 0) {
            double d9 = this.realEigenvalues[i11];
            double d10 = this.imagEigenvalues[i11];
            if (Precision.equals(d10, d5)) {
                data[i11][i11] = 1.0d;
                int i12 = i11 - 1;
                int i13 = i11;
                double d11 = d6;
                while (i12 >= 0) {
                    double d12 = data[i12][i12] - d9;
                    double d13 = d5;
                    for (int i14 = i13; i14 <= i11; i14++) {
                        d13 += data[i12][i14] * data[i14][i11];
                    }
                    if (Precision.compareTo(this.imagEigenvalues[i12], 0.0d, 1.0E-12d) < 0) {
                        i12 = i12;
                        d7 = d12;
                        d11 = d13;
                    } else {
                        if (!Precision.equals(this.imagEigenvalues[i12], 0.0d)) {
                            int i15 = i12 + 1;
                            double d14 = data[i12][i15];
                            double d15 = data[i15][i12];
                            double[] dArr2 = this.realEigenvalues;
                            double d16 = (dArr2[i12] - d9) * (dArr2[i12] - d9);
                            double[] dArr3 = this.imagEigenvalues;
                            double d17 = ((d14 * d11) - (d7 * d13)) / (d16 + (dArr3[i12] * dArr3[i12]));
                            data[i12][i11] = d17;
                            if (FastMath.abs(d14) > FastMath.abs(d7)) {
                                data[i15][i11] = ((-d13) - (d12 * d17)) / d14;
                                d11 = d11;
                            } else {
                                data[i15][i11] = ((-d11) - (d15 * d17)) / d7;
                            }
                        } else if (d12 != 0.0d) {
                            data[i12][i11] = (-d13) / d12;
                        } else {
                            data[i12][i11] = (-d13) / (Precision.EPSILON * dAbs);
                        }
                        double dAbs2 = FastMath.abs(data[i12][i11]);
                        if (Precision.EPSILON * dAbs2 * dAbs2 > 1.0d) {
                            while (i8 <= i11) {
                                i8 = i12;
                                double[] dArr4 = data[i8];
                                dArr4[i11] = dArr4[i11] / dAbs2;
                                i8++;
                            }
                            i8 = i12;
                        }
                        i13 = i12;
                    }
                    i12--;
                    d8 = d13;
                    data2 = data2;
                    length = length;
                    d5 = 0.0d;
                }
                dArr = data2;
                i = length;
                d6 = d11;
            } else {
                i = length;
                dArr = data2;
                if (d10 < d5) {
                    int i16 = i11 - 1;
                    if (FastMath.abs(data[i11][i16]) > FastMath.abs(data[i16][i11])) {
                        data[i16][i16] = d10 / data[i11][i16];
                        data[i16][i11] = (-(data[i11][i11] - d9)) / data[i11][i16];
                        d2 = d10;
                        i2 = i11;
                    } else {
                        d2 = d10;
                        i2 = i11;
                        Complex complexCdiv = cdiv(0.0d, -data[i16][i11], data[i16][i16] - d9, d2);
                        data[i16][i16] = complexCdiv.getReal();
                        data[i16][i2] = complexCdiv.getImaginary();
                    }
                    data[i2][i16] = 0.0d;
                    data[i2][i2] = 1.0d;
                    int i17 = i2 - 2;
                    int i18 = i16;
                    double d18 = d6;
                    double d19 = d8;
                    while (i17 >= 0) {
                        int i19 = i18;
                        double d20 = 0.0d;
                        double d21 = 0.0d;
                        while (i18 <= i2) {
                            d21 += data[i17][i18] * data[i18][i16];
                            d20 += data[i17][i18] * data[i18][i2];
                            i18++;
                        }
                        double d22 = data[i17][i17] - d9;
                        if (Precision.compareTo(this.imagEigenvalues[i17], 0.0d, 1.0E-12d) < 0) {
                            d19 = d21;
                            i5 = i10;
                            i7 = i2;
                            i18 = i19;
                            d7 = d22;
                        } else {
                            double d23 = d19;
                            double d24 = d18;
                            if (Precision.equals(this.imagEigenvalues[i17], 0.0d)) {
                                Complex complexCdiv2 = cdiv(-d21, -d20, d22, d2);
                                data[i17][i16] = complexCdiv2.getReal();
                                data[i17][i2] = complexCdiv2.getImaginary();
                                i5 = i10;
                                i6 = i2;
                                d4 = d24;
                                d3 = d23;
                            } else {
                                int i20 = i17 + 1;
                                double d25 = data[i17][i20];
                                double d26 = data[i20][i17];
                                double[] dArr5 = this.realEigenvalues;
                                double d27 = (dArr5[i17] - d9) * (dArr5[i17] - d9);
                                double[] dArr6 = this.imagEigenvalues;
                                double dAbs3 = (d27 + (dArr6[i17] * dArr6[i17])) - (d2 * d2);
                                double d28 = (dArr5[i17] - d9) * 2.0d * d2;
                                i5 = i10;
                                i6 = i2;
                                if (Precision.equals(dAbs3, 0.0d) && Precision.equals(d28, 0.0d)) {
                                    dAbs3 = Precision.EPSILON * dAbs * (FastMath.abs(d22) + FastMath.abs(d2) + FastMath.abs(d25) + FastMath.abs(d26) + FastMath.abs(d7));
                                }
                                double d29 = d20;
                                double d30 = d21;
                                Complex complexCdiv3 = cdiv(((d25 * d23) - (d7 * d21)) + (d2 * d20), ((d25 * d24) - (d7 * d20)) - (d2 * d21), dAbs3, d28);
                                data[i17][i16] = complexCdiv3.getReal();
                                data[i17][i6] = complexCdiv3.getImaginary();
                                if (FastMath.abs(d25) > FastMath.abs(d7) + FastMath.abs(d2)) {
                                    data[i20][i16] = (((-d30) - (data[i17][i16] * d22)) + (d2 * data[i17][i6])) / d25;
                                    data[i20][i6] = (((-d29) - (d22 * data[i17][i6])) - (d2 * data[i17][i16])) / d25;
                                    d3 = d23;
                                    d4 = d24;
                                } else {
                                    d3 = d23;
                                    d4 = d24;
                                    Complex complexCdiv4 = cdiv((-d3) - (data[i17][i16] * d26), (-d24) - (d26 * data[i17][i6]), d7, d2);
                                    data[i20][i16] = complexCdiv4.getReal();
                                    data[i20][i6] = complexCdiv4.getImaginary();
                                }
                            }
                            double dMax = FastMath.max(FastMath.abs(data[i17][i16]), FastMath.abs(data[i17][i6]));
                            if (Precision.EPSILON * dMax * dMax > 1.0d) {
                                i7 = i6;
                                for (int i21 = i17; i21 <= i7; i21++) {
                                    double[] dArr7 = data[i21];
                                    dArr7[i16] = dArr7[i16] / dMax;
                                    double[] dArr8 = data[i21];
                                    dArr8[i7] = dArr8[i7] / dMax;
                                }
                            } else {
                                i7 = i6;
                            }
                            d19 = d3;
                            i18 = i17;
                            d20 = d4;
                        }
                        i17--;
                        i2 = i7;
                        i10 = i5;
                        d18 = d20;
                    }
                    double d31 = d18;
                    i3 = i10;
                    i4 = i2;
                    d6 = d31;
                    d8 = d19;
                }
                i11 = i4 - 1;
                data2 = dArr;
                length = i;
                i10 = i3;
                d5 = 0.0d;
            }
            i3 = i10;
            i4 = i11;
            i11 = i4 - 1;
            data2 = dArr;
            length = i;
            i10 = i3;
            d5 = 0.0d;
        }
        int i22 = i10;
        double[][] dArr9 = data2;
        int i23 = length;
        while (i10 >= 0) {
            int i24 = i22;
            for (int i25 = 0; i25 <= i24; i25++) {
                double d32 = 0.0d;
                for (int i26 = 0; i26 <= FastMath.min(i10, i24); i26++) {
                    d32 += dArr9[i25][i26] * data[i26][i10];
                }
                dArr9[i25][i10] = d32;
            }
            i10--;
            i22 = i24;
        }
        this.eigenvectors = new ArrayRealVector[i23];
        double[] dArr10 = new double[i23];
        for (int i27 = 0; i27 < i23; i27++) {
            for (int i28 = 0; i28 < i23; i28++) {
                dArr10[i28] = dArr9[i28][i27];
            }
            this.eigenvectors[i27] = new ArrayRealVector(dArr10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0068  */
    private SchurTransformer transformToSchur(RealMatrix realMatrix) {
        SchurTransformer schurTransformer = new SchurTransformer(realMatrix);
        double[][] data = schurTransformer.getT().getData();
        this.realEigenvalues = new double[data.length];
        this.imagEigenvalues = new double[data.length];
        int i = 0;
        while (true) {
            double[] dArr = this.realEigenvalues;
            if (i >= dArr.length) {
                return schurTransformer;
            }
            if (i != dArr.length - 1) {
                int i2 = i + 1;
                if (Precision.equals(data[i2][i], 0.0d, 1.0E-12d)) {
                    this.realEigenvalues[i] = data[i][i];
                } else {
                    double d2 = data[i2][i2];
                    double d3 = (data[i][i] - d2) * 0.5d;
                    double dSqrt = FastMath.sqrt(FastMath.abs((d3 * d3) + (data[i2][i] * data[i][i2])));
                    double[] dArr2 = this.realEigenvalues;
                    double d4 = d2 + d3;
                    dArr2[i] = d4;
                    double[] dArr3 = this.imagEigenvalues;
                    dArr3[i] = dSqrt;
                    dArr2[i2] = d4;
                    dArr3[i2] = -dSqrt;
                    i = i2;
                }
            } else {
                this.realEigenvalues[i] = data[i][i];
            }
            i++;
        }
    }

    private void transformToTridiagonal(RealMatrix realMatrix) {
        TriDiagonalTransformer triDiagonalTransformer = new TriDiagonalTransformer(realMatrix);
        this.transformer = triDiagonalTransformer;
        this.main = triDiagonalTransformer.getMainDiagonalRef();
        this.secondary = this.transformer.getSecondaryDiagonalRef();
    }

    public RealMatrix getD() {
        if (this.cachedD == null) {
            this.cachedD = MatrixUtils.createRealDiagonalMatrix(this.realEigenvalues);
            int i = 0;
            while (true) {
                double[] dArr = this.imagEigenvalues;
                if (i >= dArr.length) {
                    break;
                }
                if (Precision.compareTo(dArr[i], 0.0d, 1.0E-12d) > 0) {
                    this.cachedD.setEntry(i, i + 1, this.imagEigenvalues[i]);
                } else if (Precision.compareTo(this.imagEigenvalues[i], 0.0d, 1.0E-12d) < 0) {
                    this.cachedD.setEntry(i, i - 1, this.imagEigenvalues[i]);
                }
                i++;
            }
        }
        return this.cachedD;
    }

    public double getDeterminant() {
        double d2 = 1.0d;
        for (double d3 : this.realEigenvalues) {
            d2 *= d3;
        }
        return d2;
    }

    public RealVector getEigenvector(int i) {
        return this.eigenvectors[i].copy();
    }

    public double getImagEigenvalue(int i) {
        return this.imagEigenvalues[i];
    }

    public double[] getImagEigenvalues() {
        return (double[]) this.imagEigenvalues.clone();
    }

    public double getRealEigenvalue(int i) {
        return this.realEigenvalues[i];
    }

    public double[] getRealEigenvalues() {
        return (double[]) this.realEigenvalues.clone();
    }

    public DecompositionSolver getSolver() {
        if (hasComplexEigenvalues()) {
            throw new MathUnsupportedOperationException();
        }
        return new Solver(this.realEigenvalues, this.imagEigenvalues, this.eigenvectors);
    }

    public RealMatrix getSquareRoot() {
        if (!this.isSymmetric) {
            throw new MathUnsupportedOperationException();
        }
        double[] dArr = new double[this.realEigenvalues.length];
        int i = 0;
        while (true) {
            double[] dArr2 = this.realEigenvalues;
            if (i >= dArr2.length) {
                RealMatrix realMatrixCreateRealDiagonalMatrix = MatrixUtils.createRealDiagonalMatrix(dArr);
                RealMatrix v = getV();
                return v.multiply(realMatrixCreateRealDiagonalMatrix).multiply(getVT());
            }
            double d2 = dArr2[i];
            if (d2 <= 0.0d) {
                throw new MathUnsupportedOperationException();
            }
            dArr[i] = FastMath.sqrt(d2);
            i++;
        }
    }

    public RealMatrix getV() {
        if (this.cachedV == null) {
            int length = this.eigenvectors.length;
            this.cachedV = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                this.cachedV.setColumnVector(i, this.eigenvectors[i]);
            }
        }
        return this.cachedV;
    }

    public RealMatrix getVT() {
        if (this.cachedVt == null) {
            int length = this.eigenvectors.length;
            this.cachedVt = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                this.cachedVt.setRowVector(i, this.eigenvectors[i]);
            }
        }
        return this.cachedVt;
    }

    public boolean hasComplexEigenvalues() {
        int i = 0;
        while (true) {
            double[] dArr = this.imagEigenvalues;
            if (i >= dArr.length) {
                return false;
            }
            if (!Precision.equals(dArr[i], 0.0d, 1.0E-12d)) {
                return true;
            }
            i++;
        }
    }

    @Deprecated
    public EigenDecomposition(RealMatrix realMatrix, double d2) throws MathArithmeticException {
        this(realMatrix);
    }

    public EigenDecomposition(double[] dArr, double[] dArr2) {
        this.maxIter = Ascii.RS;
        this.isSymmetric = true;
        this.main = (double[]) dArr.clone();
        this.secondary = (double[]) dArr2.clone();
        this.transformer = null;
        int length = dArr.length;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
        for (int i = 0; i < length; i++) {
            dArr3[i][i] = 1.0d;
        }
        findEigenVectors(dArr3);
    }

    @Deprecated
    public EigenDecomposition(double[] dArr, double[] dArr2, double d2) {
        this(dArr, dArr2);
    }
}
