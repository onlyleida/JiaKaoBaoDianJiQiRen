package org.apache.commons.math3.stat.regression;

import java.io.Serializable;
import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class SimpleRegression implements Serializable, UpdatingMultipleLinearRegression {
    private static final long serialVersionUID = -3004689053607543335L;
    private final boolean hasIntercept;
    private long n;
    private double sumX;
    private double sumXX;
    private double sumXY;
    private double sumY;
    private double sumYY;
    private double xbar;
    private double ybar;

    public SimpleRegression() {
        this(true);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0056  */
    public void addData(double d2, double d3) {
        long j = this.n;
        if (j != 0) {
            if (this.hasIntercept) {
                double d4 = j + 1.0d;
                double d5 = j / (j + 1.0d);
                double d6 = this.xbar;
                double d7 = d2 - d6;
                double d8 = this.ybar;
                double d9 = d3 - d8;
                this.sumXX += d7 * d7 * d5;
                this.sumYY += d9 * d9 * d5;
                this.sumXY += d7 * d9 * d5;
                this.xbar = d6 + (d7 / d4);
                this.ybar = d8 + (d9 / d4);
            }
            if (!this.hasIntercept) {
                this.sumXX += d2 * d2;
                this.sumYY += d3 * d3;
                this.sumXY += d2 * d3;
            }
            this.sumX += d2;
            this.sumY += d3;
            this.n = j + 1;
        }
        this.xbar = d2;
        this.ybar = d3;
        if (!this.hasIntercept) {
            this.sumXX += d2 * d2;
            this.sumYY += d3 * d3;
            this.sumXY += d2 * d3;
        }
        this.sumX += d2;
        this.sumY += d3;
        this.n = j + 1;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void addObservation(double[] dArr, double d2) throws ModelSpecificationException {
        if (dArr != null && dArr.length != 0) {
            addData(dArr[0], d2);
            return;
        }
        LocalizedFormats localizedFormats = LocalizedFormats.INVALID_REGRESSION_OBSERVATION;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(dArr != null ? dArr.length : 0);
        objArr[1] = 1;
        throw new ModelSpecificationException(localizedFormats, objArr);
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void addObservations(double[][] dArr, double[] dArr2) throws ModelSpecificationException {
        if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
            LocalizedFormats localizedFormats = LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(dArr == null ? 0 : dArr.length);
            objArr[1] = Integer.valueOf(dArr2 != null ? dArr2.length : 0);
            throw new ModelSpecificationException(localizedFormats, objArr);
        }
        boolean z = true;
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] == null || dArr[i].length == 0) {
                z = false;
            }
        }
        if (!z) {
            throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, 0, 1);
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            addData(dArr[i2][0], dArr2[i2]);
        }
    }

    public void append(SimpleRegression simpleRegression) {
        long j = this.n;
        if (j == 0) {
            this.xbar = simpleRegression.xbar;
            this.ybar = simpleRegression.ybar;
            this.sumXX = simpleRegression.sumXX;
            this.sumYY = simpleRegression.sumYY;
            this.sumXY = simpleRegression.sumXY;
        } else if (this.hasIntercept) {
            long j2 = simpleRegression.n;
            double d2 = j2 / (j2 + j);
            double d3 = (j * j2) / (j2 + j);
            double d4 = simpleRegression.xbar;
            double d5 = this.xbar;
            double d6 = d4 - d5;
            double d7 = simpleRegression.ybar;
            double d8 = this.ybar;
            double d9 = d7 - d8;
            this.sumXX += simpleRegression.sumXX + (d6 * d6 * d3);
            this.sumYY += simpleRegression.sumYY + (d9 * d9 * d3);
            this.sumXY += simpleRegression.sumXY + (d6 * d9 * d3);
            this.xbar = d5 + (d6 * d2);
            this.ybar = d8 + (d9 * d2);
        } else {
            this.sumXX += simpleRegression.sumXX;
            this.sumYY += simpleRegression.sumYY;
            this.sumXY += simpleRegression.sumXY;
        }
        this.sumX += simpleRegression.sumX;
        this.sumY += simpleRegression.sumY;
        this.n = j + simpleRegression.n;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void clear() {
        this.sumX = 0.0d;
        this.sumXX = 0.0d;
        this.sumY = 0.0d;
        this.sumYY = 0.0d;
        this.sumXY = 0.0d;
        this.n = 0L;
    }

    public double getIntercept() {
        if (this.hasIntercept) {
            return getIntercept(getSlope());
        }
        return 0.0d;
    }

    public double getInterceptStdErr() {
        if (!this.hasIntercept) {
            return Double.NaN;
        }
        double meanSquareError = getMeanSquareError();
        double d2 = 1.0d / this.n;
        double d3 = this.xbar;
        return FastMath.sqrt(meanSquareError * (d2 + ((d3 * d3) / this.sumXX)));
    }

    public double getMeanSquareError() {
        double sumSquaredErrors;
        long j;
        long j2;
        if (this.n < 3) {
            return Double.NaN;
        }
        if (this.hasIntercept) {
            sumSquaredErrors = getSumSquaredErrors();
            j = this.n;
            j2 = 2;
        } else {
            sumSquaredErrors = getSumSquaredErrors();
            j = this.n;
            j2 = 1;
        }
        return sumSquaredErrors / (j - j2);
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public long getN() {
        return this.n;
    }

    public double getR() {
        double slope = getSlope();
        double dSqrt = FastMath.sqrt(getRSquare());
        return slope < 0.0d ? -dSqrt : dSqrt;
    }

    public double getRSquare() {
        double totalSumSquares = getTotalSumSquares();
        return (totalSumSquares - getSumSquaredErrors()) / totalSumSquares;
    }

    public double getRegressionSumSquares() {
        return getRegressionSumSquares(getSlope());
    }

    public double getSignificance() {
        long j = this.n;
        if (j < 3) {
            return Double.NaN;
        }
        return (1.0d - new TDistribution(j - 2).cumulativeProbability(FastMath.abs(getSlope()) / getSlopeStdErr())) * 2.0d;
    }

    public double getSlope() {
        if (this.n >= 2 && FastMath.abs(this.sumXX) >= 4.9E-323d) {
            return this.sumXY / this.sumXX;
        }
        return Double.NaN;
    }

    public double getSlopeConfidenceInterval() throws OutOfRangeException {
        return getSlopeConfidenceInterval(0.05d);
    }

    public double getSlopeStdErr() {
        return FastMath.sqrt(getMeanSquareError() / this.sumXX);
    }

    public double getSumOfCrossProducts() {
        return this.sumXY;
    }

    public double getSumSquaredErrors() {
        double d2 = this.sumYY;
        double d3 = this.sumXY;
        return FastMath.max(0.0d, d2 - ((d3 * d3) / this.sumXX));
    }

    public double getTotalSumSquares() {
        if (this.n < 2) {
            return Double.NaN;
        }
        return this.sumYY;
    }

    public double getXSumSquares() {
        if (this.n < 2) {
            return Double.NaN;
        }
        return this.sumXX;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public boolean hasIntercept() {
        return this.hasIntercept;
    }

    public double predict(double d2) {
        double slope = getSlope();
        return this.hasIntercept ? getIntercept(slope) + (slope * d2) : slope * d2;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public RegressionResults regress() throws NoDataException, ModelSpecificationException {
        if (!this.hasIntercept) {
            if (this.n < 2) {
                throw new NoDataException(LocalizedFormats.NOT_ENOUGH_DATA_REGRESSION);
            }
            if (Double.isNaN(this.sumXX)) {
                return new RegressionResults(new double[]{Double.NaN}, new double[][]{new double[]{Double.NaN}}, true, this.n, 1, Double.NaN, Double.NaN, Double.NaN, false, false);
            }
            double meanSquareError = getMeanSquareError();
            double d2 = this.sumXX;
            return new RegressionResults(new double[]{this.sumXY / d2}, new double[][]{new double[]{meanSquareError / d2}}, true, this.n, 1, this.sumY, this.sumYY, getSumSquaredErrors(), false, false);
        }
        if (this.n < 3) {
            throw new NoDataException(LocalizedFormats.NOT_ENOUGH_DATA_REGRESSION);
        }
        if (FastMath.abs(this.sumXX) <= Precision.SAFE_MIN) {
            double d3 = this.sumY;
            long j = this.n;
            return new RegressionResults(new double[]{d3 / j, Double.NaN}, new double[][]{new double[]{this.ybar / (j - 1.0d), Double.NaN, Double.NaN}}, true, j, 1, d3, this.sumYY, getSumSquaredErrors(), true, false);
        }
        double[] dArr = {getIntercept(), getSlope()};
        double meanSquareError2 = getMeanSquareError();
        double d4 = this.sumYY;
        double d5 = this.sumY;
        long j2 = this.n;
        double d6 = d4 + ((d5 * d5) / j2);
        double d7 = this.xbar;
        double d8 = this.sumXX;
        return new RegressionResults(dArr, new double[][]{new double[]{(((d7 * d7) / d8) + (1.0d / j2)) * meanSquareError2, ((-d7) * meanSquareError2) / d8, meanSquareError2 / d8}}, true, j2, 2, d5, d6, getSumSquaredErrors(), true, false);
    }

    public void removeData(double d2, double d3) {
        long j = this.n;
        if (j > 0) {
            if (this.hasIntercept) {
                double d4 = j - 1.0d;
                double d5 = j / (j - 1.0d);
                double d6 = this.xbar;
                double d7 = d2 - d6;
                double d8 = this.ybar;
                double d9 = d3 - d8;
                this.sumXX -= (d7 * d7) * d5;
                this.sumYY -= (d9 * d9) * d5;
                this.sumXY -= (d7 * d9) * d5;
                this.xbar = d6 - (d7 / d4);
                this.ybar = d8 - (d9 / d4);
                j = j;
            } else {
                double d10 = j - 1.0d;
                this.sumXX -= d2 * d2;
                this.sumYY -= d3 * d3;
                this.sumXY -= d2 * d3;
                this.xbar -= d2 / d10;
                this.ybar -= d3 / d10;
            }
            this.sumX -= d2;
            this.sumY -= d3;
            this.n = j - 1;
        }
    }

    public SimpleRegression(boolean z) {
        this.sumX = 0.0d;
        this.sumXX = 0.0d;
        this.sumY = 0.0d;
        this.sumYY = 0.0d;
        this.sumXY = 0.0d;
        this.n = 0L;
        this.xbar = 0.0d;
        this.ybar = 0.0d;
        this.hasIntercept = z;
    }

    private double getIntercept(double d2) {
        if (this.hasIntercept) {
            return (this.sumY - (d2 * this.sumX)) / this.n;
        }
        return 0.0d;
    }

    private double getRegressionSumSquares(double d2) {
        return d2 * d2 * this.sumXX;
    }

    public double getSlopeConfidenceInterval(double d2) throws OutOfRangeException {
        long j = this.n;
        if (j < 3) {
            return Double.NaN;
        }
        if (d2 >= 1.0d || d2 <= 0.0d) {
            throw new OutOfRangeException(LocalizedFormats.SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, 1);
        }
        return getSlopeStdErr() * new TDistribution(j - 2).inverseCumulativeProbability(1.0d - (d2 / 2.0d));
    }

    public void removeData(double[][] dArr) {
        for (int i = 0; i < dArr.length && this.n > 0; i++) {
            removeData(dArr[i][0], dArr[i][1]);
        }
    }

    public void addData(double[][] dArr) throws ModelSpecificationException {
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i].length >= 2) {
                addData(dArr[i][0], dArr[i][1]);
            } else {
                throw new ModelSpecificationException(LocalizedFormats.INVALID_REGRESSION_OBSERVATION, Integer.valueOf(dArr[i].length), 2);
            }
        }
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public RegressionResults regress(int[] iArr) throws MathIllegalArgumentException {
        if (iArr != null && iArr.length != 0) {
            int i = 2;
            if (iArr.length <= 2 && (iArr.length <= 1 || this.hasIntercept)) {
                if (this.hasIntercept) {
                    if (iArr.length == 2) {
                        if (iArr[0] != 1) {
                            if (iArr[0] == 0) {
                                if (iArr[1] == 1) {
                                    return regress();
                                }
                                throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 1);
                            }
                            throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 1);
                        }
                        throw new ModelSpecificationException(LocalizedFormats.NOT_INCREASING_SEQUENCE, new Object[0]);
                    }
                    if (iArr[0] != 1 && iArr[0] != 0) {
                        throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 1);
                    }
                    double d2 = this.sumY;
                    long j = this.n;
                    double d3 = (d2 * d2) / j;
                    double d4 = this.sumYY;
                    double d5 = d4 + d3;
                    if (iArr[0] == 0) {
                        return new RegressionResults(new double[]{this.ybar}, new double[][]{new double[]{d4 / ((j - 1) * j)}}, true, j, 1, d2, d5 + d3, d4, true, false);
                    }
                    if (iArr[0] != 1) {
                        return null;
                    }
                    double d6 = this.sumXX;
                    double d7 = this.sumX;
                    double d8 = d6 + ((d7 * d7) / j);
                    double d9 = this.sumXY + ((d7 * d2) / j);
                    double dMax = FastMath.max(0.0d, d5 - ((d9 * d9) / d8));
                    double d10 = dMax / (this.n - 1);
                    if (!Double.isNaN(d8)) {
                        return new RegressionResults(new double[]{d9 / d8}, new double[][]{new double[]{d10 / d8}}, true, this.n, 1, this.sumY, d5, dMax, false, false);
                    }
                    return new RegressionResults(new double[]{Double.NaN}, new double[][]{new double[]{Double.NaN}}, true, this.n, 1, Double.NaN, Double.NaN, Double.NaN, false, false);
                }
                if (iArr[0] == 0) {
                    return regress();
                }
                throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 0);
            }
            LocalizedFormats localizedFormats = LocalizedFormats.ARRAY_SIZE_EXCEEDS_MAX_VARIABLES;
            Object[] objArr = new Object[1];
            if (iArr.length > 1 && !this.hasIntercept) {
                i = 1;
            }
            objArr[0] = Integer.valueOf(i);
            throw new ModelSpecificationException(localizedFormats, objArr);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED, new Object[0]);
    }
}
