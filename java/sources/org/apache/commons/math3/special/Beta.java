package org.apache.commons.math3.special;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.ContinuedFraction;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Beta {
    private static final double DEFAULT_EPSILON = 1.0E-14d;
    private static final double[] DELTA = {0.08333333333333333d, -2.777777777777778E-5d, 7.936507936507937E-8d, -5.952380952380953E-10d, 8.417508417508329E-12d, -1.917526917518546E-13d, 6.410256405103255E-15d, -2.955065141253382E-16d, 1.7964371635940225E-17d, -1.3922896466162779E-18d, 1.338028550140209E-19d, -1.542460098679661E-20d, 1.9770199298095743E-21d, -2.3406566479399704E-22d, 1.713480149663986E-23d};
    private static final double HALF_LOG_TWO_PI = 0.9189385332046727d;

    private Beta() {
    }

    private static double deltaMinusDeltaSum(double d2, double d3) throws NumberIsTooSmallException, OutOfRangeException {
        if (d2 < 0.0d || d2 > d3) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, Double.valueOf(d3));
        }
        if (d3 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d3), 10, true);
        }
        double d4 = d2 / d3;
        double d5 = d4 + 1.0d;
        double d6 = d4 / d5;
        double d7 = 1.0d / d5;
        double d8 = d7 * d7;
        int length = DELTA.length;
        double[] dArr = new double[length];
        dArr[0] = 1.0d;
        for (int i = 1; i < length; i++) {
            dArr[i] = (dArr[i - 1] * d8) + d7 + 1.0d;
        }
        double d9 = 10.0d / d3;
        double d10 = d9 * d9;
        double[] dArr2 = DELTA;
        double d11 = dArr2[dArr2.length - 1] * dArr[length - 1];
        for (int length2 = dArr2.length - 2; length2 >= 0; length2--) {
            d11 = (d11 * d10) + (DELTA[length2] * dArr[length2]);
        }
        return (d11 * d6) / d3;
    }

    @Deprecated
    public static double logBeta(double d2, double d3, double d4, int i) {
        return logBeta(d2, d3);
    }

    private static double logGammaMinusLogGammaSum(double d2, double d3) throws NumberIsTooSmallException {
        double d4;
        double dDeltaMinusDeltaSum;
        if (d2 < 0.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(0.0d), true);
        }
        if (d3 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d3), Double.valueOf(10.0d), true);
        }
        if (d2 <= d3) {
            d4 = (d2 - 0.5d) + d3;
            dDeltaMinusDeltaSum = deltaMinusDeltaSum(d2, d3);
        } else {
            d4 = (d3 - 0.5d) + d2;
            dDeltaMinusDeltaSum = deltaMinusDeltaSum(d3, d2);
        }
        double dLog1p = d4 * FastMath.log1p(d2 / d3);
        double dLog = d2 * (FastMath.log(d3) - 1.0d);
        return dLog1p <= dLog ? (dDeltaMinusDeltaSum - dLog1p) - dLog : (dDeltaMinusDeltaSum - dLog) - dLog1p;
    }

    private static double logGammaSum(double d2, double d3) throws OutOfRangeException {
        double dLogGamma1p;
        double dLog;
        Double dValueOf = Double.valueOf(2.0d);
        Double dValueOf2 = Double.valueOf(1.0d);
        if (d2 < 1.0d || d2 > 2.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), dValueOf2, dValueOf);
        }
        if (d3 < 1.0d || d3 > 2.0d) {
            throw new OutOfRangeException(Double.valueOf(d3), dValueOf2, dValueOf);
        }
        double d4 = (d2 - 1.0d) + (d3 - 1.0d);
        if (d4 <= 0.5d) {
            return Gamma.logGamma1p(d4 + 1.0d);
        }
        if (d4 <= 1.5d) {
            dLogGamma1p = Gamma.logGamma1p(d4);
            dLog = FastMath.log1p(d4);
        } else {
            dLogGamma1p = Gamma.logGamma1p(d4 - 1.0d);
            dLog = FastMath.log(d4 * (1.0d + d4));
        }
        return dLogGamma1p + dLog;
    }

    public static double regularizedBeta(double d2, double d3, double d4) {
        return regularizedBeta(d2, d3, d4, DEFAULT_EPSILON, Integer.MAX_VALUE);
    }

    private static double sumDeltaMinusDeltaSum(double d2, double d3) {
        Double dValueOf = Double.valueOf(10.0d);
        if (d2 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), dValueOf, true);
        }
        if (d3 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d3), dValueOf, true);
        }
        double dMin = FastMath.min(d2, d3);
        double dMax = FastMath.max(d2, d3);
        double d4 = 10.0d / dMin;
        double d5 = d4 * d4;
        double[] dArr = DELTA;
        double d6 = dArr[dArr.length - 1];
        for (int length = dArr.length - 2; length >= 0; length--) {
            d6 = (d6 * d5) + DELTA[length];
        }
        return (d6 / dMin) + deltaMinusDeltaSum(dMin, dMax);
    }

    public static double logBeta(double d2, double d3) {
        double dLog;
        double dLogGamma;
        if (Double.isNaN(d2) || Double.isNaN(d3) || d2 <= 0.0d || d3 <= 0.0d) {
            return Double.NaN;
        }
        double dMin = FastMath.min(d2, d3);
        double dMax = FastMath.max(d2, d3);
        if (dMin >= 10.0d) {
            double dSumDeltaMinusDeltaSum = sumDeltaMinusDeltaSum(dMin, dMax);
            double d4 = dMin / dMax;
            double dLog2 = (-(dMin - 0.5d)) * FastMath.log(d4 / (1.0d + d4));
            double dLog1p = FastMath.log1p(d4) * dMax;
            return dLog2 <= dLog1p ? ((((FastMath.log(dMax) * (-0.5d)) + HALF_LOG_TWO_PI) + dSumDeltaMinusDeltaSum) - dLog2) - dLog1p : ((((FastMath.log(dMax) * (-0.5d)) + HALF_LOG_TWO_PI) + dSumDeltaMinusDeltaSum) - dLog1p) - dLog2;
        }
        if (dMin <= 2.0d) {
            if (dMin < 1.0d) {
                return dMax >= 10.0d ? Gamma.logGamma(dMin) + logGammaMinusLogGammaSum(dMin, dMax) : FastMath.log((Gamma.gamma(dMin) * Gamma.gamma(dMax)) / Gamma.gamma(dMin + dMax));
            }
            if (dMax <= 2.0d) {
                return (Gamma.logGamma(dMin) + Gamma.logGamma(dMax)) - logGammaSum(dMin, dMax);
            }
            if (dMax >= 10.0d) {
                return Gamma.logGamma(dMin) + logGammaMinusLogGammaSum(dMin, dMax);
            }
            double d5 = 1.0d;
            while (dMax > 2.0d) {
                dMax -= 1.0d;
                d5 *= dMax / (dMin + dMax);
            }
            return FastMath.log(d5) + Gamma.logGamma(dMin) + (Gamma.logGamma(dMax) - logGammaSum(dMin, dMax));
        }
        if (dMax > 1000.0d) {
            int iFloor = (int) FastMath.floor(dMin - 1.0d);
            double d6 = 1.0d;
            for (int i = 0; i < iFloor; i++) {
                dMin -= 1.0d;
                d6 *= dMin / ((dMin / dMax) + 1.0d);
            }
            dLog = FastMath.log(d6) - (((double) iFloor) * FastMath.log(dMax));
            dLogGamma = Gamma.logGamma(dMin) + logGammaMinusLogGammaSum(dMin, dMax);
        } else {
            double d7 = 1.0d;
            while (dMin > 2.0d) {
                dMin -= 1.0d;
                double d8 = dMin / dMax;
                d7 *= d8 / (d8 + 1.0d);
            }
            if (dMax >= 10.0d) {
                return FastMath.log(d7) + Gamma.logGamma(dMin) + logGammaMinusLogGammaSum(dMin, dMax);
            }
            double d9 = 1.0d;
            while (dMax > 2.0d) {
                dMax -= 1.0d;
                d9 *= dMax / (dMin + dMax);
            }
            dLog = FastMath.log(d7) + FastMath.log(d9);
            dLogGamma = Gamma.logGamma(dMin) + (Gamma.logGamma(dMax) - logGammaSum(dMin, dMax));
        }
        return dLog + dLogGamma;
    }

    public static double regularizedBeta(double d2, double d3, double d4, double d5) {
        return regularizedBeta(d2, d3, d4, d5, Integer.MAX_VALUE);
    }

    public static double regularizedBeta(double d2, double d3, double d4, int i) {
        return regularizedBeta(d2, d3, d4, DEFAULT_EPSILON, i);
    }

    public static double regularizedBeta(double d2, final double d3, final double d4, double d5, int i) {
        if (Double.isNaN(d2) || Double.isNaN(d3) || Double.isNaN(d4) || d2 < 0.0d || d2 > 1.0d || d3 <= 0.0d || d4 <= 0.0d) {
            return Double.NaN;
        }
        double d6 = 2.0d + d4 + d3;
        if (d2 > (d3 + 1.0d) / d6) {
            double d7 = 1.0d - d2;
            if (d7 <= (d4 + 1.0d) / d6) {
                return 1.0d - regularizedBeta(d7, d4, d3, d5, i);
            }
        }
        return (FastMath.exp((((FastMath.log(d2) * d3) + (FastMath.log1p(-d2) * d4)) - FastMath.log(d3)) - logBeta(d3, d4)) * 1.0d) / new ContinuedFraction() { // from class: org.apache.commons.math3.special.Beta.1
            @Override // org.apache.commons.math3.util.ContinuedFraction
            protected double getA(int i2, double d8) {
                return 1.0d;
            }

            @Override // org.apache.commons.math3.util.ContinuedFraction
            protected double getB(int i2, double d8) {
                if (i2 % 2 == 0) {
                    double d9 = ((double) i2) / 2.0d;
                    double d10 = (d4 - d9) * d9 * d8;
                    double d11 = d3;
                    double d12 = d9 * 2.0d;
                    return d10 / (((d11 + d12) - 1.0d) * (d11 + d12));
                }
                double d13 = (((double) i2) - 1.0d) / 2.0d;
                double d14 = d3;
                double d15 = -((d14 + d13) * (d4 + d14 + d13) * d8);
                double d16 = d13 * 2.0d;
                return d15 / ((d14 + d16) * ((d14 + d16) + 1.0d));
            }
        }.evaluate(d2, d5, i);
    }
}
