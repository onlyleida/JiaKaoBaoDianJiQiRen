package org.apache.commons.math3.optimization.general;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class LevenbergMarquardtOptimizer extends AbstractLeastSquaresOptimizer {
    private double[] beta;
    private final double costRelativeTolerance;
    private double[] diagR;
    private final double initialStepBoundFactor;
    private double[] jacNorm;
    private double[] lmDir;
    private double lmPar;
    private final double orthoTolerance;
    private final double parRelativeTolerance;
    private int[] permutation;
    private final double qrRankingThreshold;
    private int rank;
    private int solvedCols;
    private double[][] weightedJacobian;
    private double[] weightedResidual;

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    private void determineLMDirection(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        int i;
        double dSqrt;
        double d2;
        int i2 = 0;
        while (i2 < this.solvedCols) {
            int i3 = this.permutation[i2];
            int i4 = i2 + 1;
            for (int i5 = i4; i5 < this.solvedCols; i5++) {
                double[][] dArr5 = this.weightedJacobian;
                dArr5[i5][i3] = dArr5[i2][this.permutation[i5]];
            }
            this.lmDir[i2] = this.diagR[i3];
            dArr4[i2] = dArr[i2];
            i2 = i4;
        }
        int i6 = 0;
        while (true) {
            i = this.solvedCols;
            double d3 = 0.0d;
            if (i6 >= i) {
                break;
            }
            double d4 = dArr2[this.permutation[i6]];
            if (d4 != 0.0d) {
                Arrays.fill(dArr3, i6 + 1, dArr3.length, 0.0d);
            }
            dArr3[i6] = d4;
            int i7 = i6;
            double d5 = 0.0d;
            while (i7 < this.solvedCols) {
                int i8 = this.permutation[i7];
                if (dArr3[i7] != d3) {
                    double d6 = this.weightedJacobian[i7][i8];
                    if (FastMath.abs(d6) < FastMath.abs(dArr3[i7])) {
                        double d7 = d6 / dArr3[i7];
                        dSqrt = 1.0d / FastMath.sqrt((d7 * d7) + 1.0d);
                        d2 = d7 * dSqrt;
                    } else {
                        double d8 = dArr3[i7] / d6;
                        double dSqrt2 = 1.0d / FastMath.sqrt((d8 * d8) + 1.0d);
                        dSqrt = dSqrt2 * d8;
                        d2 = dSqrt2;
                    }
                    double d9 = dSqrt;
                    this.weightedJacobian[i7][i8] = (d6 * d2) + (dArr3[i7] * d9);
                    double d10 = (dArr4[i7] * d2) + (d9 * d5);
                    double d11 = -d9;
                    d5 = (dArr4[i7] * d11) + (d5 * d2);
                    dArr4[i7] = d10;
                    for (int i9 = i7 + 1; i9 < this.solvedCols; i9++) {
                        double[][] dArr6 = this.weightedJacobian;
                        double d12 = dArr6[i9][i8];
                        double d13 = (d2 * d12) + (dArr3[i9] * d9);
                        dArr3[i9] = (d12 * d11) + (dArr3[i9] * d2);
                        dArr6[i9][i8] = d13;
                    }
                }
                i7++;
                i6 = i6;
                d3 = 0.0d;
            }
            int i10 = i6;
            double[][] dArr7 = this.weightedJacobian;
            double[] dArr8 = dArr7[i10];
            int[] iArr = this.permutation;
            dArr3[i10] = dArr8[iArr[i10]];
            dArr7[i10][iArr[i10]] = this.lmDir[i10];
            i6 = i10 + 1;
        }
        int i11 = 0;
        while (true) {
            int i12 = this.solvedCols;
            if (i11 >= i12) {
                break;
            }
            if (dArr3[i11] == 0.0d && i == i12) {
                i = i11;
            }
            if (i < i12) {
                dArr4[i11] = 0.0d;
            }
            i11++;
        }
        if (i > 0) {
            for (int i13 = i - 1; i13 >= 0; i13--) {
                int i14 = this.permutation[i13];
                double d14 = 0.0d;
                for (int i15 = i13 + 1; i15 < i; i15++) {
                    d14 += this.weightedJacobian[i15][i14] * dArr4[i15];
                }
                dArr4[i13] = (dArr4[i13] - d14) / dArr3[i13];
            }
        }
        int i16 = 0;
        while (true) {
            double[] dArr9 = this.lmDir;
            if (i16 >= dArr9.length) {
                return;
            }
            dArr9[this.permutation[i16]] = dArr4[i16];
            i16++;
        }
    }

    private void determineLMParameter(double[] dArr, double d2, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5) {
        int i;
        double dMax;
        long j;
        double dMin;
        double[] dArr6 = dArr;
        double d3 = d2;
        int length = this.weightedJacobian[0].length;
        int i2 = 0;
        while (true) {
            i = this.rank;
            if (i2 >= i) {
                break;
            }
            this.lmDir[this.permutation[i2]] = dArr6[i2];
            i2++;
        }
        while (i < length) {
            this.lmDir[this.permutation[i]] = 0.0d;
            i++;
        }
        for (int i3 = this.rank - 1; i3 >= 0; i3--) {
            int i4 = this.permutation[i3];
            double d4 = this.lmDir[i4] / this.diagR[i4];
            for (int i5 = 0; i5 < i3; i5++) {
                double[] dArr7 = this.lmDir;
                int i6 = this.permutation[i5];
                dArr7[i6] = dArr7[i6] - (this.weightedJacobian[i5][i4] * d4);
            }
            this.lmDir[i4] = d4;
        }
        double d5 = 0.0d;
        for (int i7 = 0; i7 < this.solvedCols; i7++) {
            int i8 = this.permutation[i7];
            double d6 = dArr2[i8] * this.lmDir[i8];
            dArr3[i8] = d6;
            d5 += d6 * d6;
        }
        double dSqrt = FastMath.sqrt(d5);
        double d7 = dSqrt - d3;
        double d8 = d3 * 0.1d;
        if (d7 <= d8) {
            this.lmPar = 0.0d;
            return;
        }
        if (this.rank == this.solvedCols) {
            for (int i9 = 0; i9 < this.solvedCols; i9++) {
                int i10 = this.permutation[i9];
                dArr3[i10] = dArr3[i10] * (dArr2[i10] / dSqrt);
            }
            double d9 = 0.0d;
            for (int i11 = 0; i11 < this.solvedCols; i11++) {
                int i12 = this.permutation[i11];
                double d10 = 0.0d;
                for (int i13 = 0; i13 < i11; i13++) {
                    d10 += this.weightedJacobian[i13][i12] * dArr3[this.permutation[i13]];
                }
                double d11 = (dArr3[i12] - d10) / this.diagR[i12];
                dArr3[i12] = d11;
                d9 += d11 * d11;
            }
            dMax = d7 / (d9 * d3);
        } else {
            dMax = 0.0d;
        }
        int i14 = 0;
        double d12 = 0.0d;
        while (i14 < this.solvedCols) {
            int i15 = this.permutation[i14];
            double d13 = d7;
            double d14 = 0.0d;
            for (int i16 = 0; i16 <= i14; i16++) {
                d14 += this.weightedJacobian[i16][i15] * dArr6[i16];
            }
            double d15 = d14 / dArr2[i15];
            d12 += d15 * d15;
            i14++;
            d7 = d13;
        }
        double d16 = d7;
        double dSqrt2 = FastMath.sqrt(d12);
        double dMin2 = dSqrt2 / d3;
        double d17 = 0.0d;
        if (dMin2 == 0.0d) {
            dMin2 = 2.2251E-308d / FastMath.min(d3, 0.1d);
        }
        double dMin3 = FastMath.min(dMin2, FastMath.max(this.lmPar, dMax));
        this.lmPar = dMin3;
        if (dMin3 == 0.0d) {
            this.lmPar = dSqrt2 / dSqrt;
        }
        int i17 = 10;
        double d18 = d16;
        while (i17 >= 0) {
            if (this.lmPar == d17) {
                double d19 = 0.001d * dMin2;
                j = 4503652538340969L;
                this.lmPar = FastMath.max(2.2251E-308d, d19);
            } else {
                j = 4503652538340969L;
            }
            double dSqrt3 = FastMath.sqrt(this.lmPar);
            for (int i18 = 0; i18 < this.solvedCols; i18++) {
                int i19 = this.permutation[i18];
                dArr3[i19] = dArr2[i19] * dSqrt3;
            }
            double[] dArr8 = dArr4;
            determineLMDirection(dArr6, dArr3, dArr8, dArr5);
            double d20 = 0.0d;
            for (int i20 = 0; i20 < this.solvedCols; i20++) {
                int i21 = this.permutation[i20];
                double d21 = dArr2[i21] * this.lmDir[i21];
                dArr5[i21] = d21;
                d20 += d21 * d21;
            }
            double dSqrt4 = FastMath.sqrt(d20);
            double d22 = dSqrt4 - d3;
            if (FastMath.abs(d22) <= d8) {
                return;
            }
            if (dMax == 0.0d && d22 <= d18 && d18 < 0.0d) {
                return;
            }
            for (int i22 = 0; i22 < this.solvedCols; i22++) {
                int i23 = this.permutation[i22];
                dArr3[i23] = (dArr5[i23] * dArr2[i23]) / dSqrt4;
            }
            int i24 = 0;
            while (i24 < this.solvedCols) {
                int i25 = this.permutation[i24];
                dArr3[i25] = dArr3[i25] / dArr8[i24];
                double d23 = dArr3[i25];
                int i26 = i24 + 1;
                while (i26 < this.solvedCols) {
                    int i27 = this.permutation[i26];
                    dArr3[i27] = dArr3[i27] - (this.weightedJacobian[i26][i25] * d23);
                    i26++;
                }
                dArr8 = dArr4;
                i24 = i26;
            }
            double d24 = 0.0d;
            for (int i28 = 0; i28 < this.solvedCols; i28++) {
                double d25 = dArr3[this.permutation[i28]];
                d24 += d25 * d25;
            }
            double d26 = d22 / (d24 * d3);
            if (d22 > 0.0d) {
                dMax = FastMath.max(dMax, this.lmPar);
            } else {
                if (d22 < 0.0d) {
                    dMin = FastMath.min(dMin2, this.lmPar);
                }
                this.lmPar = FastMath.max(dMax, this.lmPar + d26);
                i17--;
                d18 = d22;
                d17 = 0.0d;
                dMin2 = dMin;
                dArr6 = dArr;
                d3 = d2;
            }
            dMin = dMin2;
            this.lmPar = FastMath.max(dMax, this.lmPar + d26);
            i17--;
            d18 = d22;
            d17 = 0.0d;
            dMin2 = dMin;
            dArr6 = dArr;
            d3 = d2;
        }
    }

    private void qTy(double[] dArr) {
        double[][] dArr2 = this.weightedJacobian;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i = 0; i < length2; i++) {
            int i2 = this.permutation[i];
            double d2 = 0.0d;
            for (int i3 = i; i3 < length; i3++) {
                d2 += this.weightedJacobian[i3][i2] * dArr[i3];
            }
            double d3 = d2 * this.beta[i2];
            for (int i4 = i; i4 < length; i4++) {
                dArr[i4] = dArr[i4] - (this.weightedJacobian[i4][i2] * d3);
            }
        }
    }

    private void qrDecomposition(RealMatrix realMatrix) throws ConvergenceException {
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        this.weightedJacobian = data;
        int length = data.length;
        char c = 0;
        int length2 = data[0].length;
        int i = 0;
        while (true) {
            double d2 = 0.0d;
            if (i >= length2) {
                break;
            }
            this.permutation[i] = i;
            for (int i2 = 0; i2 < length; i2++) {
                double d3 = this.weightedJacobian[i2][i];
                d2 += d3 * d3;
            }
            this.jacNorm[i] = FastMath.sqrt(d2);
            i++;
        }
        int i3 = 0;
        while (i3 < length2) {
            double d4 = Double.NEGATIVE_INFINITY;
            int i4 = -1;
            for (int i5 = i3; i5 < length2; i5++) {
                double d5 = 0.0d;
                for (int i6 = i3; i6 < length; i6++) {
                    double d6 = this.weightedJacobian[i6][this.permutation[i5]];
                    d5 += d6 * d6;
                }
                if (Double.isInfinite(d5) || Double.isNaN(d5)) {
                    LocalizedFormats localizedFormats = LocalizedFormats.UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN;
                    Object[] objArr = new Object[2];
                    objArr[c] = Integer.valueOf(length);
                    objArr[1] = Integer.valueOf(length2);
                    throw new ConvergenceException(localizedFormats, objArr);
                }
                if (d5 > d4) {
                    i4 = i5;
                    d4 = d5;
                }
            }
            if (d4 <= this.qrRankingThreshold) {
                this.rank = i3;
                return;
            }
            int[] iArr = this.permutation;
            int i7 = iArr[i4];
            iArr[i4] = iArr[i3];
            iArr[i3] = i7;
            double d7 = this.weightedJacobian[i3][i7];
            double dSqrt = d7 > 0.0d ? -FastMath.sqrt(d4) : FastMath.sqrt(d4);
            double d8 = 1.0d / (d4 - (d7 * dSqrt));
            this.beta[i7] = d8;
            this.diagR[i7] = dSqrt;
            double[] dArr = this.weightedJacobian[i3];
            dArr[i7] = dArr[i7] - dSqrt;
            for (int i8 = (length2 - 1) - i3; i8 > 0; i8--) {
                double d9 = 0.0d;
                for (int i9 = i3; i9 < length; i9++) {
                    double[][] dArr2 = this.weightedJacobian;
                    d9 += dArr2[i9][i7] * dArr2[i9][this.permutation[i3 + i8]];
                }
                double d10 = d9 * d8;
                for (int i10 = i3; i10 < length; i10++) {
                    double[][] dArr3 = this.weightedJacobian;
                    double[] dArr4 = dArr3[i10];
                    int i11 = this.permutation[i3 + i8];
                    dArr4[i11] = dArr4[i11] - (dArr3[i10][i7] * d10);
                }
            }
            i3++;
            c = 0;
        }
        this.rank = this.solvedCols;
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer
    protected PointVectorValuePair doOptimize() {
        double d2;
        RealMatrix realMatrix;
        int i;
        double d3;
        double dMin;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker;
        double[] dArr;
        PointVectorValuePair pointVectorValuePair;
        double d4;
        int i2;
        int length = getTarget().length;
        double[] startPoint = getStartPoint();
        int length2 = startPoint.length;
        this.solvedCols = FastMath.min(length, length2);
        this.diagR = new double[length2];
        this.jacNorm = new double[length2];
        this.beta = new double[length2];
        this.permutation = new int[length2];
        this.lmDir = new double[length2];
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length2];
        double[] dArr4 = new double[length];
        double[] dArr5 = new double[length];
        double[] dArr6 = new double[length2];
        double[] dArr7 = new double[length2];
        RealMatrix weightSquareRoot = getWeightSquareRoot();
        double[] dArrComputeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArrComputeResiduals = computeResiduals(dArrComputeObjectiveValue);
        PointVectorValuePair pointVectorValuePair2 = new PointVectorValuePair(startPoint, dArrComputeObjectiveValue);
        double dComputeCost = computeCost(dArrComputeResiduals);
        double[] dArr8 = new double[length2];
        this.lmPar = 0.0d;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker2 = getConvergenceChecker();
        PointVectorValuePair pointVectorValuePair3 = pointVectorValuePair2;
        boolean z = true;
        double d5 = 0.0d;
        double dSqrt = 0.0d;
        double[] dArr9 = new double[length];
        double[] dArr10 = dArrComputeObjectiveValue;
        double d6 = dComputeCost;
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            qrDecomposition(computeWeightedJacobian(startPoint));
            this.weightedResidual = weightSquareRoot.operate(dArrComputeResiduals);
            int i5 = 0;
            while (i5 < length) {
                dArr5[i5] = this.weightedResidual[i5];
                i5++;
                dArrComputeResiduals = dArrComputeResiduals;
            }
            double[] dArr11 = dArrComputeResiduals;
            qTy(dArr5);
            int i6 = 0;
            while (i6 < this.solvedCols) {
                int i7 = this.permutation[i6];
                this.weightedJacobian[i6][i7] = this.diagR[i7];
                i6++;
                dArr9 = dArr9;
                convergenceChecker2 = convergenceChecker2;
            }
            double[] dArr12 = dArr9;
            ConvergenceChecker<PointVectorValuePair> convergenceChecker3 = convergenceChecker2;
            if (z) {
                double d7 = 0.0d;
                for (int i8 = 0; i8 < length2; i8++) {
                    double d8 = this.jacNorm[i8];
                    if (d8 == 0.0d) {
                        d8 = 1.0d;
                    }
                    double d9 = startPoint[i8] * d8;
                    d7 += d9 * d9;
                    dArr2[i8] = d8;
                }
                dSqrt = FastMath.sqrt(d7);
                d2 = 0.0d;
                d5 = dSqrt == 0.0d ? this.initialStepBoundFactor : this.initialStepBoundFactor * dSqrt;
            } else {
                d2 = 0.0d;
            }
            if (d6 != d2) {
                double dMax = d2;
                int i9 = 0;
                while (i9 < this.solvedCols) {
                    int i10 = this.permutation[i9];
                    RealMatrix realMatrix2 = weightSquareRoot;
                    double d10 = this.jacNorm[i10];
                    if (d10 != d2) {
                        double d11 = d2;
                        int i11 = 0;
                        while (i11 <= i9) {
                            d11 += this.weightedJacobian[i11][i10] * dArr5[i11];
                            i11++;
                            length = length;
                        }
                        i2 = length;
                        dMax = FastMath.max(dMax, FastMath.abs(d11) / (d10 * d6));
                    } else {
                        i2 = length;
                    }
                    i9++;
                    weightSquareRoot = realMatrix2;
                    length = i2;
                }
                realMatrix = weightSquareRoot;
                i = length;
                d3 = dMax;
            } else {
                realMatrix = weightSquareRoot;
                i = length;
                d3 = d2;
            }
            if (d3 <= this.orthoTolerance) {
                setCost(d6);
                this.point = pointVectorValuePair3.getPoint();
                return pointVectorValuePair3;
            }
            int i12 = 0;
            while (i12 < length2) {
                dArr2[i12] = FastMath.max(dArr2[i12], this.jacNorm[i12]);
                i12++;
                d6 = d6;
            }
            double d12 = d6;
            PointVectorValuePair pointVectorValuePair4 = pointVectorValuePair3;
            double[] dArr13 = dArr10;
            double d13 = d2;
            dArrComputeResiduals = dArr11;
            double[] dArr14 = dArr12;
            while (d13 < 1.0E-4d) {
                for (int i13 = 0; i13 < this.solvedCols; i13++) {
                    int i14 = this.permutation[i13];
                    dArr3[i14] = startPoint[i14];
                }
                double[] dArr15 = this.weightedResidual;
                this.weightedResidual = dArr14;
                ConvergenceChecker<PointVectorValuePair> convergenceChecker4 = convergenceChecker3;
                double[] dArr16 = dArr5;
                RealMatrix realMatrix3 = realMatrix;
                double[] dArr17 = dArr8;
                double[] dArr18 = dArr13;
                double[] dArr19 = dArr15;
                PointVectorValuePair pointVectorValuePair5 = pointVectorValuePair3;
                determineLMParameter(dArr5, d5, dArr2, dArr6, dArr7, dArr17);
                double d14 = d2;
                for (int i15 = 0; i15 < this.solvedCols; i15++) {
                    int i16 = this.permutation[i15];
                    double[] dArr20 = this.lmDir;
                    dArr20[i16] = -dArr20[i16];
                    startPoint[i16] = dArr3[i16] + dArr20[i16];
                    double d15 = dArr2[i16] * dArr20[i16];
                    d14 += d15 * d15;
                }
                double dSqrt2 = FastMath.sqrt(d14);
                double dMin2 = d5;
                if (z) {
                    dMin2 = FastMath.min(dMin2, dSqrt2);
                }
                double[] dArrComputeObjectiveValue2 = computeObjectiveValue(startPoint);
                double[] dArrComputeResiduals2 = computeResiduals(dArrComputeObjectiveValue2);
                PointVectorValuePair pointVectorValuePair6 = new PointVectorValuePair(startPoint, dArrComputeObjectiveValue2);
                double dComputeCost2 = computeCost(dArrComputeResiduals2);
                double d16 = -1.0d;
                double d17 = 0.1d;
                double d18 = dComputeCost2 * 0.1d;
                if (d18 < d12) {
                    double d19 = dComputeCost2 / d12;
                    d16 = 1.0d - (d19 * d19);
                }
                int i17 = 0;
                while (i17 < this.solvedCols) {
                    int i18 = this.permutation[i17];
                    double[] dArr21 = dArr3;
                    double d20 = this.lmDir[i18];
                    dArr6[i17] = d2;
                    int i19 = 0;
                    while (i19 <= i17) {
                        dArr6[i19] = dArr6[i19] + (this.weightedJacobian[i19][i18] * d20);
                        i19++;
                        dComputeCost2 = dComputeCost2;
                    }
                    i17++;
                    dArr3 = dArr21;
                }
                double d21 = dComputeCost2;
                double[] dArr22 = dArr3;
                double d22 = d2;
                for (int i20 = 0; i20 < this.solvedCols; i20++) {
                    d22 += dArr6[i20] * dArr6[i20];
                }
                double d23 = d12 * d12;
                double d24 = d22 / d23;
                double d25 = this.lmPar;
                double d26 = ((d25 * dSqrt2) * dSqrt2) / d23;
                double d27 = d24 + (d26 * 2.0d);
                double d28 = -(d24 + d26);
                double d29 = d27 == d2 ? d2 : d16 / d27;
                if (d29 <= 0.25d) {
                    double d30 = d16 < d2 ? (d28 * 0.5d) / (d28 + (0.5d * d16)) : 0.5d;
                    if (d18 < d12 && d30 >= 0.1d) {
                        d17 = d30;
                    }
                    dMin = FastMath.min(dMin2, dSqrt2 * 10.0d) * d17;
                    this.lmPar /= d17;
                } else if (d25 == d2 || d29 >= 0.75d) {
                    dMin = dSqrt2 * 2.0d;
                    this.lmPar = d25 * 0.5d;
                } else {
                    dMin = dMin2;
                }
                if (d29 >= 1.0E-4d) {
                    double d31 = d2;
                    for (int i21 = 0; i21 < length2; i21++) {
                        double d32 = dArr2[i21] * startPoint[i21];
                        d31 += d32 * d32;
                    }
                    dSqrt = FastMath.sqrt(d31);
                    pointVectorValuePair = pointVectorValuePair6;
                    convergenceChecker = convergenceChecker4;
                    if (convergenceChecker4 != null) {
                        d4 = d21;
                        if (convergenceChecker.converged(i4, pointVectorValuePair5, pointVectorValuePair)) {
                            setCost(d4);
                            this.point = pointVectorValuePair.getPoint();
                            return pointVectorValuePair;
                        }
                    } else {
                        d4 = d21;
                    }
                    dArr = dArrComputeObjectiveValue2;
                    z = false;
                } else {
                    convergenceChecker = convergenceChecker4;
                    for (int i22 = 0; i22 < this.solvedCols; i22++) {
                        int i23 = this.permutation[i22];
                        startPoint[i23] = dArr22[i23];
                    }
                    double[] dArr23 = this.weightedResidual;
                    this.weightedResidual = dArr19;
                    dArr = dArr18;
                    dArr19 = dArr23;
                    pointVectorValuePair = new PointVectorValuePair(startPoint, dArr);
                    d4 = d12;
                }
                double dAbs = FastMath.abs(d16);
                double d33 = this.costRelativeTolerance;
                if ((dAbs <= d33 && d27 <= d33 && d29 <= 2.0d) || dMin <= this.parRelativeTolerance * dSqrt) {
                    setCost(d4);
                    this.point = pointVectorValuePair.getPoint();
                    return pointVectorValuePair;
                }
                if (FastMath.abs(d16) <= 2.2204E-16d && d27 <= 2.2204E-16d && d29 <= 2.0d) {
                    throw new ConvergenceException(LocalizedFormats.TOO_SMALL_COST_RELATIVE_TOLERANCE, Double.valueOf(this.costRelativeTolerance));
                }
                if (dMin <= dSqrt * 2.2204E-16d) {
                    throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                }
                if (d3 <= 2.2204E-16d) {
                    throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                }
                d5 = dMin;
                pointVectorValuePair4 = pointVectorValuePair;
                d12 = d4;
                dArr8 = dArr17;
                dArr5 = dArr16;
                dArr14 = dArr19;
                dArrComputeResiduals = dArrComputeResiduals2;
                dArr3 = dArr22;
                d13 = d29;
                convergenceChecker3 = convergenceChecker;
                realMatrix = realMatrix3;
                dArr13 = dArr;
                pointVectorValuePair3 = pointVectorValuePair5;
            }
            convergenceChecker2 = convergenceChecker3;
            dArr10 = dArr13;
            i3 = i4;
            weightSquareRoot = realMatrix;
            length = i;
            pointVectorValuePair3 = pointVectorValuePair4;
            dArr9 = dArr14;
            d6 = d12;
        }
    }

    public LevenbergMarquardtOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(100.0d, convergenceChecker, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d2, ConvergenceChecker<PointVectorValuePair> convergenceChecker, double d3, double d4, double d5, double d6) {
        super(convergenceChecker);
        this.initialStepBoundFactor = d2;
        this.costRelativeTolerance = d3;
        this.parRelativeTolerance = d4;
        this.orthoTolerance = d5;
        this.qrRankingThreshold = d6;
    }

    public LevenbergMarquardtOptimizer(double d2, double d3, double d4) {
        this(100.0d, d2, d3, d4, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d2, double d3, double d4, double d5, double d6) {
        super(null);
        this.initialStepBoundFactor = d2;
        this.costRelativeTolerance = d3;
        this.parRelativeTolerance = d4;
        this.orthoTolerance = d5;
        this.qrRankingThreshold = d6;
    }
}
