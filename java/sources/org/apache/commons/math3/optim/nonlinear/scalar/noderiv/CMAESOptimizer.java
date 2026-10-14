package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class CMAESOptimizer extends MultivariateOptimizer {
    private RealMatrix B;
    private RealMatrix BD;
    private RealMatrix C;
    private RealMatrix D;
    private double cc;
    private double ccov1;
    private double ccov1Sep;
    private double ccovmu;
    private double ccovmuSep;
    private final int checkFeasableCount;
    private double chiN;
    private double cs;
    private double damps;
    private RealMatrix diagC;
    private RealMatrix diagD;
    private int diagonalOnly;
    private int dimension;
    private double[] fitnessHistory;
    private final boolean generateStatistics;
    private int historySize;
    private double[] inputSigma;
    private final boolean isActiveCMA;
    private boolean isMinimize;
    private int iterations;
    private int lambda;
    private double logMu2;
    private final int maxIterations;
    private int mu;
    private double mueff;
    private double normps;
    private RealMatrix pc;
    private RealMatrix ps;
    private final RandomGenerator random;
    private double sigma;
    private final List<RealMatrix> statisticsDHistory;
    private final List<Double> statisticsFitnessHistory;
    private final List<RealMatrix> statisticsMeanHistory;
    private final List<Double> statisticsSigmaHistory;
    private final double stopFitness;
    private double stopTolFun;
    private double stopTolHistFun;
    private double stopTolUpX;
    private double stopTolX;
    private RealMatrix weights;
    private RealMatrix xmean;

    private static class DoubleIndex implements Comparable<DoubleIndex> {
        private final int index;
        private final double value;

        DoubleIndex(double d2, int i) {
            this.value = d2;
            this.index = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DoubleIndex) && Double.compare(this.value, ((DoubleIndex) obj).value) == 0;
        }

        public int hashCode() {
            long jDoubleToLongBits = Double.doubleToLongBits(this.value);
            return (int) ((jDoubleToLongBits ^ ((jDoubleToLongBits >>> 32) ^ 1438542)) & (-1));
        }

        @Override // java.lang.Comparable
        public int compareTo(DoubleIndex doubleIndex) {
            return Double.compare(this.value, doubleIndex.value);
        }
    }

    private class FitnessFunction {
        private final boolean isRepairMode = true;

        FitnessFunction() {
        }

        private double penalty(double[] dArr, double[] dArr2) {
            double dAbs = 0.0d;
            for (int i = 0; i < dArr.length; i++) {
                dAbs += FastMath.abs(dArr[i] - dArr2[i]);
            }
            return CMAESOptimizer.this.isMinimize ? dAbs : -dAbs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public double[] repair(double[] dArr) {
            double[] lowerBound = CMAESOptimizer.this.getLowerBound();
            double[] upperBound = CMAESOptimizer.this.getUpperBound();
            double[] dArr2 = new double[dArr.length];
            for (int i = 0; i < dArr.length; i++) {
                if (dArr[i] < lowerBound[i]) {
                    dArr2[i] = lowerBound[i];
                } else if (dArr[i] > upperBound[i]) {
                    dArr2[i] = upperBound[i];
                } else {
                    dArr2[i] = dArr[i];
                }
            }
            return dArr2;
        }

        public boolean isFeasible(double[] dArr) {
            double[] lowerBound = CMAESOptimizer.this.getLowerBound();
            double[] upperBound = CMAESOptimizer.this.getUpperBound();
            for (int i = 0; i < dArr.length; i++) {
                if (dArr[i] < lowerBound[i] || dArr[i] > upperBound[i]) {
                    return false;
                }
            }
            return true;
        }

        public ValuePenaltyPair value(double[] dArr) {
            double dComputeObjectiveValue;
            double dPenalty;
            if (this.isRepairMode) {
                double[] dArrRepair = repair(dArr);
                dComputeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(dArrRepair);
                dPenalty = penalty(dArr, dArrRepair);
            } else {
                dComputeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(dArr);
                dPenalty = 0.0d;
            }
            if (!CMAESOptimizer.this.isMinimize) {
                dComputeObjectiveValue = -dComputeObjectiveValue;
            }
            if (!CMAESOptimizer.this.isMinimize) {
                dPenalty = -dPenalty;
            }
            return new ValuePenaltyPair(dComputeObjectiveValue, dPenalty);
        }
    }

    public static class PopulationSize implements OptimizationData {
        private final int lambda;

        public PopulationSize(int i) throws NotStrictlyPositiveException {
            if (i <= 0) {
                throw new NotStrictlyPositiveException(Integer.valueOf(i));
            }
            this.lambda = i;
        }

        public int getPopulationSize() {
            return this.lambda;
        }
    }

    public static class Sigma implements OptimizationData {
        private final double[] sigma;

        public Sigma(double[] dArr) throws NotPositiveException {
            for (int i = 0; i < dArr.length; i++) {
                if (dArr[i] < 0.0d) {
                    throw new NotPositiveException(Double.valueOf(dArr[i]));
                }
            }
            this.sigma = (double[]) dArr.clone();
        }

        public double[] getSigma() {
            return (double[]) this.sigma.clone();
        }
    }

    private static class ValuePenaltyPair {
        private double penalty;
        private double value;

        ValuePenaltyPair(double d2, double d3) {
            this.value = d2;
            this.penalty = d3;
        }
    }

    public CMAESOptimizer(int i, double d2, boolean z, int i2, int i3, RandomGenerator randomGenerator, boolean z2, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.isMinimize = true;
        this.statisticsSigmaHistory = new ArrayList();
        this.statisticsMeanHistory = new ArrayList();
        this.statisticsFitnessHistory = new ArrayList();
        this.statisticsDHistory = new ArrayList();
        this.maxIterations = i;
        this.stopFitness = d2;
        this.isActiveCMA = z;
        this.diagonalOnly = i2;
        this.checkFeasableCount = i3;
        this.random = randomGenerator;
        this.generateStatistics = z2;
    }

    private void checkParameters() {
        double[] startPoint = getStartPoint();
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        double[] dArr = this.inputSigma;
        if (dArr != null) {
            if (dArr.length != startPoint.length) {
                throw new DimensionMismatchException(this.inputSigma.length, startPoint.length);
            }
            for (int i = 0; i < startPoint.length; i++) {
                if (this.inputSigma[i] > upperBound[i] - lowerBound[i]) {
                    throw new OutOfRangeException(Double.valueOf(this.inputSigma[i]), 0, Double.valueOf(upperBound[i] - lowerBound[i]));
                }
            }
        }
    }

    private static void copyColumn(RealMatrix realMatrix, int i, RealMatrix realMatrix2, int i2) {
        for (int i3 = 0; i3 < realMatrix.getRowDimension(); i3++) {
            realMatrix2.setEntry(i3, i2, realMatrix.getEntry(i3, i));
        }
    }

    private static RealMatrix diag(RealMatrix realMatrix) {
        if (realMatrix.getColumnDimension() == 1) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getRowDimension());
            for (int i = 0; i < realMatrix.getRowDimension(); i++) {
                dArr[i][i] = realMatrix.getEntry(i, 0);
            }
            return new Array2DRowRealMatrix(dArr, false);
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), 1);
        for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
            dArr2[i2][0] = realMatrix.getEntry(i2, i2);
        }
        return new Array2DRowRealMatrix(dArr2, false);
    }

    private static RealMatrix divide(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, i2) / realMatrix2.getEntry(i, i2);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix eye(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            if (i3 < i2) {
                dArr[i3][i3] = 1.0d;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private void initializeCMA(double[] dArr) {
        if (this.lambda <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(this.lambda));
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, dArr.length, 1);
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i][0] = this.inputSigma[i];
        }
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr2, false);
        this.sigma = max(array2DRowRealMatrix);
        this.stopTolUpX = max(array2DRowRealMatrix) * 1000.0d;
        this.stopTolX = max(array2DRowRealMatrix) * 1.0E-11d;
        this.stopTolFun = 1.0E-12d;
        this.stopTolHistFun = 1.0E-13d;
        int i2 = this.lambda / 2;
        this.mu = i2;
        this.logMu2 = FastMath.log(((double) i2) + 0.5d);
        this.weights = log(sequence(1.0d, this.mu, 1.0d)).scalarMultiply(-1.0d).scalarAdd(this.logMu2);
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (int i3 = 0; i3 < this.mu; i3++) {
            double entry = this.weights.getEntry(i3, 0);
            d2 += entry;
            d3 += entry * entry;
        }
        this.weights = this.weights.scalarMultiply(1.0d / d2);
        double d4 = (d2 * d2) / d3;
        this.mueff = d4;
        int i4 = this.dimension;
        this.cc = ((d4 / ((double) i4)) + 4.0d) / (((double) (i4 + 4)) + ((d4 * 2.0d) / ((double) i4)));
        this.cs = (d4 + 2.0d) / ((((double) i4) + d4) + 3.0d);
        this.damps = (((FastMath.max(0.0d, FastMath.sqrt((d4 - 1.0d) / ((double) (i4 + 1))) - 1.0d) * 2.0d) + 1.0d) * FastMath.max(0.3d, 1.0d - (((double) this.dimension) / (((double) this.maxIterations) + 1.0E-6d)))) + this.cs;
        int i5 = this.dimension;
        double d5 = this.mueff;
        double d6 = 2.0d / (((((double) i5) + 1.3d) * (((double) i5) + 1.3d)) + d5);
        this.ccov1 = d6;
        this.ccovmu = FastMath.min(1.0d - d6, (((d5 - 2.0d) + (1.0d / d5)) * 2.0d) / (((double) ((i5 + 2) * (i5 + 2))) + d5));
        this.ccov1Sep = FastMath.min(1.0d, (this.ccov1 * (((double) this.dimension) + 1.5d)) / 3.0d);
        this.ccovmuSep = FastMath.min(1.0d - this.ccov1, (this.ccovmu * (((double) this.dimension) + 1.5d)) / 3.0d);
        double dSqrt = FastMath.sqrt(this.dimension);
        int i6 = this.dimension;
        this.chiN = dSqrt * ((1.0d - (1.0d / (((double) i6) * 4.0d))) + (1.0d / ((((double) i6) * 21.0d) * ((double) i6))));
        this.xmean = MatrixUtils.createColumnRealMatrix(dArr);
        RealMatrix realMatrixScalarMultiply = array2DRowRealMatrix.scalarMultiply(1.0d / this.sigma);
        this.diagD = realMatrixScalarMultiply;
        this.diagC = square(realMatrixScalarMultiply);
        this.pc = zeros(this.dimension, 1);
        RealMatrix realMatrixZeros = zeros(this.dimension, 1);
        this.ps = realMatrixZeros;
        this.normps = realMatrixZeros.getFrobeniusNorm();
        int i7 = this.dimension;
        this.B = eye(i7, i7);
        this.D = ones(this.dimension, 1);
        this.BD = times(this.B, repmat(this.diagD.transpose(), this.dimension, 1));
        this.C = this.B.multiply(diag(square(this.D)).multiply(this.B.transpose()));
        int i8 = ((int) (((double) (this.dimension * 30)) / ((double) this.lambda))) + 10;
        this.historySize = i8;
        this.fitnessHistory = new double[i8];
        for (int i9 = 0; i9 < this.historySize; i9++) {
            this.fitnessHistory[i9] = Double.MAX_VALUE;
        }
    }

    private static int[] inverse(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[iArr[i]] = i;
        }
        return iArr2;
    }

    private static RealMatrix log(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = FastMath.log(realMatrix.getEntry(i, i2));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static double max(RealMatrix realMatrix) {
        double d2 = -1.7976931348623157E308d;
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                if (d2 < entry) {
                    d2 = entry;
                }
            }
        }
        return d2;
    }

    private static double min(RealMatrix realMatrix) {
        double d2 = Double.MAX_VALUE;
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                if (d2 > entry) {
                    d2 = entry;
                }
            }
        }
        return d2;
    }

    private static RealMatrix ones(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            Arrays.fill(dArr[i3], 1.0d);
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static void push(double[] dArr, double d2) {
        for (int length = dArr.length - 1; length > 0; length--) {
            dArr[length] = dArr[length - 1];
        }
        dArr[0] = d2;
    }

    private double[] randn(int i) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = this.random.nextGaussian();
        }
        return dArr;
    }

    private RealMatrix randn1(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                dArr[i3][i4] = this.random.nextGaussian();
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix repmat(RealMatrix realMatrix, int i, int i2) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int i3 = i * rowDimension;
        int i4 = i2 * columnDimension;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i3, i4);
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                dArr[i5][i6] = realMatrix.getEntry(i5 % rowDimension, i6 % columnDimension);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static int[] reverse(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = iArr[(iArr.length - i) - 1];
        }
        return iArr2;
    }

    private static RealMatrix selectColumns(RealMatrix realMatrix, int[] iArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), iArr.length);
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, iArr[i2]);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix sequence(double d2, double d3, double d4) {
        int i = (int) (((d3 - d2) / d4) + 1.0d);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i, 1);
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2][0] = d2;
            d2 += d4;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private int[] sortedIndices(double[] dArr) {
        DoubleIndex[] doubleIndexArr = new DoubleIndex[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            doubleIndexArr[i] = new DoubleIndex(dArr[i], i);
        }
        Arrays.sort(doubleIndexArr);
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            iArr[i2] = doubleIndexArr[i2].index;
        }
        return iArr;
    }

    private static RealMatrix sqrt(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = FastMath.sqrt(realMatrix.getEntry(i, i2));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix square(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                dArr[i][i2] = entry * entry;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix sumRows(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, 1, realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getColumnDimension(); i++) {
            double entry = 0.0d;
            for (int i2 = 0; i2 < realMatrix.getRowDimension(); i2++) {
                entry += realMatrix.getEntry(i2, i);
            }
            dArr[0][i] = entry;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix times(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, i2) * realMatrix2.getEntry(i, i2);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix triu(RealMatrix realMatrix, int i) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        int i2 = 0;
        while (i2 < realMatrix.getRowDimension()) {
            for (int i3 = 0; i3 < realMatrix.getColumnDimension(); i3++) {
                dArr[i2][i3] = i2 <= i3 - i ? realMatrix.getEntry(i2, i3) : 0.0d;
            }
            i2++;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private void updateBD(double d2) {
        double d3 = this.ccov1;
        double d4 = this.ccovmu;
        if (d3 + d4 + d2 <= 0.0d || (((((double) this.iterations) % 1.0d) / ((d3 + d4) + d2)) / ((double) this.dimension)) / 10.0d >= 1.0d) {
            return;
        }
        RealMatrix realMatrixAdd = triu(this.C, 0).add(triu(this.C, 1).transpose());
        this.C = realMatrixAdd;
        EigenDecomposition eigenDecomposition = new EigenDecomposition(realMatrixAdd);
        this.B = eigenDecomposition.getV();
        RealMatrix d5 = eigenDecomposition.getD();
        this.D = d5;
        RealMatrix realMatrixDiag = diag(d5);
        this.diagD = realMatrixDiag;
        if (min(realMatrixDiag) <= 0.0d) {
            for (int i = 0; i < this.dimension; i++) {
                if (this.diagD.getEntry(i, 0) < 0.0d) {
                    this.diagD.setEntry(i, 0, 0.0d);
                }
            }
            double dMax = max(this.diagD) / 1.0E14d;
            RealMatrix realMatrix = this.C;
            int i2 = this.dimension;
            this.C = realMatrix.add(eye(i2, i2).scalarMultiply(dMax));
            this.diagD = this.diagD.add(ones(this.dimension, 1).scalarMultiply(dMax));
        }
        if (max(this.diagD) > min(this.diagD) * 1.0E14d) {
            double dMax2 = (max(this.diagD) / 1.0E14d) - min(this.diagD);
            RealMatrix realMatrix2 = this.C;
            int i3 = this.dimension;
            this.C = realMatrix2.add(eye(i3, i3).scalarMultiply(dMax2));
            this.diagD = this.diagD.add(ones(this.dimension, 1).scalarMultiply(dMax2));
        }
        this.diagC = diag(this.C);
        RealMatrix realMatrixSqrt = sqrt(this.diagD);
        this.diagD = realMatrixSqrt;
        this.BD = times(this.B, repmat(realMatrixSqrt.transpose(), this.dimension, 1));
    }

    private void updateCovariance(boolean z, RealMatrix realMatrix, RealMatrix realMatrix2, int[] iArr, RealMatrix realMatrix3) {
        double d2;
        double d3;
        if (this.ccov1 + this.ccovmu > 0.0d) {
            RealMatrix realMatrixScalarMultiply = realMatrix.subtract(repmat(realMatrix3, 1, this.mu)).scalarMultiply(1.0d / this.sigma);
            RealMatrix realMatrix4 = this.pc;
            RealMatrix realMatrixScalarMultiply2 = realMatrix4.multiply(realMatrix4.transpose()).scalarMultiply(this.ccov1);
            if (z) {
                d3 = 0.0d;
            } else {
                double d4 = this.ccov1;
                double d5 = this.cc;
                d3 = d4 * d5 * (2.0d - d5);
            }
            double d6 = 1.0d - this.ccov1;
            double d7 = this.ccovmu;
            double d8 = d3 + (d6 - d7);
            if (this.isActiveCMA) {
                double dPow = (((1.0d - d7) * 0.25d) * this.mueff) / (FastMath.pow(this.dimension + 2, 1.5d) + (this.mueff * 2.0d));
                RealMatrix realMatrixSelectColumns = selectColumns(realMatrix2, MathArrays.copyOf(reverse(iArr), this.mu));
                RealMatrix realMatrixSqrt = sqrt(sumRows(square(realMatrixSelectColumns)));
                int[] iArrSortedIndices = sortedIndices(realMatrixSqrt.getRow(0));
                RealMatrix realMatrixSelectColumns2 = selectColumns(divide(selectColumns(realMatrixSqrt, reverse(iArrSortedIndices)), selectColumns(realMatrixSqrt, iArrSortedIndices)), inverse(iArrSortedIndices));
                double entry = 0.33999999999999997d / square(realMatrixSelectColumns2).multiply(this.weights).getEntry(0, 0);
                if (dPow > entry) {
                    dPow = entry;
                }
                RealMatrix realMatrixMultiply = this.BD.multiply(times(realMatrixSelectColumns, repmat(realMatrixSelectColumns2, this.dimension, 1)));
                double d9 = 0.5d * dPow;
                this.C = this.C.scalarMultiply(d8 + d9).add(realMatrixScalarMultiply2).add(realMatrixScalarMultiply.scalarMultiply(this.ccovmu + d9).multiply(times(repmat(this.weights, 1, this.dimension), realMatrixScalarMultiply.transpose()))).subtract(realMatrixMultiply.multiply(diag(this.weights)).multiply(realMatrixMultiply.transpose()).scalarMultiply(dPow));
                d2 = dPow;
            } else {
                this.C = this.C.scalarMultiply(d8).add(realMatrixScalarMultiply2).add(realMatrixScalarMultiply.scalarMultiply(this.ccovmu).multiply(times(repmat(this.weights, 1, this.dimension), realMatrixScalarMultiply.transpose())));
                d2 = 0.0d;
            }
        } else {
            d2 = 0.0d;
        }
        updateBD(d2);
    }

    private void updateCovarianceDiagonalOnly(boolean z, RealMatrix realMatrix) {
        double d2;
        if (z) {
            d2 = 0.0d;
        } else {
            double d3 = this.ccov1Sep;
            double d4 = this.cc;
            d2 = d3 * d4 * (2.0d - d4);
        }
        RealMatrix realMatrixAdd = this.diagC.scalarMultiply(d2 + ((1.0d - this.ccov1Sep) - this.ccovmuSep)).add(square(this.pc).scalarMultiply(this.ccov1Sep)).add(times(this.diagC, square(realMatrix).multiply(this.weights)).scalarMultiply(this.ccovmuSep));
        this.diagC = realMatrixAdd;
        this.diagD = sqrt(realMatrixAdd);
        int i = this.diagonalOnly;
        if (i <= 1 || this.iterations <= i) {
            return;
        }
        this.diagonalOnly = 0;
        int i2 = this.dimension;
        this.B = eye(i2, i2);
        this.BD = diag(this.diagD);
        this.C = diag(this.diagC);
    }

    private boolean updateEvolutionPaths(RealMatrix realMatrix, RealMatrix realMatrix2) {
        RealMatrix realMatrixScalarMultiply = this.ps.scalarMultiply(1.0d - this.cs);
        RealMatrix realMatrixMultiply = this.B.multiply(realMatrix);
        double d2 = this.cs;
        RealMatrix realMatrixAdd = realMatrixScalarMultiply.add(realMatrixMultiply.scalarMultiply(FastMath.sqrt(d2 * (2.0d - d2) * this.mueff)));
        this.ps = realMatrixAdd;
        double frobeniusNorm = realMatrixAdd.getFrobeniusNorm();
        this.normps = frobeniusNorm;
        boolean z = (frobeniusNorm / FastMath.sqrt(1.0d - FastMath.pow(1.0d - this.cs, this.iterations * 2))) / this.chiN < (2.0d / (((double) this.dimension) + 1.0d)) + 1.4d;
        RealMatrix realMatrixScalarMultiply2 = this.pc.scalarMultiply(1.0d - this.cc);
        this.pc = realMatrixScalarMultiply2;
        if (z) {
            RealMatrix realMatrixSubtract = this.xmean.subtract(realMatrix2);
            double d3 = this.cc;
            this.pc = realMatrixScalarMultiply2.add(realMatrixSubtract.scalarMultiply(FastMath.sqrt((d3 * (2.0d - d3)) * this.mueff) / this.sigma));
        }
        return z;
    }

    private double valueRange(ValuePenaltyPair[] valuePenaltyPairArr) {
        double d2 = Double.NEGATIVE_INFINITY;
        double d3 = Double.MAX_VALUE;
        for (ValuePenaltyPair valuePenaltyPair : valuePenaltyPairArr) {
            if (valuePenaltyPair.value > d2) {
                d2 = valuePenaltyPair.value;
            }
            if (valuePenaltyPair.value < d3) {
                d3 = valuePenaltyPair.value;
            }
        }
        return d2 - d3;
    }

    private static RealMatrix zeros(int i, int i2) {
        return new Array2DRowRealMatrix(i, i2);
    }

    public List<RealMatrix> getStatisticsDHistory() {
        return this.statisticsDHistory;
    }

    public List<Double> getStatisticsFitnessHistory() {
        return this.statisticsFitnessHistory;
    }

    public List<RealMatrix> getStatisticsMeanHistory() {
        return this.statisticsMeanHistory;
    }

    public List<Double> getStatisticsSigmaHistory() {
        return this.statisticsSigmaHistory;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Sigma) {
                this.inputSigma = ((Sigma) optimizationData).getSigma();
            } else if (optimizationData instanceof PopulationSize) {
                this.lambda = ((PopulationSize) optimizationData).getPopulationSize();
            }
        }
        checkParameters();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:101:0x028a  */
    /* JADX WARN: Code duplicated, block: B:104:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:105:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:108:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:110:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:111:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:114:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:125:0x0285 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x0285 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x0323 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x01fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0200 A[EDGE_INSN: B:139:0x0200->B:69:0x0200 BREAK  A[LOOP:4: B:59:0x01c4->B:67:0x01ef], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:61:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:64:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ef A[LOOP:4: B:59:0x01c4->B:67:0x01ef, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x0205  */
    /* JADX WARN: Code duplicated, block: B:75:0x0213 A[LOOP:5: B:70:0x0201->B:75:0x0213, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:91:0x0264  */
    /* JADX WARN: Code duplicated, block: B:93:0x026f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0271  */
    /* JADX WARN: Code duplicated, block: B:97:0x0277  */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() {
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        double[] column;
        double[] column2;
        int i;
        FitnessFunction fitnessFunction;
        int[] iArr;
        PointValuePair pointValuePair3;
        int i2;
        double dMin;
        double dMax;
        double d2;
        PointValuePair pointValuePair4;
        double d3;
        double[] dArr;
        RealMatrix realMatrixAdd;
        this.isMinimize = getGoalType().equals(GoalType.MINIMIZE);
        FitnessFunction fitnessFunction2 = new FitnessFunction();
        double[] startPoint = getStartPoint();
        this.dimension = startPoint.length;
        initializeCMA(startPoint);
        this.iterations = 0;
        ValuePenaltyPair valuePenaltyPairValue = fitnessFunction2.value(startPoint);
        double d4 = valuePenaltyPairValue.value + valuePenaltyPairValue.penalty;
        push(this.fitnessHistory, d4);
        PointValuePair pointValuePair5 = new PointValuePair(getStartPoint(), this.isMinimize ? d4 : -d4);
        int i3 = 1;
        this.iterations = 1;
        PointValuePair pointValuePair6 = pointValuePair5;
        double d5 = d4;
        PointValuePair pointValuePair7 = null;
        while (this.iterations <= this.maxIterations) {
            incrementIterationCount();
            RealMatrix realMatrixRandn1 = randn1(this.dimension, this.lambda);
            RealMatrix realMatrixZeros = zeros(this.dimension, this.lambda);
            int i4 = this.lambda;
            double[] dArr2 = new double[i4];
            ValuePenaltyPair[] valuePenaltyPairArr = new ValuePenaltyPair[i4];
            int i5 = 0;
            while (i5 < this.lambda) {
                int i6 = 0;
                RealMatrix realMatrix = null;
                while (true) {
                    if (i6 >= this.checkFeasableCount + i3) {
                        pointValuePair6 = pointValuePair6;
                        d5 = d5;
                        realMatrixAdd = realMatrix;
                        break;
                    }
                    realMatrixAdd = this.diagonalOnly <= 0 ? this.xmean.add(this.BD.multiply(realMatrixRandn1.getColumnMatrix(i5)).scalarMultiply(this.sigma)) : this.xmean.add(times(this.diagD, realMatrixRandn1.getColumnMatrix(i5)).scalarMultiply(this.sigma));
                    if (i6 >= this.checkFeasableCount || fitnessFunction2.isFeasible(realMatrixAdd.getColumn(0))) {
                        break;
                    }
                    realMatrixRandn1.setColumn(i5, randn(this.dimension));
                    i6++;
                    realMatrix = realMatrixAdd;
                    pointValuePair6 = pointValuePair6;
                    d5 = d5;
                    i3 = 1;
                }
                copyColumn(realMatrixAdd, 0, realMatrixZeros, i5);
                try {
                    valuePenaltyPairArr[i5] = fitnessFunction2.value(realMatrixZeros.getColumn(i5));
                    i5++;
                    pointValuePair6 = pointValuePair6;
                    d5 = d5;
                    i3 = 1;
                } catch (TooManyEvaluationsException unused) {
                }
            }
            PointValuePair pointValuePair8 = pointValuePair6;
            double d6 = d5;
            double dValueRange = valueRange(valuePenaltyPairArr);
            for (int i7 = 0; i7 < i4; i7++) {
                dArr2[i7] = valuePenaltyPairArr[i7].value + (valuePenaltyPairArr[i7].penalty * dValueRange);
            }
            int[] iArrSortedIndices = sortedIndices(dArr2);
            RealMatrix realMatrix2 = this.xmean;
            RealMatrix realMatrixSelectColumns = selectColumns(realMatrixZeros, MathArrays.copyOf(iArrSortedIndices, this.mu));
            this.xmean = realMatrixSelectColumns.multiply(this.weights);
            RealMatrix realMatrixSelectColumns2 = selectColumns(realMatrixRandn1, MathArrays.copyOf(iArrSortedIndices, this.mu));
            boolean zUpdateEvolutionPaths = updateEvolutionPaths(realMatrixSelectColumns2.multiply(this.weights), realMatrix2);
            if (this.diagonalOnly <= 0) {
                updateCovariance(zUpdateEvolutionPaths, realMatrixSelectColumns, realMatrixRandn1, iArrSortedIndices, realMatrix2);
            } else {
                updateCovarianceDiagonalOnly(zUpdateEvolutionPaths, realMatrixSelectColumns2);
            }
            this.sigma *= FastMath.exp(FastMath.min(1.0d, (((this.normps / this.chiN) - 1.0d) * this.cs) / this.damps));
            double d7 = dArr2[iArrSortedIndices[0]];
            double d8 = dArr2[iArrSortedIndices[iArrSortedIndices.length - 1]];
            if (d6 > d7) {
                pointValuePair = new PointValuePair(fitnessFunction2.repair(realMatrixSelectColumns.getColumn(0)), this.isMinimize ? d7 : -d7);
                if (getConvergenceChecker() == null || !getConvergenceChecker().converged(this.iterations, pointValuePair, pointValuePair8)) {
                    d6 = d7;
                    pointValuePair2 = pointValuePair8;
                }
                return pointValuePair;
            }
            pointValuePair = pointValuePair8;
            pointValuePair2 = pointValuePair7;
            double d9 = this.stopFitness;
            if (d9 == 0.0d) {
                column = sqrt(this.diagC).getColumn(0);
                column2 = this.pc.getColumn(0);
                i = 0;
                while (true) {
                    if (i < this.dimension) {
                        fitnessFunction = fitnessFunction2;
                        iArr = iArrSortedIndices;
                        pointValuePair3 = pointValuePair2;
                        break;
                    }
                    fitnessFunction = fitnessFunction2;
                    iArr = iArrSortedIndices;
                    pointValuePair3 = pointValuePair2;
                    dArr = column2;
                    if (this.sigma * FastMath.max(FastMath.abs(column2[i]), column[i]) > this.stopTolX) {
                        break;
                    }
                    if (i >= this.dimension - 1) {
                        i++;
                        fitnessFunction2 = fitnessFunction;
                        pointValuePair2 = pointValuePair3;
                        column2 = dArr;
                        iArrSortedIndices = iArr;
                    }
                }
                for (i2 = 0; i2 < this.dimension; i2++) {
                    if (this.sigma * column[i2] > this.stopTolUpX) {
                    }
                }
                dMin = min(this.fitnessHistory);
                dMax = max(this.fitnessHistory);
                if ((this.iterations > 2 || FastMath.max(dMax, d8) - FastMath.min(dMin, d7) >= this.stopTolFun) && ((this.iterations <= this.fitnessHistory.length || dMax - dMin >= this.stopTolHistFun) && max(this.diagD) / min(this.diagD) <= 1.0E7d)) {
                    if (getConvergenceChecker() != null) {
                        double[] column3 = realMatrixSelectColumns.getColumn(0);
                        if (this.isMinimize) {
                            d3 = d7;
                        } else {
                            d3 = -d7;
                        }
                        pointValuePair4 = new PointValuePair(column3, d3);
                        if (pointValuePair3 != null || !getConvergenceChecker().converged(this.iterations, pointValuePair4, pointValuePair3)) {
                            pointValuePair7 = pointValuePair4;
                        }
                    } else {
                        pointValuePair7 = pointValuePair3;
                    }
                    if (d6 == dArr2[iArr[(int) ((((double) this.lambda) / 4.0d) + 0.1d)]]) {
                        this.sigma *= FastMath.exp((this.cs / this.damps) + 0.2d);
                    }
                    if (this.iterations > 2) {
                        d2 = d7;
                        if (FastMath.max(dMax, d2) - FastMath.min(dMin, d2) == 0.0d) {
                            this.sigma *= FastMath.exp((this.cs / this.damps) + 0.2d);
                        }
                    } else {
                        d2 = d7;
                    }
                    push(this.fitnessHistory, d2);
                    if (this.generateStatistics) {
                        this.statisticsSigmaHistory.add(Double.valueOf(this.sigma));
                        this.statisticsFitnessHistory.add(Double.valueOf(d2));
                        this.statisticsMeanHistory.add(this.xmean.transpose());
                        this.statisticsDHistory.add(this.diagD.transpose().scalarMultiply(100000.0d));
                    }
                    this.iterations++;
                    pointValuePair6 = pointValuePair;
                    fitnessFunction2 = fitnessFunction;
                    d5 = d6;
                    i3 = 1;
                }
            } else {
                if (!this.isMinimize) {
                    d9 = -d9;
                }
                if (d7 >= d9) {
                    column = sqrt(this.diagC).getColumn(0);
                    column2 = this.pc.getColumn(0);
                    i = 0;
                    while (true) {
                        if (i < this.dimension) {
                            fitnessFunction = fitnessFunction2;
                            iArr = iArrSortedIndices;
                            pointValuePair3 = pointValuePair2;
                            break;
                        }
                        fitnessFunction = fitnessFunction2;
                        iArr = iArrSortedIndices;
                        pointValuePair3 = pointValuePair2;
                        dArr = column2;
                        if (this.sigma * FastMath.max(FastMath.abs(column2[i]), column[i]) > this.stopTolX) {
                            break;
                            break;
                        }
                        if (i >= this.dimension - 1) {
                            i++;
                            fitnessFunction2 = fitnessFunction;
                            pointValuePair2 = pointValuePair3;
                            column2 = dArr;
                            iArrSortedIndices = iArr;
                        }
                    }
                    while (i2 < this.dimension) {
                        if (this.sigma * column[i2] > this.stopTolUpX) {
                        }
                    }
                    dMin = min(this.fitnessHistory);
                    dMax = max(this.fitnessHistory);
                    if (this.iterations > 2) {
                        if (getConvergenceChecker() != null) {
                            double[] column4 = realMatrixSelectColumns.getColumn(0);
                            if (this.isMinimize) {
                                d3 = d7;
                            } else {
                                d3 = -d7;
                            }
                            pointValuePair4 = new PointValuePair(column4, d3);
                            if (pointValuePair3 != null) {
                            }
                            pointValuePair7 = pointValuePair4;
                        } else {
                            pointValuePair7 = pointValuePair3;
                        }
                        if (d6 == dArr2[iArr[(int) ((((double) this.lambda) / 4.0d) + 0.1d)]]) {
                            this.sigma *= FastMath.exp((this.cs / this.damps) + 0.2d);
                        }
                        if (this.iterations > 2) {
                            d2 = d7;
                            if (FastMath.max(dMax, d2) - FastMath.min(dMin, d2) == 0.0d) {
                                this.sigma *= FastMath.exp((this.cs / this.damps) + 0.2d);
                            }
                        } else {
                            d2 = d7;
                        }
                        push(this.fitnessHistory, d2);
                        if (this.generateStatistics) {
                            this.statisticsSigmaHistory.add(Double.valueOf(this.sigma));
                            this.statisticsFitnessHistory.add(Double.valueOf(d2));
                            this.statisticsMeanHistory.add(this.xmean.transpose());
                            this.statisticsDHistory.add(this.diagD.transpose().scalarMultiply(100000.0d));
                        }
                        this.iterations++;
                        pointValuePair6 = pointValuePair;
                        fitnessFunction2 = fitnessFunction;
                        d5 = d6;
                        i3 = 1;
                    } else {
                        if (getConvergenceChecker() != null) {
                            double[] column5 = realMatrixSelectColumns.getColumn(0);
                            if (this.isMinimize) {
                                d3 = d7;
                            } else {
                                d3 = -d7;
                            }
                            pointValuePair4 = new PointValuePair(column5, d3);
                            if (pointValuePair3 != null) {
                            }
                            pointValuePair7 = pointValuePair4;
                        } else {
                            pointValuePair7 = pointValuePair3;
                        }
                        if (d6 == dArr2[iArr[(int) ((((double) this.lambda) / 4.0d) + 0.1d)]]) {
                            this.sigma *= FastMath.exp((this.cs / this.damps) + 0.2d);
                        }
                        if (this.iterations > 2) {
                            d2 = d7;
                            if (FastMath.max(dMax, d2) - FastMath.min(dMin, d2) == 0.0d) {
                                this.sigma *= FastMath.exp((this.cs / this.damps) + 0.2d);
                            }
                        } else {
                            d2 = d7;
                        }
                        push(this.fitnessHistory, d2);
                        if (this.generateStatistics) {
                            this.statisticsSigmaHistory.add(Double.valueOf(this.sigma));
                            this.statisticsFitnessHistory.add(Double.valueOf(d2));
                            this.statisticsMeanHistory.add(this.xmean.transpose());
                            this.statisticsDHistory.add(this.diagD.transpose().scalarMultiply(100000.0d));
                        }
                        this.iterations++;
                        pointValuePair6 = pointValuePair;
                        fitnessFunction2 = fitnessFunction;
                        d5 = d6;
                        i3 = 1;
                    }
                }
            }
            return pointValuePair;
        }
        pointValuePair6 = pointValuePair6;
        return pointValuePair6;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return super.optimize(optimizationDataArr);
    }

    private static double max(double[] dArr) {
        double d2 = -1.7976931348623157E308d;
        for (int i = 0; i < dArr.length; i++) {
            if (d2 < dArr[i]) {
                d2 = dArr[i];
            }
        }
        return d2;
    }

    private static double min(double[] dArr) {
        double d2 = Double.MAX_VALUE;
        for (int i = 0; i < dArr.length; i++) {
            if (d2 > dArr[i]) {
                d2 = dArr[i];
            }
        }
        return d2;
    }
}
