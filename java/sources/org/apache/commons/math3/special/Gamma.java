package org.apache.commons.math3.special;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.ContinuedFraction;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Gamma {
    private static final double C_LIMIT = 49.0d;
    private static final double DEFAULT_EPSILON = 1.0E-14d;
    public static final double GAMMA = 0.5772156649015329d;
    private static final double INV_GAMMA1P_M1_A0 = 6.116095104481416E-9d;
    private static final double INV_GAMMA1P_M1_A1 = 6.247308301164655E-9d;
    private static final double INV_GAMMA1P_M1_B1 = 0.203610414066807d;
    private static final double INV_GAMMA1P_M1_B2 = 0.026620534842894922d;
    private static final double INV_GAMMA1P_M1_B3 = 4.939449793824468E-4d;
    private static final double INV_GAMMA1P_M1_B4 = -8.514194324403149E-6d;
    private static final double INV_GAMMA1P_M1_B5 = -6.4304548177935305E-6d;
    private static final double INV_GAMMA1P_M1_B6 = 9.926418406727737E-7d;
    private static final double INV_GAMMA1P_M1_B7 = -6.077618957228252E-8d;
    private static final double INV_GAMMA1P_M1_B8 = 1.9575583661463974E-10d;
    private static final double INV_GAMMA1P_M1_C = -0.42278433509846713d;
    private static final double INV_GAMMA1P_M1_C0 = 0.5772156649015329d;
    private static final double INV_GAMMA1P_M1_C1 = -0.6558780715202539d;
    private static final double INV_GAMMA1P_M1_C10 = -2.013485478078824E-5d;
    private static final double INV_GAMMA1P_M1_C11 = -1.2504934821426706E-6d;
    private static final double INV_GAMMA1P_M1_C12 = 1.133027231981696E-6d;
    private static final double INV_GAMMA1P_M1_C13 = -2.056338416977607E-7d;
    private static final double INV_GAMMA1P_M1_C2 = -0.04200263503409524d;
    private static final double INV_GAMMA1P_M1_C3 = 0.16653861138229148d;
    private static final double INV_GAMMA1P_M1_C4 = -0.04219773455554433d;
    private static final double INV_GAMMA1P_M1_C5 = -0.009621971527876973d;
    private static final double INV_GAMMA1P_M1_C6 = 0.0072189432466631d;
    private static final double INV_GAMMA1P_M1_C7 = -0.0011651675918590652d;
    private static final double INV_GAMMA1P_M1_C8 = -2.1524167411495098E-4d;
    private static final double INV_GAMMA1P_M1_C9 = 1.280502823881162E-4d;
    private static final double INV_GAMMA1P_M1_P0 = 6.116095104481416E-9d;
    private static final double INV_GAMMA1P_M1_P1 = 6.8716741130671986E-9d;
    private static final double INV_GAMMA1P_M1_P2 = 6.820161668496171E-10d;
    private static final double INV_GAMMA1P_M1_P3 = 4.686843322948848E-11d;
    private static final double INV_GAMMA1P_M1_P4 = 1.5728330277104463E-12d;
    private static final double INV_GAMMA1P_M1_P5 = -1.2494415722763663E-13d;
    private static final double INV_GAMMA1P_M1_P6 = 4.343529937408594E-15d;
    private static final double INV_GAMMA1P_M1_Q1 = 0.3056961078365221d;
    private static final double INV_GAMMA1P_M1_Q2 = 0.054642130860422966d;
    private static final double INV_GAMMA1P_M1_Q3 = 0.004956830093825887d;
    private static final double INV_GAMMA1P_M1_Q4 = 2.6923694661863613E-4d;
    public static final double LANCZOS_G = 4.7421875d;
    private static final double SQRT_TWO_PI = 2.5066282746310007d;
    private static final double S_LIMIT = 1.0E-5d;
    private static final double[] LANCZOS = {0.9999999999999971d, 57.15623566586292d, -59.59796035547549d, 14.136097974741746d, -0.4919138160976202d, 3.399464998481189E-5d, 4.652362892704858E-5d, -9.837447530487956E-5d, 1.580887032249125E-4d, -2.1026444172410488E-4d, 2.1743961811521265E-4d, -1.643181065367639E-4d, 8.441822398385275E-5d, -2.6190838401581408E-5d, 3.6899182659531625E-6d};
    private static final double HALF_LOG_2_PI = FastMath.log(6.283185307179586d) * 0.5d;

    private Gamma() {
    }

    public static double digamma(double d2) {
        double dDigamma;
        double d3;
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            return d2;
        }
        if (d2 <= 0.0d || d2 > S_LIMIT) {
            if (d2 >= C_LIMIT) {
                double d4 = 1.0d / (d2 * d2);
                dDigamma = FastMath.log(d2) - (0.5d / d2);
                d3 = d4 * (((0.008333333333333333d - (d4 / 252.0d)) * d4) + 0.08333333333333333d);
            } else {
                dDigamma = digamma(d2 + 1.0d);
            }
            return dDigamma - d3;
        }
        dDigamma = -0.5772156649015329d;
        d3 = 1.0d / d2;
        return dDigamma - d3;
    }

    public static double gamma(double d2) {
        double d3;
        double dSin;
        if (d2 == FastMath.rint(d2) && d2 <= 0.0d) {
            return Double.NaN;
        }
        double dAbs = FastMath.abs(d2);
        if (dAbs > 20.0d) {
            double d4 = 4.7421875d + dAbs + 0.5d;
            double dLanczos = lanczos(dAbs) * (SQRT_TWO_PI / dAbs) * FastMath.pow(d4, 0.5d + dAbs) * FastMath.exp(-d4);
            if (d2 > 0.0d) {
                return dLanczos;
            }
            d3 = -3.141592653589793d;
            dSin = d2 * FastMath.sin(3.141592653589793d * d2) * dLanczos;
        } else {
            if (d2 < 1.0d) {
                double d5 = d2;
                while (d2 < -0.5d) {
                    d2 += 1.0d;
                    d5 *= d2;
                }
                return 1.0d / (d5 * (invGamma1pm1(d2) + 1.0d));
            }
            d3 = 1.0d;
            while (d2 > 2.5d) {
                d2 -= 1.0d;
                d3 *= d2;
            }
            dSin = invGamma1pm1(d2 - 1.0d) + 1.0d;
        }
        return d3 / dSin;
    }

    public static double invGamma1pm1(double d2) {
        double d3;
        if (d2 < -0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(-0.5d), true);
        }
        if (d2 > 1.5d) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(1.5d), true);
        }
        double d4 = d2 <= 0.5d ? d2 : (d2 - 0.5d) - 0.5d;
        if (d4 < 0.0d) {
            double d5 = ((((((((((((((((((((((((((((((INV_GAMMA1P_M1_A1 * d4) + 6.116095104481416E-9d) / ((((((((((((((((INV_GAMMA1P_M1_B8 * d4) + INV_GAMMA1P_M1_B7) * d4) + INV_GAMMA1P_M1_B6) * d4) + INV_GAMMA1P_M1_B5) * d4) + INV_GAMMA1P_M1_B4) * d4) + INV_GAMMA1P_M1_B3) * d4) + INV_GAMMA1P_M1_B2) * d4) + INV_GAMMA1P_M1_B1) * d4) + 1.0d)) * d4) + INV_GAMMA1P_M1_C13) * d4) + INV_GAMMA1P_M1_C12) * d4) + INV_GAMMA1P_M1_C11) * d4) + INV_GAMMA1P_M1_C10) * d4) + INV_GAMMA1P_M1_C9) * d4) + INV_GAMMA1P_M1_C8) * d4) + INV_GAMMA1P_M1_C7) * d4) + INV_GAMMA1P_M1_C6) * d4) + INV_GAMMA1P_M1_C5) * d4) + INV_GAMMA1P_M1_C4) * d4) + INV_GAMMA1P_M1_C3) * d4) + INV_GAMMA1P_M1_C2) * d4) + INV_GAMMA1P_M1_C1) * d4) + INV_GAMMA1P_M1_C;
            if (d2 > 0.5d) {
                return (d4 * d5) / d2;
            }
            d3 = d5 + 0.5d + 0.5d;
        } else {
            d3 = ((((((((((((((((((((((((((((((((((((((((INV_GAMMA1P_M1_P6 * d4) + INV_GAMMA1P_M1_P5) * d4) + INV_GAMMA1P_M1_P4) * d4) + INV_GAMMA1P_M1_P3) * d4) + INV_GAMMA1P_M1_P2) * d4) + INV_GAMMA1P_M1_P1) * d4) + 6.116095104481416E-9d) / ((((((((INV_GAMMA1P_M1_Q4 * d4) + INV_GAMMA1P_M1_Q3) * d4) + INV_GAMMA1P_M1_Q2) * d4) + INV_GAMMA1P_M1_Q1) * d4) + 1.0d)) * d4) + INV_GAMMA1P_M1_C13) * d4) + INV_GAMMA1P_M1_C12) * d4) + INV_GAMMA1P_M1_C11) * d4) + INV_GAMMA1P_M1_C10) * d4) + INV_GAMMA1P_M1_C9) * d4) + INV_GAMMA1P_M1_C8) * d4) + INV_GAMMA1P_M1_C7) * d4) + INV_GAMMA1P_M1_C6) * d4) + INV_GAMMA1P_M1_C5) * d4) + INV_GAMMA1P_M1_C4) * d4) + INV_GAMMA1P_M1_C3) * d4) + INV_GAMMA1P_M1_C2) * d4) + INV_GAMMA1P_M1_C1) * d4) + 0.5772156649015329d;
            if (d2 > 0.5d) {
                return (d4 / d2) * ((d3 - 0.5d) - 0.5d);
            }
        }
        return d2 * d3;
    }

    public static double lanczos(double d2) {
        double d3 = 0.0d;
        for (int length = LANCZOS.length - 1; length > 0; length--) {
            d3 += LANCZOS[length] / (((double) length) + d2);
        }
        return d3 + LANCZOS[0];
    }

    public static double logGamma(double d2) {
        if (Double.isNaN(d2) || d2 <= 0.0d) {
            return Double.NaN;
        }
        if (d2 < 0.5d) {
            return logGamma1p(d2) - FastMath.log(d2);
        }
        if (d2 <= 2.5d) {
            return logGamma1p((d2 - 0.5d) - 0.5d);
        }
        if (d2 > 8.0d) {
            double d3 = 4.7421875d + d2 + 0.5d;
            return (((0.5d + d2) * FastMath.log(d3)) - d3) + HALF_LOG_2_PI + FastMath.log(lanczos(d2) / d2);
        }
        int iFloor = (int) FastMath.floor(d2 - 1.5d);
        double d4 = 1.0d;
        for (int i = 1; i <= iFloor; i++) {
            d4 *= d2 - ((double) i);
        }
        return logGamma1p(d2 - ((double) (iFloor + 1))) + FastMath.log(d4);
    }

    public static double logGamma1p(double d2) throws NumberIsTooSmallException, NumberIsTooLargeException {
        if (d2 < -0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(-0.5d), true);
        }
        if (d2 <= 1.5d) {
            return -FastMath.log1p(invGamma1pm1(d2));
        }
        throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(1.5d), true);
    }

    public static double regularizedGammaP(double d2, double d3) {
        return regularizedGammaP(d2, d3, DEFAULT_EPSILON, Integer.MAX_VALUE);
    }

    public static double regularizedGammaQ(double d2, double d3) {
        return regularizedGammaQ(d2, d3, DEFAULT_EPSILON, Integer.MAX_VALUE);
    }

    public static double trigamma(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            return d2;
        }
        if (d2 > 0.0d && d2 <= S_LIMIT) {
            return 1.0d / (d2 * d2);
        }
        if (d2 < C_LIMIT) {
            return trigamma(d2 + 1.0d) + (1.0d / (d2 * d2));
        }
        double d3 = 1.0d / (d2 * d2);
        return (1.0d / d2) + (d3 / 2.0d) + ((d3 / d2) * (0.16666666666666666d - (d3 * ((d3 / 42.0d) + 0.03333333333333333d))));
    }

    public static double regularizedGammaP(double d2, double d3, double d4, int i) {
        double d5 = 0.0d;
        if (Double.isNaN(d2) || Double.isNaN(d3) || d2 <= 0.0d || d3 < 0.0d) {
            return Double.NaN;
        }
        if (d3 == 0.0d) {
            return 0.0d;
        }
        if (d3 >= d2 + 1.0d) {
            return 1.0d - regularizedGammaQ(d2, d3, d4, i);
        }
        double d6 = 1.0d / d2;
        double d7 = d6;
        while (FastMath.abs(d6 / d7) > d4 && d5 < i && d7 < Double.POSITIVE_INFINITY) {
            d5 += 1.0d;
            d6 *= d3 / (d2 + d5);
            d7 += d6;
        }
        if (d5 >= i) {
            throw new MaxCountExceededException(Integer.valueOf(i));
        }
        if (Double.isInfinite(d7)) {
            return 1.0d;
        }
        return FastMath.exp(((-d3) + (FastMath.log(d3) * d2)) - logGamma(d2)) * d7;
    }

    public static double regularizedGammaQ(final double d2, double d3, double d4, int i) {
        if (Double.isNaN(d2) || Double.isNaN(d3) || d2 <= 0.0d || d3 < 0.0d) {
            return Double.NaN;
        }
        if (d3 == 0.0d) {
            return 1.0d;
        }
        return d3 < d2 + 1.0d ? 1.0d - regularizedGammaP(d2, d3, d4, i) : (1.0d / new ContinuedFraction() { // from class: org.apache.commons.math3.special.Gamma.1
            @Override // org.apache.commons.math3.util.ContinuedFraction
            protected double getA(int i2, double d5) {
                return (((((double) i2) * 2.0d) + 1.0d) - d2) + d5;
            }

            @Override // org.apache.commons.math3.util.ContinuedFraction
            protected double getB(int i2, double d5) {
                double d6 = i2;
                return d6 * (d2 - d6);
            }
        }.evaluate(d3, d4, i)) * FastMath.exp(((-d3) + (FastMath.log(d3) * d2)) - logGamma(d2));
    }
}
