package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class LevenbergMarquardtOptimizer extends AbstractLeastSquaresOptimizer {
    private static final double TWO_EPS = Precision.EPSILON * 2.0d;
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

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
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
        double dMin = dSqrt2 / d3;
        double d17 = 0.0d;
        if (dMin == 0.0d) {
            dMin = Precision.SAFE_MIN / FastMath.min(d3, 0.1d);
        }
        double dMin2 = FastMath.min(dMin, FastMath.max(this.lmPar, dMax));
        this.lmPar = dMin2;
        if (dMin2 == 0.0d) {
            this.lmPar = dSqrt2 / dSqrt;
        }
        int i17 = 10;
        double d18 = d16;
        while (i17 >= 0) {
            if (this.lmPar == d17) {
                this.lmPar = FastMath.max(Precision.SAFE_MIN, dMin * 0.001d);
            }
            double dSqrt3 = FastMath.sqrt(this.lmPar);
            for (int i18 = 0; i18 < this.solvedCols; i18++) {
                int i19 = this.permutation[i18];
                dArr3[i19] = dArr2[i19] * dSqrt3;
            }
            determineLMDirection(dArr6, dArr3, dArr4, dArr5);
            double d19 = 0.0d;
            for (int i20 = 0; i20 < this.solvedCols; i20++) {
                int i21 = this.permutation[i20];
                double d20 = dArr2[i21] * this.lmDir[i21];
                dArr5[i21] = d20;
                d19 += d20 * d20;
            }
            double dSqrt4 = FastMath.sqrt(d19);
            double d21 = dSqrt4 - d3;
            if (FastMath.abs(d21) <= d8) {
                return;
            }
            if (dMax == 0.0d && d21 <= d18 && d18 < 0.0d) {
                return;
            }
            for (int i22 = 0; i22 < this.solvedCols; i22++) {
                int i23 = this.permutation[i22];
                dArr3[i23] = (dArr5[i23] * dArr2[i23]) / dSqrt4;
            }
            int i24 = 0;
            while (i24 < this.solvedCols) {
                int i25 = this.permutation[i24];
                dArr3[i25] = dArr3[i25] / dArr4[i24];
                double d22 = dArr3[i25];
                i24++;
                for (int i26 = i24; i26 < this.solvedCols; i26++) {
                    int i27 = this.permutation[i26];
                    dArr3[i27] = dArr3[i27] - (this.weightedJacobian[i26][i25] * d22);
                }
            }
            double d23 = 0.0d;
            for (int i28 = 0; i28 < this.solvedCols; i28++) {
                double d24 = dArr3[this.permutation[i28]];
                d23 += d24 * d24;
            }
            double d25 = d21 / (d23 * d3);
            d17 = 0.0d;
            if (d21 > 0.0d) {
                dMax = FastMath.max(dMax, this.lmPar);
            } else if (d21 < 0.0d) {
                dMin = FastMath.min(dMin, this.lmPar);
            }
            this.lmPar = FastMath.max(dMax, this.lmPar + d25);
            i17--;
            dArr6 = dArr;
            d3 = d2;
            d18 = d21;
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

    public LevenbergMarquardtOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(100.0d, convergenceChecker, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair doOptimize() {
        double d2;
        boolean z;
        RealMatrix realMatrix;
        double d3;
        double dMin;
        double[] dArr;
        double[] dArr2;
        double d4;
        RealMatrix realMatrix2;
        checkParameters();
        int length = getTarget().length;
        double[] startPoint = getStartPoint();
        int length2 = startPoint.length;
        this.solvedCols = FastMath.min(length, length2);
        this.diagR = new double[length2];
        this.jacNorm = new double[length2];
        this.beta = new double[length2];
        this.permutation = new int[length2];
        this.lmDir = new double[length2];
        double[] dArr3 = new double[length2];
        double[] dArr4 = new double[length2];
        double[] dArr5 = new double[length];
        double[] dArr6 = new double[length];
        double[] dArr7 = new double[length];
        double[] dArr8 = new double[length2];
        RealMatrix weightSquareRoot = getWeightSquareRoot();
        double[] dArrComputeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArrComputeResiduals = computeResiduals(dArrComputeObjectiveValue);
        PointVectorValuePair pointVectorValuePair = new PointVectorValuePair(startPoint, dArrComputeObjectiveValue);
        double dComputeCost = computeCost(dArrComputeResiduals);
        double[] dArr9 = new double[length2];
        double[] dArr10 = new double[length2];
        this.lmPar = 0.0d;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker = getConvergenceChecker();
        double d5 = dComputeCost;
        double d6 = 0.0d;
        double dSqrt = 0.0d;
        PointVectorValuePair pointVectorValuePair2 = pointVectorValuePair;
        boolean z2 = true;
        while (true) {
            incrementIterationCount();
            double[] dArr11 = dArr5;
            qrDecomposition(computeWeightedJacobian(startPoint));
            this.weightedResidual = weightSquareRoot.operate(dArrComputeResiduals);
            int i = 0;
            while (i < length) {
                dArr7[i] = this.weightedResidual[i];
                i++;
                dArrComputeObjectiveValue = dArrComputeObjectiveValue;
            }
            double[] dArr12 = dArrComputeObjectiveValue;
            qTy(dArr7);
            int i2 = 0;
            while (i2 < this.solvedCols) {
                int i3 = this.permutation[i2];
                this.weightedJacobian[i2][i3] = this.diagR[i3];
                i2++;
                dArrComputeResiduals = dArrComputeResiduals;
                convergenceChecker = convergenceChecker;
            }
            double[] dArr13 = dArrComputeResiduals;
            ConvergenceChecker<PointVectorValuePair> convergenceChecker2 = convergenceChecker;
            if (z2) {
                double d7 = 0.0d;
                for (int i4 = 0; i4 < length2; i4++) {
                    double d8 = this.jacNorm[i4];
                    if (d8 == 0.0d) {
                        d8 = 1.0d;
                    }
                    double d9 = startPoint[i4] * d8;
                    d7 += d9 * d9;
                    dArr3[i4] = d8;
                }
                dSqrt = FastMath.sqrt(d7);
                d2 = 0.0d;
                d6 = dSqrt == 0.0d ? this.initialStepBoundFactor : this.initialStepBoundFactor * dSqrt;
            } else {
                d2 = 0.0d;
            }
            if (d5 != d2) {
                double dMax = d2;
                int i5 = 0;
                while (i5 < this.solvedCols) {
                    int i6 = this.permutation[i5];
                    boolean z3 = z2;
                    double d10 = this.jacNorm[i6];
                    if (d10 != d2) {
                        double d11 = d2;
                        int i7 = 0;
                        while (i7 <= i5) {
                            d11 += this.weightedJacobian[i7][i6] * dArr7[i7];
                            i7++;
                            weightSquareRoot = weightSquareRoot;
                        }
                        realMatrix2 = weightSquareRoot;
                        dMax = FastMath.max(dMax, FastMath.abs(d11) / (d10 * d5));
                    } else {
                        realMatrix2 = weightSquareRoot;
                    }
                    i5++;
                    z2 = z3;
                    weightSquareRoot = realMatrix2;
                }
                z = z2;
                realMatrix = weightSquareRoot;
                d3 = dMax;
            } else {
                z = z2;
                realMatrix = weightSquareRoot;
                d3 = d2;
            }
            if (d3 <= this.orthoTolerance) {
                setCost(d5);
                return pointVectorValuePair2;
            }
            for (int i8 = 0; i8 < length2; i8++) {
                dArr3[i8] = FastMath.max(dArr3[i8], this.jacNorm[i8]);
            }
            PointVectorValuePair pointVectorValuePair3 = pointVectorValuePair2;
            double d12 = d2;
            dArr5 = dArr11;
            dArrComputeResiduals = dArr13;
            double[] dArr14 = dArr12;
            double dSqrt2 = dSqrt;
            double d13 = d6;
            double d14 = d5;
            while (d12 < 1.0E-4d) {
                for (int i9 = 0; i9 < this.solvedCols; i9++) {
                    int i10 = this.permutation[i9];
                    dArr4[i10] = startPoint[i10];
                }
                double[] dArr15 = this.weightedResidual;
                this.weightedResidual = dArr5;
                ConvergenceChecker<PointVectorValuePair> convergenceChecker3 = convergenceChecker2;
                int i11 = length;
                RealMatrix realMatrix3 = realMatrix;
                double[] dArr16 = dArr9;
                double d15 = d2;
                double[] dArr17 = dArr7;
                double[] dArr18 = dArr14;
                double[] dArr19 = dArr10;
                PointVectorValuePair pointVectorValuePair4 = pointVectorValuePair2;
                determineLMParameter(dArr7, d13, dArr3, dArr8, dArr10, dArr16);
                double d16 = d15;
                for (int i12 = 0; i12 < this.solvedCols; i12++) {
                    int i13 = this.permutation[i12];
                    double[] dArr20 = this.lmDir;
                    dArr20[i13] = -dArr20[i13];
                    startPoint[i13] = dArr4[i13] + dArr20[i13];
                    double d17 = dArr3[i13] * dArr20[i13];
                    d16 += d17 * d17;
                }
                double dSqrt3 = FastMath.sqrt(d16);
                double dMin2 = d13;
                if (z) {
                    dMin2 = FastMath.min(dMin2, dSqrt3);
                }
                double[] dArrComputeObjectiveValue2 = computeObjectiveValue(startPoint);
                double[] dArrComputeResiduals2 = computeResiduals(dArrComputeObjectiveValue2);
                PointVectorValuePair pointVectorValuePair5 = new PointVectorValuePair(startPoint, dArrComputeObjectiveValue2);
                double dComputeCost2 = computeCost(dArrComputeResiduals2);
                double d18 = -1.0d;
                double d19 = 0.1d;
                double d20 = dComputeCost2 * 0.1d;
                if (d20 < d14) {
                    double d21 = dComputeCost2 / d14;
                    d18 = 1.0d - (d21 * d21);
                }
                double[] dArr21 = dArr4;
                int i14 = 0;
                while (i14 < this.solvedCols) {
                    int i15 = this.permutation[i14];
                    double d22 = dComputeCost2;
                    double d23 = this.lmDir[i15];
                    dArr8[i14] = d15;
                    for (int i16 = 0; i16 <= i14; i16++) {
                        dArr8[i16] = dArr8[i16] + (this.weightedJacobian[i16][i15] * d23);
                    }
                    i14++;
                    dComputeCost2 = d22;
                }
                double d24 = dComputeCost2;
                double d25 = d15;
                for (int i17 = 0; i17 < this.solvedCols; i17++) {
                    d25 += dArr8[i17] * dArr8[i17];
                }
                double d26 = d14 * d14;
                double d27 = d25 / d26;
                double d28 = this.lmPar;
                double d29 = ((d28 * dSqrt3) * dSqrt3) / d26;
                double d30 = d27 + (d29 * 2.0d);
                double d31 = -(d27 + d29);
                double d32 = d30 == d15 ? d15 : d18 / d30;
                if (d32 <= 0.25d) {
                    double d33 = d18 < d15 ? (d31 * 0.5d) / (d31 + (0.5d * d18)) : 0.5d;
                    if (d20 < d14 && d33 >= 0.1d) {
                        d19 = d33;
                    }
                    dMin = FastMath.min(dMin2, dSqrt3 * 10.0d) * d19;
                    this.lmPar /= d19;
                } else if (d28 == d15 || d32 >= 0.75d) {
                    dMin = dSqrt3 * 2.0d;
                    this.lmPar = d28 * 0.5d;
                } else {
                    dMin = dMin2;
                }
                if (d32 >= 1.0E-4d) {
                    double d34 = d15;
                    for (int i18 = 0; i18 < length2; i18++) {
                        double d35 = dArr3[i18] * startPoint[i18];
                        d34 += d35 * d35;
                    }
                    dSqrt2 = FastMath.sqrt(d34);
                    if (convergenceChecker3 != null && convergenceChecker3.converged(getIterations(), pointVectorValuePair4, pointVectorValuePair5)) {
                        setCost(d24);
                        return pointVectorValuePair5;
                    }
                    d4 = d24;
                    pointVectorValuePair3 = pointVectorValuePair5;
                    dArr = dArr15;
                    dArr2 = dArrComputeObjectiveValue2;
                    z = false;
                } else {
                    for (int i19 = 0; i19 < this.solvedCols; i19++) {
                        int i20 = this.permutation[i19];
                        startPoint[i20] = dArr21[i20];
                    }
                    dArr = this.weightedResidual;
                    this.weightedResidual = dArr15;
                    pointVectorValuePair3 = new PointVectorValuePair(startPoint, dArr18);
                    dArr2 = dArr18;
                    d4 = d14;
                }
                double dAbs = FastMath.abs(d18);
                double[] dArr22 = dArr2;
                double d36 = this.costRelativeTolerance;
                if ((dAbs <= d36 && d30 <= d36 && d32 <= 2.0d) || dMin <= this.parRelativeTolerance * dSqrt2) {
                    setCost(d4);
                    return pointVectorValuePair3;
                }
                double dAbs2 = FastMath.abs(d18);
                double d37 = TWO_EPS;
                if (dAbs2 <= d37 && d30 <= d37 && d32 <= 2.0d) {
                    throw new ConvergenceException(LocalizedFormats.TOO_SMALL_COST_RELATIVE_TOLERANCE, Double.valueOf(this.costRelativeTolerance));
                }
                if (dMin <= d37 * dSqrt2) {
                    throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                }
                if (d3 <= d37) {
                    throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                }
                d14 = d4;
                dArr14 = dArr22;
                dArr10 = dArr19;
                realMatrix = realMatrix3;
                dArr4 = dArr21;
                d12 = d32;
                pointVectorValuePair2 = pointVectorValuePair4;
                dArr7 = dArr17;
                d2 = d15;
                dArr9 = dArr16;
                double d38 = dMin;
                dArr5 = dArr;
                dArrComputeResiduals = dArrComputeResiduals2;
                d13 = d38;
                convergenceChecker2 = convergenceChecker3;
                length = i11;
            }
            double d39 = d13;
            pointVectorValuePair2 = pointVectorValuePair3;
            dArrComputeObjectiveValue = dArr14;
            dArr9 = dArr9;
            d5 = d14;
            dSqrt = dSqrt2;
            z2 = z;
            d6 = d39;
            convergenceChecker = convergenceChecker2;
            length = length;
            weightSquareRoot = realMatrix;
        }
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
