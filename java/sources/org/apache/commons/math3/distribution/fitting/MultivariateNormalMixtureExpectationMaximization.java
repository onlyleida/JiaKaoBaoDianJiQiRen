package org.apache.commons.math3.distribution.fitting;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.distribution.MixtureMultivariateNormalDistribution;
import org.apache.commons.math3.distribution.MultivariateNormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.stat.correlation.Covariance;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class MultivariateNormalMixtureExpectationMaximization {
    private static final int DEFAULT_MAX_ITERATIONS = 1000;
    private static final double DEFAULT_THRESHOLD = 1.0E-5d;
    private final double[][] data;
    private MixtureMultivariateNormalDistribution fittedModel;
    private double logLikelihood = 0.0d;

    private static class DataRow implements Comparable<DataRow> {
        private Double mean;
        private final double[] row;

        DataRow(double[] dArr) {
            this.row = dArr;
            this.mean = Double.valueOf(0.0d);
            for (double d2 : dArr) {
                this.mean = Double.valueOf(this.mean.doubleValue() + d2);
            }
            this.mean = Double.valueOf(this.mean.doubleValue() / ((double) dArr.length));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DataRow) {
                return MathArrays.equals(this.row, ((DataRow) obj).row);
            }
            return false;
        }

        public double[] getRow() {
            return this.row;
        }

        public int hashCode() {
            return Arrays.hashCode(this.row);
        }

        @Override // java.lang.Comparable
        public int compareTo(DataRow dataRow) {
            return this.mean.compareTo(dataRow.mean);
        }
    }

    public MultivariateNormalMixtureExpectationMaximization(double[][] dArr) throws NumberIsTooSmallException, DimensionMismatchException {
        if (dArr.length < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(dArr.length));
        }
        this.data = (double[][]) Array.newInstance((Class<?>) double.class, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i].length != dArr[0].length) {
                throw new DimensionMismatchException(dArr[i].length, dArr[0].length);
            }
            if (dArr[i].length < 2) {
                throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(dArr[i].length), 2, true);
            }
            this.data[i] = MathArrays.copyOf(dArr[i], dArr[i].length);
        }
    }

    public static MixtureMultivariateNormalDistribution estimate(double[][] dArr, int i) throws NotStrictlyPositiveException, DimensionMismatchException {
        if (dArr.length < 2) {
            throw new NotStrictlyPositiveException(Integer.valueOf(dArr.length));
        }
        if (i < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
        }
        if (i > dArr.length) {
            throw new NumberIsTooLargeException(Integer.valueOf(i), Integer.valueOf(dArr.length), true);
        }
        int length = dArr.length;
        int i2 = 0;
        int length2 = dArr[0].length;
        DataRow[] dataRowArr = new DataRow[length];
        for (int i3 = 0; i3 < length; i3++) {
            dataRowArr[i3] = new DataRow(dArr[i3]);
        }
        Arrays.sort(dataRowArr);
        double d2 = 1.0d / ((double) i);
        ArrayList arrayList = new ArrayList(i);
        int i4 = 0;
        while (i4 < i) {
            int i5 = (i4 * length) / i;
            i4++;
            int i6 = (i4 * length) / i;
            int i7 = i6 - i5;
            int[] iArr = new int[2];
            iArr[1] = length2;
            iArr[i2] = i7;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, iArr);
            double[] dArr3 = new double[length2];
            int i8 = 0;
            while (i5 < i6) {
                while (i2 < length2) {
                    double d3 = dataRowArr[i5].getRow()[i2];
                    dArr3[i2] = dArr3[i2] + d3;
                    dArr2[i8][i2] = d3;
                    i2++;
                }
                i5++;
                i8++;
                i2 = 0;
            }
            MathArrays.scaleInPlace(1.0d / ((double) i7), dArr3);
            arrayList.add(new Pair(Double.valueOf(d2), new MultivariateNormalDistribution(dArr3, new Covariance(dArr2).getCovarianceMatrix().getData())));
            i2 = 0;
        }
        return new MixtureMultivariateNormalDistribution(arrayList);
    }

    public void fit(MixtureMultivariateNormalDistribution mixtureMultivariateNormalDistribution, int i, double d2) throws NotStrictlyPositiveException, SingularMatrixException, DimensionMismatchException {
        int i2 = i;
        char c = 1;
        if (i2 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (d2 < Double.MIN_VALUE) {
            throw new NotStrictlyPositiveException(Double.valueOf(d2));
        }
        double[][] dArr = this.data;
        int length = dArr.length;
        int i3 = 0;
        int length2 = dArr[0].length;
        int size = mixtureMultivariateNormalDistribution.getComponents().size();
        int length3 = mixtureMultivariateNormalDistribution.getComponents().get(0).getSecond().getMeans().length;
        if (length3 != length2) {
            throw new DimensionMismatchException(length3, length2);
        }
        this.logLikelihood = Double.NEGATIVE_INFINITY;
        this.fittedModel = new MixtureMultivariateNormalDistribution(mixtureMultivariateNormalDistribution.getComponents());
        int i4 = 0;
        double d3 = 0.0d;
        while (true) {
            int i5 = i4 + 1;
            if (i4 > i2 || FastMath.abs(d3 - this.logLikelihood) <= d2) {
                break;
            }
            double d4 = this.logLikelihood;
            List<Pair<Double, MultivariateNormalDistribution>> components = this.fittedModel.getComponents();
            double[] dArr2 = new double[size];
            MultivariateNormalDistribution[] multivariateNormalDistributionArr = new MultivariateNormalDistribution[size];
            for (int i6 = 0; i6 < size; i6++) {
                dArr2[i6] = components.get(i6).getFirst().doubleValue();
                multivariateNormalDistributionArr[i6] = components.get(i6).getSecond();
            }
            int[] iArr = new int[2];
            iArr[c] = size;
            iArr[i3] = length;
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, iArr);
            double[] dArr4 = new double[size];
            int[] iArr2 = new int[2];
            iArr2[c] = length2;
            iArr2[i3] = size;
            double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, iArr2);
            double dLog = 0.0d;
            while (i3 < length) {
                double dDensity = this.fittedModel.density(this.data[i3]);
                dLog += FastMath.log(dDensity);
                int i7 = 0;
                while (i7 < size) {
                    double d5 = d4;
                    dArr3[i3][i7] = (dArr2[i7] * multivariateNormalDistributionArr[i7].density(this.data[i3])) / dDensity;
                    dArr4[i7] = dArr4[i7] + dArr3[i3][i7];
                    for (int i8 = 0; i8 < length2; i8++) {
                        double[] dArr6 = dArr5[i7];
                        dArr6[i8] = dArr6[i8] + (dArr3[i3][i7] * this.data[i3][i8]);
                    }
                    i7++;
                    d4 = d5;
                }
                i3++;
            }
            double d6 = d4;
            double d7 = length;
            this.logLikelihood = dLog / d7;
            double[] dArr7 = new double[size];
            double[][] dArr8 = (double[][]) Array.newInstance((Class<?>) double.class, size, length2);
            for (int i9 = 0; i9 < size; i9++) {
                dArr7[i9] = dArr4[i9] / d7;
                for (int i10 = 0; i10 < length2; i10++) {
                    dArr8[i9][i10] = dArr5[i9][i10] / dArr4[i9];
                }
            }
            RealMatrix[] realMatrixArr = new RealMatrix[size];
            for (int i11 = 0; i11 < size; i11++) {
                realMatrixArr[i11] = new Array2DRowRealMatrix(length2, length2);
            }
            for (int i12 = 0; i12 < length; i12++) {
                int i13 = 0;
                while (i13 < size) {
                    Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(MathArrays.ebeSubtract(this.data[i12], dArr8[i13]));
                    realMatrixArr[i13] = realMatrixArr[i13].add(array2DRowRealMatrix.multiply(array2DRowRealMatrix.transpose()).scalarMultiply(dArr3[i12][i13]));
                    i13++;
                    i5 = i5;
                }
            }
            int i14 = i5;
            double[][][] dArr9 = (double[][][]) Array.newInstance((Class<?>) double.class, size, length2, length2);
            int i15 = 0;
            while (i15 < size) {
                realMatrixArr[i15] = realMatrixArr[i15].scalarMultiply(1.0d / dArr4[i15]);
                dArr9[i15] = realMatrixArr[i15].getData();
                i15++;
                dArr4 = dArr4;
            }
            this.fittedModel = new MixtureMultivariateNormalDistribution(dArr7, dArr8, dArr9);
            i2 = i;
            i4 = i14;
            d3 = d6;
            c = 1;
            i3 = 0;
        }
        if (FastMath.abs(d3 - this.logLikelihood) > d2) {
            throw new ConvergenceException();
        }
    }

    public MixtureMultivariateNormalDistribution getFittedModel() {
        return new MixtureMultivariateNormalDistribution(this.fittedModel.getComponents());
    }

    public double getLogLikelihood() {
        return this.logLikelihood;
    }

    public void fit(MixtureMultivariateNormalDistribution mixtureMultivariateNormalDistribution) throws NotStrictlyPositiveException, SingularMatrixException {
        fit(mixtureMultivariateNormalDistribution, 1000, DEFAULT_THRESHOLD);
    }
}
