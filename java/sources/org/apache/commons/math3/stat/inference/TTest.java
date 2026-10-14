package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.StatUtils;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class TTest {
    private void checkSampleData(double[] dArr) throws NumberIsTooSmallException, NullArgumentException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DATA_FOR_T_STATISTIC, Integer.valueOf(dArr.length), 2, true);
        }
    }

    private void checkSignificanceLevel(double d2) throws OutOfRangeException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.SIGNIFICANCE_LEVEL, Double.valueOf(d2), Double.valueOf(0.0d), Double.valueOf(0.5d));
        }
    }

    protected double df(double d2, double d3, double d4, double d5) {
        double d6 = (d2 / d4) + (d3 / d5);
        return (d6 * d6) / (((d2 * d2) / ((d4 * d4) * (d4 - 1.0d))) + ((d3 * d3) / ((d5 * d5) * (d5 - 1.0d))));
    }

    public double homoscedasticT(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return homoscedasticT(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double homoscedasticTTest(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return homoscedasticTTest(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double pairedT(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, NoDataException, DimensionMismatchException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        double dMeanDifference = StatUtils.meanDifference(dArr, dArr2);
        return t(dMeanDifference, 0.0d, StatUtils.varianceDifference(dArr, dArr2, dMeanDifference), dArr.length);
    }

    public double pairedTTest(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, NoDataException, DimensionMismatchException, MaxCountExceededException {
        double dMeanDifference = StatUtils.meanDifference(dArr, dArr2);
        return tTest(dMeanDifference, 0.0d, StatUtils.varianceDifference(dArr, dArr2, dMeanDifference), dArr.length);
    }

    public double t(double d2, double[] dArr) throws NumberIsTooSmallException, NullArgumentException {
        checkSampleData(dArr);
        return t(StatUtils.mean(dArr), d2, StatUtils.variance(dArr), dArr.length);
    }

    public double tTest(double d2, double[] dArr) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        checkSampleData(dArr);
        return tTest(StatUtils.mean(dArr), d2, StatUtils.variance(dArr), dArr.length);
    }

    public boolean pairedTTest(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, NoDataException, DimensionMismatchException, MaxCountExceededException {
        checkSignificanceLevel(d2);
        return pairedTTest(dArr, dArr2) < d2;
    }

    public double t(double d2, StatisticalSummary statisticalSummary) throws NumberIsTooSmallException, NullArgumentException {
        checkSampleData(statisticalSummary);
        return t(statisticalSummary.getMean(), d2, statisticalSummary.getVariance(), statisticalSummary.getN());
    }

    public boolean tTest(double d2, double[] dArr, double d3) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        checkSignificanceLevel(d3);
        return tTest(d2, dArr) < d3;
    }

    private void checkSampleData(StatisticalSummary statisticalSummary) throws NumberIsTooSmallException, NullArgumentException {
        if (statisticalSummary == null) {
            throw new NullArgumentException();
        }
        if (statisticalSummary.getN() < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DATA_FOR_T_STATISTIC, Long.valueOf(statisticalSummary.getN()), 2, true);
        }
    }

    public double homoscedasticT(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return homoscedasticT(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public boolean homoscedasticTTest(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        checkSignificanceLevel(d2);
        return homoscedasticTTest(dArr, dArr2) < d2;
    }

    public double t(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return t(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double tTest(double d2, StatisticalSummary statisticalSummary) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        checkSampleData(statisticalSummary);
        return tTest(statisticalSummary.getMean(), d2, statisticalSummary.getVariance(), statisticalSummary.getN());
    }

    public double homoscedasticTTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return homoscedasticTTest(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    protected double homoscedasticT(double d2, double d3, double d4, double d5, double d6, double d7) {
        return (d2 - d3) / FastMath.sqrt(((((d6 - 1.0d) * d4) + ((d7 - 1.0d) * d5)) / ((d6 + d7) - 2.0d)) * ((1.0d / d6) + (1.0d / d7)));
    }

    public boolean tTest(double d2, StatisticalSummary statisticalSummary, double d3) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        checkSignificanceLevel(d3);
        return tTest(d2, statisticalSummary) < d3;
    }

    public double t(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return t(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    protected double homoscedasticTTest(double d2, double d3, double d4, double d5, double d6, double d7) throws NotStrictlyPositiveException, MaxCountExceededException {
        return new TDistribution((RandomGenerator) null, (d6 + d7) - 2.0d).cumulativeProbability(-FastMath.abs(homoscedasticT(d2, d3, d4, d5, d6, d7))) * 2.0d;
    }

    public double tTest(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        checkSampleData(dArr);
        checkSampleData(dArr2);
        return tTest(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    protected double t(double d2, double d3, double d4, double d5) {
        return (d2 - d3) / FastMath.sqrt(d4 / d5);
    }

    protected double t(double d2, double d3, double d4, double d5, double d6, double d7) {
        return (d2 - d3) / FastMath.sqrt((d4 / d6) + (d5 / d7));
    }

    public boolean tTest(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        checkSignificanceLevel(d2);
        return tTest(dArr, dArr2) < d2;
    }

    public double tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        checkSampleData(statisticalSummary);
        checkSampleData(statisticalSummary2);
        return tTest(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public boolean tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        checkSignificanceLevel(d2);
        return tTest(statisticalSummary, statisticalSummary2) < d2;
    }

    protected double tTest(double d2, double d3, double d4, double d5) throws MaxCountExceededException, MathIllegalArgumentException {
        return new TDistribution((RandomGenerator) null, d5 - 1.0d).cumulativeProbability(-FastMath.abs(t(d2, d3, d4, d5))) * 2.0d;
    }

    protected double tTest(double d2, double d3, double d4, double d5, double d6, double d7) throws NotStrictlyPositiveException, MaxCountExceededException {
        return new TDistribution((RandomGenerator) null, df(d4, d5, d6, d7)).cumulativeProbability(-FastMath.abs(t(d2, d3, d4, d5, d6, d7))) * 2.0d;
    }
}
