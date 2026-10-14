package org.apache.commons.math3.stat.inference;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import org.apache.commons.math3.distribution.EnumeratedRealDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.distribution.UniformRealDistribution;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.BigFractionField;
import org.apache.commons.math3.fraction.FractionConversionException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class KolmogorovSmirnovTest {
    protected static final double KS_SUM_CAUCHY_CRITERION = 1.0E-20d;
    protected static final int LARGE_SAMPLE_PRODUCT = 10000;
    protected static final int MAXIMUM_PARTIAL_SUM_COUNT = 100000;

    @Deprecated
    protected static final int MONTE_CARLO_ITERATIONS = 1000000;
    protected static final double PG_SUM_RELATIVE_ERROR = 1.0E-10d;

    @Deprecated
    protected static final int SMALL_SAMPLE_PRODUCT = 200;
    private final RandomGenerator rng;

    public KolmogorovSmirnovTest() {
        this.rng = new Well19937c();
    }

    private static int c(int i, int i2, int i3, int i4, long j, boolean z) {
        if (z) {
            return FastMath.abs((((long) i) * ((long) i4)) - (((long) i2) * ((long) i3))) <= j ? 1 : 0;
        }
        return FastMath.abs((((long) i) * ((long) i4)) - (((long) i2) * ((long) i3))) < j ? 1 : 0;
    }

    private static long calculateIntegralD(double d2, int i, int i2, boolean z) {
        double d3 = ((long) i) * ((long) i2);
        long jCeil = (long) FastMath.ceil((d2 - 1.0E-12d) * d3);
        return (z && ((long) FastMath.floor((d2 + 1.0E-12d) * d3)) == jCeil) ? jCeil + 1 : jCeil;
    }

    private void checkArray(double[] dArr) {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        }
        if (dArr.length < 2) {
            throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(dArr.length), 2);
        }
    }

    private FieldMatrix<BigFraction> createExactH(double d2, int i) throws FractionConversionException, NumberIsTooLargeException {
        BigFraction bigFraction;
        int i2;
        double d3 = ((double) i) * d2;
        int iCeil = (int) Math.ceil(d3);
        int i3 = (iCeil * 2) - 1;
        double d4 = ((double) iCeil) - d3;
        if (d4 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d4), Double.valueOf(1.0d), false);
        }
        try {
            try {
                bigFraction = new BigFraction(d4, KS_SUM_CAUCHY_CRITERION, 10000);
            } catch (FractionConversionException unused) {
                bigFraction = new BigFraction(d4, 1.0E-5d, 10000);
            }
        } catch (FractionConversionException unused2) {
            bigFraction = new BigFraction(d4, 1.0E-10d, 10000);
        }
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i3, i3);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                if ((i4 - i5) + 1 < 0) {
                    bigFractionArr[i4][i5] = BigFraction.ZERO;
                } else {
                    bigFractionArr[i4][i5] = BigFraction.ONE;
                }
            }
        }
        BigFraction[] bigFractionArr2 = new BigFraction[i3];
        bigFractionArr2[0] = bigFraction;
        for (int i6 = 1; i6 < i3; i6++) {
            bigFractionArr2[i6] = bigFraction.multiply(bigFractionArr2[i6 - 1]);
        }
        for (int i7 = 0; i7 < i3; i7++) {
            bigFractionArr[i7][0] = bigFractionArr[i7][0].subtract(bigFractionArr2[i7]);
            int i8 = i3 - 1;
            bigFractionArr[i8][i7] = bigFractionArr[i8][i7].subtract(bigFractionArr2[(i3 - i7) - 1]);
        }
        if (bigFraction.compareTo(BigFraction.ONE_HALF) == 1) {
            int i9 = i3 - 1;
            bigFractionArr[i9][0] = bigFractionArr[i9][0].add(bigFraction.multiply(2).subtract(1).pow(i3));
        }
        int i10 = 0;
        while (i10 < i3) {
            int i11 = 0;
            while (true) {
                i2 = i10 + 1;
                if (i11 < i2) {
                    int i12 = (i10 - i11) + 1;
                    if (i12 > 0) {
                        for (int i13 = 2; i13 <= i12; i13++) {
                            bigFractionArr[i10][i11] = bigFractionArr[i10][i11].divide(i13);
                        }
                    }
                    i11++;
                }
            }
            i10 = i2;
        }
        return new Array2DRowFieldMatrix(BigFractionField.getInstance(), bigFractionArr);
    }

    private RealMatrix createRoundedH(double d2, int i) throws NumberIsTooLargeException {
        int i2;
        double d3 = ((double) i) * d2;
        int iCeil = (int) Math.ceil(d3);
        int i3 = (iCeil * 2) - 1;
        double d4 = ((double) iCeil) - d3;
        if (d4 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d4), Double.valueOf(1.0d), false);
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, i3, i3);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                if ((i4 - i5) + 1 < 0) {
                    dArr[i4][i5] = 0.0d;
                } else {
                    dArr[i4][i5] = 1.0d;
                }
            }
        }
        double[] dArr2 = new double[i3];
        dArr2[0] = d4;
        for (int i6 = 1; i6 < i3; i6++) {
            dArr2[i6] = dArr2[i6 - 1] * d4;
        }
        for (int i7 = 0; i7 < i3; i7++) {
            dArr[i7][0] = dArr[i7][0] - dArr2[i7];
            double[] dArr3 = dArr[i3 - 1];
            dArr3[i7] = dArr3[i7] - dArr2[(i3 - i7) - 1];
        }
        if (Double.compare(d4, 0.5d) > 0) {
            double[] dArr4 = dArr[i3 - 1];
            dArr4[0] = dArr4[0] + FastMath.pow((d4 * 2.0d) - 1.0d, i3);
        }
        int i8 = 0;
        while (i8 < i3) {
            int i9 = 0;
            while (true) {
                i2 = i8 + 1;
                if (i9 < i2) {
                    int i10 = (i8 - i9) + 1;
                    if (i10 > 0) {
                        for (int i11 = 2; i11 <= i10; i11++) {
                            double[] dArr5 = dArr[i8];
                            dArr5[i9] = dArr5[i9] / ((double) i11);
                        }
                    }
                    i9++;
                }
            }
            i8 = i2;
        }
        return MatrixUtils.createRealMatrix(dArr);
    }

    private double exactK(double d2, int i) throws MathArithmeticException {
        int iCeil = ((int) Math.ceil(((double) i) * d2)) - 1;
        BigFraction bigFractionDivide = (BigFraction) createExactH(d2, i).power(i).getEntry(iCeil, iCeil);
        for (int i2 = 1; i2 <= i; i2++) {
            bigFractionDivide = bigFractionDivide.multiply(i2).divide(i);
        }
        return bigFractionDivide.bigDecimalValue(20, 4).doubleValue();
    }

    static void fillBooleanArrayRandomlyWithFixedNumberTrueValues(boolean[] zArr, int i, RandomGenerator randomGenerator) {
        Arrays.fill(zArr, true);
        while (i < zArr.length) {
            int i2 = i + 1;
            int iNextInt = randomGenerator.nextInt(i2);
            if (zArr[iNextInt]) {
                i = iNextInt;
            }
            zArr[i] = false;
            i = i2;
        }
    }

    private static void fixTies(double[] dArr, double[] dArr2) {
        boolean zHasTies;
        int i = 0;
        double[] dArrUnique = MathArrays.unique(MathArrays.concatenate(dArr, dArr2));
        if (dArrUnique.length == dArr.length + dArr2.length) {
            return;
        }
        double d2 = 1.0d;
        double d3 = dArrUnique[0];
        for (int i2 = 1; i2 < dArrUnique.length; i2++) {
            double d4 = d3 - dArrUnique[i2];
            if (d4 < d2) {
                d2 = d4;
            }
            d3 = dArrUnique[i2];
        }
        double d5 = d2 / 2.0d;
        UniformRealDistribution uniformRealDistribution = new UniformRealDistribution(new JDKRandomGenerator(100), -d5, d5);
        do {
            jitter(dArr, uniformRealDistribution);
            jitter(dArr2, uniformRealDistribution);
            zHasTies = hasTies(dArr, dArr2);
            i++;
            if (!zHasTies) {
                break;
            }
        } while (i < 1000);
        if (zHasTies) {
            throw new MathInternalError();
        }
    }

    private static boolean hasTies(double[] dArr, double[] dArr2) {
        HashSet hashSet = new HashSet();
        for (double d2 : dArr) {
            if (!hashSet.add(Double.valueOf(d2))) {
                return true;
            }
        }
        for (double d3 : dArr2) {
            if (!hashSet.add(Double.valueOf(d3))) {
                return true;
            }
        }
        return false;
    }

    private long integralKolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) {
        checkArray(dArr);
        checkArray(dArr2);
        double[] dArrCopyOf = MathArrays.copyOf(dArr);
        double[] dArrCopyOf2 = MathArrays.copyOf(dArr2);
        Arrays.sort(dArrCopyOf);
        Arrays.sort(dArrCopyOf2);
        int length = dArrCopyOf.length;
        int length2 = dArrCopyOf2.length;
        long j = 0;
        long j2 = 0;
        int i = 0;
        int i2 = 0;
        do {
            double d2 = Double.compare(dArrCopyOf[i], dArrCopyOf2[i2]) <= 0 ? dArrCopyOf[i] : dArrCopyOf2[i2];
            while (i < length && Double.compare(dArrCopyOf[i], d2) == 0) {
                i++;
                j += (long) length2;
            }
            while (i2 < length2 && Double.compare(dArrCopyOf2[i2], d2) == 0) {
                i2++;
                j -= (long) length;
            }
            if (j > j2) {
                j2 = j;
            } else {
                long j3 = -j;
                if (j3 > j2) {
                    j2 = j3;
                }
            }
            if (i >= length) {
                break;
            }
        } while (i2 < length2);
        return j2;
    }

    private double integralMonteCarloP(long j, int i, int i2, int i3) {
        int iMax = FastMath.max(i, i2);
        int iMin = FastMath.min(i, i2);
        int i4 = iMax + iMin;
        boolean[] zArr = new boolean[i4];
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            fillBooleanArrayRandomlyWithFixedNumberTrueValues(zArr, iMax, this.rng);
            long j2 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                if (zArr[i7]) {
                    j2 += (long) iMin;
                    if (j2 >= j) {
                        i5++;
                        break;
                    }
                } else {
                    j2 -= (long) iMax;
                    if (j2 <= (-j)) {
                        i5++;
                        break;
                        break;
                    }
                }
            }
        }
        return ((double) i5) / ((double) i3);
    }

    private static void jitter(double[] dArr, RealDistribution realDistribution) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] + realDistribution.sample();
        }
    }

    private static double n(int i, int i2, int i3, int i4, long j, boolean z) {
        double[] dArr = new double[i4];
        int i5 = 0;
        while (i5 < i4) {
            int i6 = i5 + 1;
            dArr[i5] = c(0, i6, i3, i4, j, z);
            i5 = i6;
        }
        double d2 = 0.0d;
        int i7 = 1;
        while (i7 <= i) {
            double dC = c(i7, 0, i3, i4, j, z);
            for (int i8 = 1; i8 <= i2; i8++) {
                int i9 = i8 - 1;
                dArr[i9] = ((double) c(i7, i8, i3, i4, j, z)) * (dC + dArr[i9]);
                dC = dArr[i9];
            }
            i7++;
            d2 = dC;
        }
        return d2;
    }

    private double roundedK(double d2, int i) {
        double d3 = i;
        int iCeil = ((int) Math.ceil(d3 * d2)) - 1;
        double entry = createRoundedH(d2, i).power(i).getEntry(iCeil, iCeil);
        for (int i2 = 1; i2 <= i; i2++) {
            entry *= ((double) i2) / d3;
        }
        return entry;
    }

    public double approximateP(double d2, int i, int i2) {
        double d3 = i2;
        double d4 = i;
        return 1.0d - ksSum(d2 * FastMath.sqrt((d3 * d4) / (d3 + d4)), KS_SUM_CAUCHY_CRITERION, 100000);
    }

    public double bootstrap(double[] dArr, double[] dArr2, int i, boolean z) {
        int length = dArr.length;
        int length2 = dArr2.length;
        double[] dArr3 = new double[length + length2];
        System.arraycopy(dArr, 0, dArr3, 0, length);
        System.arraycopy(dArr2, 0, dArr3, length, length2);
        EnumeratedRealDistribution enumeratedRealDistribution = new EnumeratedRealDistribution(this.rng, dArr3);
        long jIntegralKolmogorovSmirnovStatistic = integralKolmogorovSmirnovStatistic(dArr, dArr2);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            long jIntegralKolmogorovSmirnovStatistic2 = integralKolmogorovSmirnovStatistic(enumeratedRealDistribution.sample(length), enumeratedRealDistribution.sample(length2));
            if (jIntegralKolmogorovSmirnovStatistic2 > jIntegralKolmogorovSmirnovStatistic) {
                i2++;
            } else if (jIntegralKolmogorovSmirnovStatistic2 == jIntegralKolmogorovSmirnovStatistic) {
                i3++;
            }
        }
        if (!z) {
            i2 += i3;
        }
        return ((double) i2) / ((double) i);
    }

    public double cdf(double d2, int i) throws MathArithmeticException {
        return cdf(d2, i, false);
    }

    public double cdfExact(double d2, int i) throws MathArithmeticException {
        return cdf(d2, i, true);
    }

    public double exactP(double d2, int i, int i2, boolean z) {
        return 1.0d - (n(i2, i, i2, i, calculateIntegralD(d2, i2, i, z), z) / CombinatoricsUtils.binomialCoefficientDouble(i + i2, i2));
    }

    public double kolmogorovSmirnovStatistic(RealDistribution realDistribution, double[] dArr) {
        checkArray(dArr);
        int length = dArr.length;
        double d2 = length;
        double[] dArr2 = new double[length];
        System.arraycopy(dArr, 0, dArr2, 0, length);
        Arrays.sort(dArr2);
        double d3 = 0.0d;
        for (int i = 1; i <= length; i++) {
            int i2 = i - 1;
            double dCumulativeProbability = realDistribution.cumulativeProbability(dArr2[i2]);
            double dMax = FastMath.max(dCumulativeProbability - (((double) i2) / d2), (((double) i) / d2) - dCumulativeProbability);
            if (dMax > d3) {
                d3 = dMax;
            }
        }
        return d3;
    }

    public double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, boolean z) {
        return 1.0d - cdf(kolmogorovSmirnovStatistic(realDistribution, dArr), dArr.length, z);
    }

    public double ksSum(double d2, double d3, int i) {
        if (d2 == 0.0d) {
            return 0.0d;
        }
        double d4 = (-2.0d) * d2 * d2;
        double d5 = 0.5d;
        double dExp = 1.0d;
        long j = 1;
        int i2 = -1;
        while (dExp > d3 && j < i) {
            double d6 = j;
            dExp = FastMath.exp(d4 * d6 * d6);
            d5 += ((double) i2) * dExp;
            i2 *= -1;
            j++;
        }
        if (j != i) {
            return d5 * 2.0d;
        }
        throw new TooManyIterationsException(Integer.valueOf(i));
    }

    public double monteCarloP(double d2, int i, int i2, boolean z, int i3) {
        return integralMonteCarloP(calculateIntegralD(d2, i, i2, z), i, i2, i3);
    }

    public double pelzGood(double d2, int i) {
        double d3;
        double d4;
        int i2;
        double d5;
        double d6 = i;
        double dSqrt = FastMath.sqrt(d6);
        double d7 = d2 * dSqrt;
        double d8 = d2 * d2 * d6;
        double d9 = d8 * d8;
        double d10 = d9 * d8;
        double d11 = d9 * d9;
        double d12 = 9.869604401089358d / (8.0d * d8);
        double d13 = 0.0d;
        double d14 = 0.0d;
        int i3 = 1;
        while (true) {
            if (i3 >= 100000) {
                d3 = d6;
                d4 = d10;
                break;
            }
            d3 = d6;
            double d15 = (i3 * 2) - 1;
            d4 = d10;
            double dExp = FastMath.exp((-d12) * d15 * d15);
            d14 += dExp;
            if (dExp <= d14 * 1.0E-10d) {
                break;
            }
            i3++;
            d6 = d3;
            d10 = d4;
        }
        int i4 = 100000;
        if (i3 == 100000) {
            throw new TooManyIterationsException(100000);
        }
        double dSqrt2 = (d14 * FastMath.sqrt(6.283185307179586d)) / d7;
        double d16 = d8 * 2.0d;
        double d17 = 0.0d;
        int i5 = 0;
        while (i5 < i4) {
            double d18 = ((double) i5) + 0.5d;
            double d19 = d18 * d18;
            double dExp2 = ((d19 * 9.869604401089358d) - d8) * FastMath.exp((d19 * (-9.869604401089358d)) / d16);
            d17 += dExp2;
            if (FastMath.abs(dExp2) < FastMath.abs(d17) * 1.0E-10d) {
                i4 = 100000;
                break;
            }
            i5++;
            i4 = 100000;
        }
        if (i5 == i4) {
            throw new TooManyIterationsException(100000);
        }
        double dSqrt3 = FastMath.sqrt(1.5707963267948966d);
        double d20 = dSqrt2 + ((d17 * dSqrt3) / ((3.0d * d9) * dSqrt));
        double d21 = 2.0d * d9;
        double d22 = 6.0d * d4;
        double d23 = d8 * 5.0d;
        double d24 = 0.0d;
        int i6 = 0;
        while (true) {
            i2 = 100000;
            d5 = dSqrt;
            if (i6 >= 100000) {
                break;
            }
            double d25 = ((double) i6) + 0.5d;
            double d26 = d25 * d25;
            double dExp3 = (d22 + d21 + ((d21 - d23) * 9.869604401089358d * d26) + ((1.0d - d16) * 97.40909103400243d * d26 * d26)) * FastMath.exp((d26 * (-9.869604401089358d)) / d16);
            d24 += dExp3;
            if (FastMath.abs(dExp3) < FastMath.abs(d24) * 1.0E-10d) {
                i2 = 100000;
                break;
            }
            i6++;
            dSqrt = d5;
        }
        if (i6 == i2) {
            throw new TooManyIterationsException(Integer.valueOf(i2));
        }
        double d27 = 0.0d;
        int i7 = 1;
        while (i7 < i2) {
            double d28 = i7 * i7;
            double dExp4 = d28 * 9.869604401089358d * FastMath.exp((d28 * (-9.869604401089358d)) / d16);
            d27 += dExp4;
            if (FastMath.abs(dExp4) < FastMath.abs(d27) * 1.0E-10d) {
                i2 = 100000;
                break;
            }
            i7++;
            i2 = 100000;
        }
        if (i7 == i2) {
            throw new TooManyIterationsException(Integer.valueOf(i2));
        }
        double d29 = d20 + ((dSqrt3 / d3) * ((d24 / ((((36.0d * d8) * d8) * d8) * d7)) - (d27 / ((18.0d * d8) * d7))));
        double d30 = 0.0d;
        int i8 = 100000;
        int i9 = 0;
        while (i9 < i8) {
            double d31 = ((double) i9) + 0.5d;
            double d32 = d31 * d31;
            double d33 = d32 * d32;
            double dExp5 = (((((((d33 * d32) * 961.3891935753043d) * (5.0d - (d8 * 30.0d))) + ((d33 * 97.40909103400243d) * (((-60.0d) * d8) + (212.0d * d9)))) + ((d32 * 9.869604401089358d) * ((135.0d * d9) - (96.0d * d4)))) - (d4 * 30.0d)) - (90.0d * d11)) * FastMath.exp((d32 * (-9.869604401089358d)) / d16);
            d30 += dExp5;
            if (FastMath.abs(dExp5) < FastMath.abs(d30) * 1.0E-10d) {
                i8 = 100000;
                break;
            }
            i9++;
            i8 = 100000;
        }
        if (i9 == i8) {
            throw new TooManyIterationsException(100000);
        }
        int i10 = 1;
        while (i10 < i8) {
            double d34 = i10 * i10;
            double dExp6 = ((d34 * d34 * (-97.40909103400243d)) + (29.608813203268074d * d34 * d8)) * FastMath.exp((d34 * (-9.869604401089358d)) / d16);
            d13 += dExp6;
            if (FastMath.abs(dExp6) < FastMath.abs(d13) * 1.0E-10d) {
                i8 = 100000;
                break;
            }
            i10++;
            i8 = 100000;
        }
        if (i10 != i8) {
            return d29 + ((dSqrt3 / (d5 * d3)) * ((d30 / ((3240.0d * d4) * d9)) + (d13 / (108.0d * d4))));
        }
        throw new TooManyIterationsException(100000);
    }

    public double cdf(double d2, int i, boolean z) throws MathArithmeticException {
        double d3 = i;
        double d4 = 1.0d;
        double d5 = 1.0d / d3;
        double d6 = 0.5d * d5;
        if (d2 <= d6) {
            return 0.0d;
        }
        if (d6 < d2 && d2 <= d5) {
            double d7 = (d2 * 2.0d) - d5;
            for (int i2 = 1; i2 <= i; i2++) {
                d4 *= ((double) i2) * d7;
            }
            return d4;
        }
        if (1.0d - d5 <= d2 && d2 < 1.0d) {
            return 1.0d - (Math.pow(1.0d - d2, d3) * 2.0d);
        }
        if (1.0d <= d2) {
            return 1.0d;
        }
        if (z) {
            return exactK(d2, i);
        }
        return i <= 140 ? roundedK(d2, i) : pelzGood(d2, i);
    }

    public double kolmogorovSmirnovTest(double[] dArr, double[] dArr2, boolean z) {
        double[] dArrCopyOf;
        double[] dArrCopyOf2;
        long length = ((long) dArr.length) * ((long) dArr2.length);
        if (length >= 10000 || !hasTies(dArr, dArr2)) {
            dArrCopyOf = dArr;
            dArrCopyOf2 = dArr2;
        } else {
            dArrCopyOf = MathArrays.copyOf(dArr);
            dArrCopyOf2 = MathArrays.copyOf(dArr2);
            fixTies(dArrCopyOf, dArrCopyOf2);
        }
        return length < 10000 ? exactP(kolmogorovSmirnovStatistic(dArrCopyOf, dArrCopyOf2), dArr.length, dArr2.length, z) : approximateP(kolmogorovSmirnovStatistic(dArr, dArr2), dArr.length, dArr2.length);
    }

    @Deprecated
    public KolmogorovSmirnovTest(RandomGenerator randomGenerator) {
        this.rng = randomGenerator;
    }

    public double kolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) {
        return integralKolmogorovSmirnovStatistic(dArr, dArr2) / (((long) dArr.length) * ((long) dArr2.length));
    }

    public double kolmogorovSmirnovTest(double[] dArr, double[] dArr2) {
        return kolmogorovSmirnovTest(dArr, dArr2, true);
    }

    public double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr) {
        return kolmogorovSmirnovTest(realDistribution, dArr, false);
    }

    public double bootstrap(double[] dArr, double[] dArr2, int i) {
        return bootstrap(dArr, dArr2, i, true);
    }

    public boolean kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, double d2) {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return kolmogorovSmirnovTest(realDistribution, dArr) < d2;
    }
}
