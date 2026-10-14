package org.apache.commons.math3.fitting.leastsquares;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class LevenbergMarquardtOptimizer implements LeastSquaresOptimizer {
    private static final double TWO_EPS = Precision.EPSILON * 2.0d;
    private final double costRelativeTolerance;
    private final double initialStepBoundFactor;
    private final double orthoTolerance;
    private final double parRelativeTolerance;
    private final double qrRankingThreshold;

    private static class InternalData {
        private final double[] beta;
        private final double[] diagR;
        private final double[] jacNorm;
        private final int[] permutation;
        private final int rank;
        private final double[][] weightedJacobian;

        InternalData(double[][] dArr, int[] iArr, int i, double[] dArr2, double[] dArr3, double[] dArr4) {
            this.weightedJacobian = dArr;
            this.permutation = iArr;
            this.rank = i;
            this.diagR = dArr2;
            this.jacNorm = dArr3;
            this.beta = dArr4;
        }
    }

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    private void determineLMDirection(double[] dArr, double[] dArr2, double[] dArr3, InternalData internalData, int i, double[] dArr4, double[] dArr5) {
        double dSqrt;
        double d2;
        double[] dArr6 = dArr5;
        int[] iArr = internalData.permutation;
        double[][] dArr7 = internalData.weightedJacobian;
        double[] dArr8 = internalData.diagR;
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2];
            int i4 = i2 + 1;
            for (int i5 = i4; i5 < i; i5++) {
                dArr7[i5][i3] = dArr7[i2][iArr[i5]];
            }
            dArr6[i2] = dArr8[i3];
            dArr4[i2] = dArr[i2];
            i2 = i4;
        }
        int i6 = 0;
        while (true) {
            double d3 = 0.0d;
            if (i6 >= i) {
                break;
            }
            double d4 = dArr2[iArr[i6]];
            if (d4 != 0.0d) {
                Arrays.fill(dArr3, i6 + 1, dArr3.length, 0.0d);
            }
            dArr3[i6] = d4;
            int i7 = i6;
            double d5 = 0.0d;
            while (i7 < i) {
                int i8 = iArr[i7];
                if (dArr3[i7] != d3) {
                    double d6 = dArr7[i7][i8];
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
                    dArr7[i7][i8] = (d6 * d2) + (dArr3[i7] * d9);
                    double d10 = (dArr4[i7] * d2) + (d9 * d5);
                    double d11 = -d9;
                    d5 = (dArr4[i7] * d11) + (d5 * d2);
                    dArr4[i7] = d10;
                    for (int i9 = i7 + 1; i9 < i; i9++) {
                        double d12 = dArr7[i9][i8];
                        double d13 = (d2 * d12) + (dArr3[i9] * d9);
                        dArr3[i9] = (d12 * d11) + (dArr3[i9] * d2);
                        dArr7[i9][i8] = d13;
                    }
                }
                i7++;
                iArr = iArr;
                d3 = 0.0d;
            }
            int[] iArr2 = iArr;
            dArr3[i6] = dArr7[i6][iArr2[i6]];
            dArr7[i6][iArr2[i6]] = dArr5[i6];
            i6++;
            dArr6 = dArr5;
            iArr = iArr2;
        }
        double[] dArr9 = dArr6;
        int[] iArr3 = iArr;
        int i10 = i;
        for (int i11 = 0; i11 < i; i11++) {
            if (dArr3[i11] == 0.0d && i10 == i) {
                i10 = i11;
            }
            if (i10 < i) {
                dArr4[i11] = 0.0d;
            }
        }
        if (i10 > 0) {
            for (int i12 = i10 - 1; i12 >= 0; i12--) {
                int i13 = iArr3[i12];
                double d14 = 0.0d;
                for (int i14 = i12 + 1; i14 < i10; i14++) {
                    d14 += dArr7[i14][i13] * dArr4[i14];
                }
                dArr4[i12] = (dArr4[i12] - d14) / dArr3[i12];
            }
        }
        for (int i15 = 0; i15 < dArr9.length; i15++) {
            dArr9[iArr3[i15]] = dArr4[i15];
        }
    }

    private double determineLMParameter(double[] dArr, double d2, double[] dArr2, InternalData internalData, int i, double[] dArr3, double[] dArr4, double[] dArr5, double[] dArr6, double d3) {
        double d4;
        double d5;
        double dMin;
        double[][] dArr7 = internalData.weightedJacobian;
        int[] iArr = internalData.permutation;
        int i2 = internalData.rank;
        double[] dArr8 = internalData.diagR;
        int i3 = 0;
        int length = dArr7[0].length;
        for (int i4 = 0; i4 < i2; i4++) {
            dArr6[iArr[i4]] = dArr[i4];
        }
        for (int i5 = i2; i5 < length; i5++) {
            dArr6[iArr[i5]] = 0.0d;
        }
        for (int i6 = i2 - 1; i6 >= 0; i6--) {
            int i7 = iArr[i6];
            double d6 = dArr6[i7] / dArr8[i7];
            for (int i8 = 0; i8 < i6; i8++) {
                int i9 = iArr[i8];
                dArr6[i9] = dArr6[i9] - (dArr7[i8][i7] * d6);
            }
            dArr6[i7] = d6;
        }
        double d7 = 0.0d;
        for (int i10 = 0; i10 < i; i10++) {
            int i11 = iArr[i10];
            double d8 = dArr2[i11] * dArr6[i11];
            dArr3[i11] = d8;
            d7 += d8 * d8;
        }
        double dSqrt = FastMath.sqrt(d7);
        double d9 = dSqrt - d2;
        double d10 = d2 * 0.1d;
        if (d9 <= d10) {
            return 0.0d;
        }
        if (i2 == i) {
            for (int i12 = 0; i12 < i; i12++) {
                int i13 = iArr[i12];
                dArr3[i13] = dArr3[i13] * (dArr2[i13] / dSqrt);
            }
            double d11 = 0.0d;
            int i14 = 0;
            while (i14 < i) {
                int i15 = iArr[i14];
                double d12 = 0.0d;
                while (i3 < i14) {
                    d12 += dArr7[i3][i15] * dArr3[iArr[i3]];
                    i3++;
                }
                double d13 = (dArr3[i15] - d12) / dArr8[i15];
                dArr3[i15] = d13;
                d11 += d13 * d13;
                i14++;
                i3 = 0;
            }
            d4 = d9 / (d2 * d11);
        } else {
            d4 = 0.0d;
        }
        double d14 = 0.0d;
        for (int i16 = 0; i16 < i; i16++) {
            int i17 = iArr[i16];
            double d15 = 0.0d;
            for (int i18 = 0; i18 <= i16; i18++) {
                d15 += dArr7[i18][i17] * dArr[i18];
            }
            double d16 = d15 / dArr2[i17];
            d14 += d16 * d16;
        }
        double dSqrt2 = FastMath.sqrt(d14);
        double dMin2 = dSqrt2 / d2;
        if (dMin2 == 0.0d) {
            dMin2 = Precision.SAFE_MIN / FastMath.min(d2, 0.1d);
        }
        double d17 = dMin2;
        double d18 = d9;
        double dMin3 = FastMath.min(d17, FastMath.max(d3, d4));
        double d19 = 0.0d;
        if (dMin3 == 0.0d) {
            dMin3 = dSqrt2 / dSqrt;
        }
        double d20 = d17;
        int i19 = 10;
        double dMax = d4;
        while (i19 >= 0) {
            if (dMin3 == d19) {
                dMin3 = FastMath.max(Precision.SAFE_MIN, 0.001d * d20);
            }
            double dSqrt3 = FastMath.sqrt(dMin3);
            for (int i20 = 0; i20 < i; i20++) {
                int i21 = iArr[i20];
                dArr3[i21] = dArr2[i21] * dSqrt3;
            }
            double d21 = dMin3;
            double d22 = d20;
            determineLMDirection(dArr, dArr3, dArr4, internalData, i, dArr5, dArr6);
            double d23 = 0.0d;
            for (int i22 = 0; i22 < i; i22++) {
                int i23 = iArr[i22];
                double d24 = dArr2[i23] * dArr6[i23];
                dArr5[i23] = d24;
                d23 += d24 * d24;
            }
            double dSqrt4 = FastMath.sqrt(d23);
            double d25 = dSqrt4 - d2;
            if (FastMath.abs(d25) <= d10 || (dMax == 0.0d && d25 <= d18 && d18 < 0.0d)) {
                return d21;
            }
            for (int i24 = 0; i24 < i; i24++) {
                int i25 = iArr[i24];
                dArr3[i25] = (dArr5[i25] * dArr2[i25]) / dSqrt4;
            }
            int i26 = 0;
            while (i26 < i) {
                int i27 = iArr[i26];
                dArr3[i27] = dArr3[i27] / dArr4[i26];
                double d26 = dArr3[i27];
                i26++;
                for (int i28 = i26; i28 < i; i28++) {
                    int i29 = iArr[i28];
                    dArr3[i29] = dArr3[i29] - (dArr7[i28][i27] * d26);
                }
            }
            double d27 = 0.0d;
            for (int i30 = 0; i30 < i; i30++) {
                double d28 = dArr3[iArr[i30]];
                d27 += d28 * d28;
            }
            double d29 = d25 / (d2 * d27);
            if (d25 > 0.0d) {
                d5 = d21;
                dMax = FastMath.max(dMax, d5);
                dMin = d22;
            } else {
                d5 = d21;
                dMin = d22;
                if (d25 < 0.0d) {
                    dMin = FastMath.min(dMin, d5);
                }
            }
            double dMax2 = FastMath.max(dMax, d29 + d5);
            i19--;
            d20 = dMin;
            d18 = d25;
            d19 = 0.0d;
            dMin3 = dMax2;
        }
        return dMin3;
    }

    private void qTy(double[] dArr, InternalData internalData) {
        double[][] dArr2 = internalData.weightedJacobian;
        int[] iArr = internalData.permutation;
        double[] dArr3 = internalData.beta;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i = 0; i < length2; i++) {
            int i2 = iArr[i];
            double d2 = 0.0d;
            for (int i3 = i; i3 < length; i3++) {
                d2 += dArr2[i3][i2] * dArr[i3];
            }
            double d3 = d2 * dArr3[i2];
            for (int i4 = i; i4 < length; i4++) {
                dArr[i4] = dArr[i4] - (dArr2[i4][i2] * d3);
            }
        }
    }

    private InternalData qrDecomposition(RealMatrix realMatrix, int i) throws ConvergenceException {
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        int length = data.length;
        char c = 0;
        int length2 = data[0].length;
        int[] iArr = new int[length2];
        double[] dArr = new double[length2];
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[i2] = i2;
            double d2 = 0.0d;
            for (double[] dArr4 : data) {
                double d3 = dArr4[i2];
                d2 += d3 * d3;
            }
            dArr2[i2] = FastMath.sqrt(d2);
        }
        int i3 = 0;
        while (i3 < length2) {
            double d4 = Double.NEGATIVE_INFINITY;
            int i4 = -1;
            for (int i5 = i3; i5 < length2; i5++) {
                double d5 = 0.0d;
                for (int i6 = i3; i6 < length; i6++) {
                    double d6 = data[i6][iArr[i5]];
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
                return new InternalData(data, iArr, i3, dArr, dArr2, dArr3);
            }
            int i7 = iArr[i4];
            iArr[i4] = iArr[i3];
            iArr[i3] = i7;
            double d7 = data[i3][i7];
            double[][] dArr5 = data;
            double dSqrt = FastMath.sqrt(d4);
            if (d7 > 0.0d) {
                dSqrt = -dSqrt;
            }
            double d8 = 1.0d / (d4 - (d7 * dSqrt));
            dArr3[i7] = d8;
            dArr[i7] = dSqrt;
            double[] dArr6 = dArr5[i3];
            dArr6[i7] = dArr6[i7] - dSqrt;
            for (int i8 = (length2 - 1) - i3; i8 > 0; i8--) {
                double d9 = 0.0d;
                for (int i9 = i3; i9 < length; i9++) {
                    d9 += dArr5[i9][i7] * dArr5[i9][iArr[i3 + i8]];
                }
                double d10 = d9 * d8;
                for (int i10 = i3; i10 < length; i10++) {
                    double[] dArr7 = dArr5[i10];
                    int i11 = iArr[i3 + i8];
                    dArr7[i11] = dArr7[i11] - (dArr5[i10][i7] * d10);
                }
            }
            i3++;
            data = dArr5;
            c = 0;
        }
        return new InternalData(data, iArr, i, dArr, dArr2, dArr3);
    }

    public double getCostRelativeTolerance() {
        return this.costRelativeTolerance;
    }

    public double getInitialStepBoundFactor() {
        return this.initialStepBoundFactor;
    }

    public double getOrthoTolerance() {
        return this.orthoTolerance;
    }

    public double getParameterRelativeTolerance() {
        return this.parRelativeTolerance;
    }

    public double getRankingThreshold() {
        return this.qrRankingThreshold;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02af  */
    /* JADX WARN: Code duplicated, block: B:105:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:107:0x02bd A[LOOP:14: B:106:0x02bb->B:107:0x02bd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:121:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:130:0x031d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0321 A[LOOP:7: B:45:0x0144->B:132:0x0321, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:139:0x02a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x0354 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x0341 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x027c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0281 A[LOOP:13: B:95:0x027f->B:96:0x0281, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x0295  */
    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer
    public LeastSquaresOptimizer.Optimum optimize(LeastSquaresProblem leastSquaresProblem) {
        double[] dArr;
        double[] dArr2;
        double d2;
        double dMin;
        LeastSquaresProblem.Evaluation evaluation;
        ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker;
        int i;
        double dAbs;
        double d3;
        double dAbs2;
        double d4;
        double d5;
        int i2;
        LevenbergMarquardtOptimizer levenbergMarquardtOptimizer = this;
        int observationSize = leastSquaresProblem.getObservationSize();
        int parameterSize = leastSquaresProblem.getParameterSize();
        Incrementor iterationCounter = leastSquaresProblem.getIterationCounter();
        Incrementor evaluationCounter = leastSquaresProblem.getEvaluationCounter();
        ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker2 = leastSquaresProblem.getConvergenceChecker();
        int iMin = FastMath.min(observationSize, parameterSize);
        double[] dArr3 = new double[parameterSize];
        double[] dArr4 = new double[parameterSize];
        double[] dArr5 = new double[parameterSize];
        double[] dArr6 = new double[observationSize];
        double[] dArr7 = new double[observationSize];
        double[] dArr8 = new double[parameterSize];
        double[] dArr9 = new double[parameterSize];
        double[] dArr10 = new double[parameterSize];
        evaluationCounter.incrementCount();
        LeastSquaresProblem.Evaluation evaluationEvaluate = leastSquaresProblem.evaluate(leastSquaresProblem.getStart());
        double[] array = evaluationEvaluate.getResiduals().toArray();
        double cost = evaluationEvaluate.getCost();
        double d6 = 0.0d;
        double d7 = 0.0d;
        double dSqrt = 0.0d;
        boolean z = true;
        LeastSquaresProblem.Evaluation evaluation2 = evaluationEvaluate;
        double[] array2 = evaluationEvaluate.getPoint().toArray();
        while (true) {
            iterationCounter.incrementCount();
            InternalData internalDataQrDecomposition = levenbergMarquardtOptimizer.qrDecomposition(evaluation2.getJacobian(), iMin);
            double[][] dArr11 = internalDataQrDecomposition.weightedJacobian;
            int[] iArr = internalDataQrDecomposition.permutation;
            double[] dArr12 = internalDataQrDecomposition.diagR;
            double[] dArr13 = internalDataQrDecomposition.jacNorm;
            double[] dArr14 = dArr10;
            for (int i3 = 0; i3 < observationSize; i3++) {
                dArr7[i3] = array[i3];
            }
            levenbergMarquardtOptimizer.qTy(dArr7, internalDataQrDecomposition);
            for (int i4 = 0; i4 < iMin; i4++) {
                int i5 = iArr[i4];
                dArr11[i4][i5] = dArr12[i5];
            }
            if (z) {
                double d8 = 0.0d;
                for (int i6 = 0; i6 < parameterSize; i6++) {
                    double d9 = dArr13[i6];
                    if (d9 == 0.0d) {
                        d9 = 1.0d;
                    }
                    double d10 = array2[i6] * d9;
                    d8 += d10 * d10;
                    dArr4[i6] = d9;
                }
                dSqrt = FastMath.sqrt(d8);
                d7 = dSqrt == 0.0d ? levenbergMarquardtOptimizer.initialStepBoundFactor : levenbergMarquardtOptimizer.initialStepBoundFactor * dSqrt;
            } else {
                array = array;
            }
            double[] dArr15 = array;
            if (cost != 0.0d) {
                double dMax = 0.0d;
                int i7 = 0;
                while (i7 < iMin) {
                    int i8 = iArr[i7];
                    double d11 = dArr13[i8];
                    if (d11 != 0.0d) {
                        double d12 = 0.0d;
                        for (int i9 = 0; i9 <= i7; i9++) {
                            d12 += dArr11[i9][i8] * dArr7[i9];
                        }
                        dMax = FastMath.max(dMax, FastMath.abs(d12) / (d11 * cost));
                    }
                    i7++;
                    dArr8 = dArr8;
                    dArr9 = dArr9;
                }
                dArr = dArr9;
                dArr2 = dArr8;
                d2 = dMax;
            } else {
                dArr = dArr9;
                dArr2 = dArr8;
                d2 = 0.0d;
            }
            if (d2 <= levenbergMarquardtOptimizer.orthoTolerance) {
                return new OptimumImpl(evaluation2, evaluationCounter.getCount(), iterationCounter.getCount());
            }
            for (int i10 = 0; i10 < parameterSize; i10++) {
                dArr4[i10] = FastMath.max(dArr4[i10], dArr13[i10]);
            }
            LeastSquaresProblem.Evaluation evaluation3 = evaluation2;
            double[] dArr16 = array2;
            array = dArr15;
            double d13 = 0.0d;
            while (d13 < 1.0E-4d) {
                for (int i11 = 0; i11 < iMin; i11++) {
                    int i12 = iArr[i11];
                    dArr5[i12] = dArr16[i12];
                }
                LeastSquaresProblem.Evaluation evaluation4 = evaluation2;
                double[] dArr17 = dArr14;
                int i13 = observationSize;
                double[] dArr18 = dArr;
                double[] dArr19 = dArr16;
                double[] dArr20 = dArr2;
                double[] dArr21 = dArr7;
                double[] dArr22 = dArr5;
                double[] dArr23 = dArr4;
                double[] dArr24 = dArr3;
                InternalData internalData = internalDataQrDecomposition;
                int i14 = iMin;
                ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker3 = convergenceChecker2;
                int i15 = parameterSize;
                double dDetermineLMParameter = determineLMParameter(dArr7, d7, dArr4, internalDataQrDecomposition, iMin, dArr20, dArr18, dArr17, dArr24, d6);
                double d14 = 0.0d;
                for (int i16 = 0; i16 < i14; i16++) {
                    int i17 = iArr[i16];
                    dArr24[i17] = -dArr24[i17];
                    dArr19[i17] = dArr22[i17] + dArr24[i17];
                    double d15 = dArr23[i17] * dArr24[i17];
                    d14 += d15 * d15;
                }
                double dSqrt2 = FastMath.sqrt(d14);
                double dMin2 = d7;
                if (z) {
                    dMin2 = FastMath.min(dMin2, dSqrt2);
                }
                evaluationCounter.incrementCount();
                LeastSquaresProblem.Evaluation evaluationEvaluate2 = leastSquaresProblem.evaluate(new ArrayRealVector(dArr19));
                double[] array3 = evaluationEvaluate2.getResiduals().toArray();
                double cost2 = evaluationEvaluate2.getCost();
                double[] array4 = evaluationEvaluate2.getPoint().toArray();
                double d16 = -1.0d;
                double d17 = 0.1d;
                double d18 = cost2 * 0.1d;
                if (d18 < cost) {
                    double d19 = cost2 / cost;
                    d16 = 1.0d - (d19 * d19);
                }
                for (int i18 = 0; i18 < i14; i18++) {
                    int i19 = iArr[i18];
                    double d20 = dArr24[i19];
                    dArr20[i18] = 0.0d;
                    for (int i20 = 0; i20 <= i18; i20++) {
                        dArr20[i20] = dArr20[i20] + (dArr11[i20][i19] * d20);
                    }
                }
                double d21 = 0.0d;
                for (int i21 = 0; i21 < i14; i21++) {
                    d21 += dArr20[i21] * dArr20[i21];
                }
                double d22 = cost * cost;
                double d23 = d21 / d22;
                double d24 = ((dDetermineLMParameter * dSqrt2) * dSqrt2) / d22;
                double d25 = d23 + (d24 * 2.0d);
                double d26 = -(d23 + d24);
                double d27 = d25 == 0.0d ? 0.0d : d16 / d25;
                if (d27 <= 0.25d) {
                    double d28 = d16 < 0.0d ? (d26 * 0.5d) / (d26 + (0.5d * d16)) : 0.5d;
                    if (d18 < cost && d28 >= 0.1d) {
                        d17 = d28;
                    }
                    dMin = FastMath.min(dMin2, dSqrt2 * 10.0d) * d17;
                    dDetermineLMParameter /= d17;
                } else {
                    if (dDetermineLMParameter == 0.0d || d27 >= 0.75d) {
                        dMin = dSqrt2 * 2.0d;
                        dDetermineLMParameter *= 0.5d;
                    } else {
                        d7 = dMin2;
                    }
                    if (d27 >= 1.0E-4d) {
                        d5 = 0.0d;
                        for (i2 = 0; i2 < i15; i2++) {
                            double d29 = dArr23[i2] * array4[i2];
                            d5 += d29 * d29;
                        }
                        dSqrt = FastMath.sqrt(d5);
                        convergenceChecker = convergenceChecker3;
                        if (convergenceChecker != null) {
                            evaluation = evaluation4;
                        } else if (convergenceChecker.converged(iterationCounter.getCount(), evaluation, evaluationEvaluate2)) {
                            evaluation = evaluation4;
                            return new OptimumImpl(evaluationEvaluate2, evaluationCounter.getCount(), iterationCounter.getCount());
                        }
                        evaluation = evaluation4;
                        cost = cost2;
                        z = false;
                    } else {
                        convergenceChecker = convergenceChecker3;
                        for (i = 0; i < i14; i++) {
                            evaluation = evaluation4;
                            int i22 = iArr[i];
                            array4[i22] = dArr22[i22];
                        }
                        evaluation = evaluation4;
                        evaluationEvaluate2 = evaluation;
                    }
                    dAbs = FastMath.abs(d16);
                    d3 = this.costRelativeTolerance;
                    if ((dAbs > d3 && d25 <= d3 && d27 <= 2.0d) || d7 <= this.parRelativeTolerance * dSqrt) {
                        return new OptimumImpl(evaluationEvaluate2, evaluationCounter.getCount(), iterationCounter.getCount());
                    }
                    dAbs2 = FastMath.abs(d16);
                    d4 = TWO_EPS;
                    if (dAbs2 > d4 && d25 <= d4 && d27 <= 2.0d) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_COST_RELATIVE_TOLERANCE, Double.valueOf(this.costRelativeTolerance));
                    }
                    if (d7 <= d4 * dSqrt) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                    }
                    if (d2 <= d4) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                    }
                    d6 = dDetermineLMParameter;
                    levenbergMarquardtOptimizer = this;
                    evaluation2 = evaluation;
                    evaluation3 = evaluationEvaluate2;
                    array = array3;
                    dArr16 = array4;
                    iMin = i14;
                    parameterSize = i15;
                    observationSize = i13;
                    dArr7 = dArr21;
                    dArr5 = dArr22;
                    dArr4 = dArr23;
                    dArr3 = dArr24;
                    internalDataQrDecomposition = internalData;
                    convergenceChecker2 = convergenceChecker;
                    dArr14 = dArr17;
                    dArr = dArr18;
                    dArr2 = dArr20;
                    d13 = d27;
                }
                d7 = dMin;
                if (d27 >= 1.0E-4d) {
                    d5 = 0.0d;
                    while (i2 < i15) {
                        double d210 = dArr23[i2] * array4[i2];
                        d5 += d210 * d210;
                    }
                    dSqrt = FastMath.sqrt(d5);
                    convergenceChecker = convergenceChecker3;
                    if (convergenceChecker != null) {
                        evaluation = evaluation4;
                    } else if (convergenceChecker.converged(iterationCounter.getCount(), evaluation, evaluationEvaluate2)) {
                        evaluation = evaluation4;
                        return new OptimumImpl(evaluationEvaluate2, evaluationCounter.getCount(), iterationCounter.getCount());
                    }
                    evaluation = evaluation4;
                    cost = cost2;
                    z = false;
                } else {
                    convergenceChecker = convergenceChecker3;
                    while (i < i14) {
                        evaluation = evaluation4;
                        int i23 = iArr[i];
                        array4[i23] = dArr22[i23];
                    }
                    evaluation = evaluation4;
                    evaluationEvaluate2 = evaluation;
                }
                dAbs = FastMath.abs(d16);
                d3 = this.costRelativeTolerance;
                if (dAbs > d3) {
                    dAbs2 = FastMath.abs(d16);
                    d4 = TWO_EPS;
                    if (dAbs2 > d4) {
                    }
                    if (d7 <= d4 * dSqrt) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                    }
                    if (d2 <= d4) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                    }
                    d6 = dDetermineLMParameter;
                    levenbergMarquardtOptimizer = this;
                    evaluation2 = evaluation;
                    evaluation3 = evaluationEvaluate2;
                    array = array3;
                    dArr16 = array4;
                    iMin = i14;
                    parameterSize = i15;
                    observationSize = i13;
                    dArr7 = dArr21;
                    dArr5 = dArr22;
                    dArr4 = dArr23;
                    dArr3 = dArr24;
                    internalDataQrDecomposition = internalData;
                    convergenceChecker2 = convergenceChecker;
                    dArr14 = dArr17;
                    dArr = dArr18;
                    dArr2 = dArr20;
                    d13 = d27;
                } else {
                    dAbs2 = FastMath.abs(d16);
                    d4 = TWO_EPS;
                    if (dAbs2 > d4) {
                    }
                    if (d7 <= d4 * dSqrt) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                    }
                    if (d2 <= d4) {
                        throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                    }
                    d6 = dDetermineLMParameter;
                    levenbergMarquardtOptimizer = this;
                    evaluation2 = evaluation;
                    evaluation3 = evaluationEvaluate2;
                    array = array3;
                    dArr16 = array4;
                    iMin = i14;
                    parameterSize = i15;
                    observationSize = i13;
                    dArr7 = dArr21;
                    dArr5 = dArr22;
                    dArr4 = dArr23;
                    dArr3 = dArr24;
                    internalDataQrDecomposition = internalData;
                    convergenceChecker2 = convergenceChecker;
                    dArr14 = dArr17;
                    dArr = dArr18;
                    dArr2 = dArr20;
                    d13 = d27;
                }
                return new OptimumImpl(evaluationEvaluate2, evaluationCounter.getCount(), iterationCounter.getCount());
            }
            evaluation2 = evaluation3;
            array2 = dArr16;
            dArr8 = dArr2;
            dArr9 = dArr;
            convergenceChecker2 = convergenceChecker2;
            dArr10 = dArr14;
        }
    }

    public LevenbergMarquardtOptimizer withCostRelativeTolerance(double d2) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, d2, this.parRelativeTolerance, this.orthoTolerance, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withInitialStepBoundFactor(double d2) {
        return new LevenbergMarquardtOptimizer(d2, this.costRelativeTolerance, this.parRelativeTolerance, this.orthoTolerance, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withOrthoTolerance(double d2) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, this.costRelativeTolerance, this.parRelativeTolerance, d2, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withParameterRelativeTolerance(double d2) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, this.costRelativeTolerance, d2, this.orthoTolerance, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withRankingThreshold(double d2) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, this.costRelativeTolerance, this.parRelativeTolerance, this.orthoTolerance, d2);
    }

    public LevenbergMarquardtOptimizer(double d2, double d3, double d4, double d5, double d6) {
        this.initialStepBoundFactor = d2;
        this.costRelativeTolerance = d3;
        this.parRelativeTolerance = d4;
        this.orthoTolerance = d5;
        this.qrRankingThreshold = d6;
    }
}
