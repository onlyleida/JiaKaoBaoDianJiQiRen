package org.apache.commons.math3.stat.inference;

import java.util.Collection;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;

/* JADX INFO: loaded from: classes6.dex */
public class TestUtils {
    private static final TTest T_TEST = new TTest();
    private static final ChiSquareTest CHI_SQUARE_TEST = new ChiSquareTest();
    private static final OneWayAnova ONE_WAY_ANANOVA = new OneWayAnova();
    private static final GTest G_TEST = new GTest();
    private static final KolmogorovSmirnovTest KS_TEST = new KolmogorovSmirnovTest();

    private TestUtils() {
    }

    public static double approximateP(double d2, int i, int i2) {
        return KS_TEST.approximateP(d2, i, i2);
    }

    public static double chiSquare(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException {
        return CHI_SQUARE_TEST.chiSquare(dArr, jArr);
    }

    public static double chiSquareDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException {
        return CHI_SQUARE_TEST.chiSquareDataSetsComparison(jArr, jArr2);
    }

    public static boolean chiSquareTest(double[] dArr, long[] jArr, double d2) throws OutOfRangeException, NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(dArr, jArr, d2);
    }

    public static double chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTestDataSetsComparison(jArr, jArr2);
    }

    public static double exactP(double d2, int i, int i2, boolean z) {
        return KS_TEST.exactP(d2, i2, i, z);
    }

    public static double g(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException {
        return G_TEST.g(dArr, jArr);
    }

    public static double gDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException {
        return G_TEST.gDataSetsComparison(jArr, jArr2);
    }

    public static double gTest(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTest(dArr, jArr);
    }

    public static double gTestDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTestDataSetsComparison(jArr, jArr2);
    }

    public static double gTestIntrinsic(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTestIntrinsic(dArr, jArr);
    }

    public static double homoscedasticT(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException {
        return T_TEST.homoscedasticT(dArr, dArr2);
    }

    public static boolean homoscedasticTTest(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        return T_TEST.homoscedasticTTest(dArr, dArr2, d2);
    }

    public static double kolmogorovSmirnovStatistic(RealDistribution realDistribution, double[] dArr) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovStatistic(realDistribution, dArr);
    }

    public static double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovTest(realDistribution, dArr);
    }

    public static double monteCarloP(double d2, int i, int i2, boolean z, int i3) {
        return KS_TEST.monteCarloP(d2, i, i2, z, i3);
    }

    public static double oneWayAnovaFValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        return ONE_WAY_ANANOVA.anovaFValue(collection);
    }

    public static double oneWayAnovaPValue(Collection<double[]> collection) throws NullArgumentException, ConvergenceException, DimensionMismatchException, MaxCountExceededException {
        return ONE_WAY_ANANOVA.anovaPValue(collection);
    }

    public static boolean oneWayAnovaTest(Collection<double[]> collection, double d2) throws OutOfRangeException, NullArgumentException, ConvergenceException, DimensionMismatchException, MaxCountExceededException {
        return ONE_WAY_ANANOVA.anovaTest(collection, d2);
    }

    public static double pairedT(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, NoDataException, DimensionMismatchException {
        return T_TEST.pairedT(dArr, dArr2);
    }

    public static boolean pairedTTest(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, NoDataException, DimensionMismatchException, MaxCountExceededException {
        return T_TEST.pairedTTest(dArr, dArr2, d2);
    }

    public static double rootLogLikelihoodRatio(long j, long j2, long j3, long j4) throws NotPositiveException, ZeroException, DimensionMismatchException {
        return G_TEST.rootLogLikelihoodRatio(j, j2, j3, j4);
    }

    public static double t(double d2, double[] dArr) throws NumberIsTooSmallException, NullArgumentException {
        return T_TEST.t(d2, dArr);
    }

    public static boolean tTest(double d2, double[] dArr, double d3) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(d2, dArr, d3);
    }

    public static double chiSquare(long[][] jArr) throws NotPositiveException, NullArgumentException, DimensionMismatchException {
        return CHI_SQUARE_TEST.chiSquare(jArr);
    }

    public static double chiSquareTest(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(dArr, jArr);
    }

    public static boolean chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2, double d2) throws OutOfRangeException, NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTestDataSetsComparison(jArr, jArr2, d2);
    }

    public static boolean gTest(double[] dArr, long[] jArr, double d2) throws OutOfRangeException, NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTest(dArr, jArr, d2);
    }

    public static boolean gTestDataSetsComparison(long[] jArr, long[] jArr2, double d2) throws OutOfRangeException, NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        return G_TEST.gTestDataSetsComparison(jArr, jArr2, d2);
    }

    public static double homoscedasticT(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException {
        return T_TEST.homoscedasticT(statisticalSummary, statisticalSummary2);
    }

    public static double homoscedasticTTest(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        return T_TEST.homoscedasticTTest(dArr, dArr2);
    }

    public static double kolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovStatistic(dArr, dArr2);
    }

    public static double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, boolean z) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovTest(realDistribution, dArr, z);
    }

    public static double pairedTTest(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, NoDataException, DimensionMismatchException, MaxCountExceededException {
        return T_TEST.pairedTTest(dArr, dArr2);
    }

    public static double t(double d2, StatisticalSummary statisticalSummary) throws NumberIsTooSmallException, NullArgumentException {
        return T_TEST.t(d2, statisticalSummary);
    }

    public static double tTest(double d2, double[] dArr) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(d2, dArr);
    }

    public static boolean chiSquareTest(long[][] jArr, double d2) throws OutOfRangeException, NotPositiveException, NullArgumentException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(jArr, d2);
    }

    public static double homoscedasticTTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        return T_TEST.homoscedasticTTest(statisticalSummary, statisticalSummary2);
    }

    public static boolean kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, double d2) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovTest(realDistribution, dArr, d2);
    }

    public static double t(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException {
        return T_TEST.t(dArr, dArr2);
    }

    public static boolean tTest(double d2, StatisticalSummary statisticalSummary, double d3) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(d2, statisticalSummary, d3);
    }

    public static double chiSquareTest(long[][] jArr) throws NotPositiveException, NullArgumentException, DimensionMismatchException, MaxCountExceededException {
        return CHI_SQUARE_TEST.chiSquareTest(jArr);
    }

    public static double kolmogorovSmirnovTest(double[] dArr, double[] dArr2) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovTest(dArr, dArr2);
    }

    public static double t(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException {
        return T_TEST.t(statisticalSummary, statisticalSummary2);
    }

    public static double tTest(double d2, StatisticalSummary statisticalSummary) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(d2, statisticalSummary);
    }

    public static double kolmogorovSmirnovTest(double[] dArr, double[] dArr2, boolean z) throws NullArgumentException, InsufficientDataException {
        return KS_TEST.kolmogorovSmirnovTest(dArr, dArr2, z);
    }

    public static boolean tTest(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(dArr, dArr2, d2);
    }

    public static double tTest(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(dArr, dArr2);
    }

    public static boolean tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2, double d2) throws NumberIsTooSmallException, OutOfRangeException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(statisticalSummary, statisticalSummary2, d2);
    }

    public static double tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NumberIsTooSmallException, NullArgumentException, MaxCountExceededException {
        return T_TEST.tTest(statisticalSummary, statisticalSummary2);
    }
}
