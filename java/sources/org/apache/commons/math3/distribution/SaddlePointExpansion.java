package org.apache.commons.math3.distribution;

import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
final class SaddlePointExpansion {
    private static final double HALF_LOG_2_PI = FastMath.log(6.283185307179586d) * 0.5d;
    private static final double[] EXACT_STIRLING_ERRORS = {0.0d, 0.15342640972002736d, 0.08106146679532726d, 0.05481412105191765d, 0.0413406959554093d, 0.03316287351993629d, 0.02767792568499834d, 0.023746163656297496d, 0.020790672103765093d, 0.018488450532673187d, 0.016644691189821193d, 0.015134973221917378d, 0.013876128823070748d, 0.012810465242920227d, 0.01189670994589177d, 0.011104559758206917d, 0.010411265261972096d, 0.009799416126158804d, 0.009255462182712733d, 0.008768700134139386d, 0.00833056343336287d, 0.00793411456431402d, 0.007573675487951841d, 0.007244554301320383d, 0.00694284010720953d, 0.006665247032707682d, 0.006408994188004207d, 0.006171712263039458d, 0.0059513701127588475d, 0.0057462165130101155d, 0.005554733551962801d};

    private SaddlePointExpansion() {
    }

    static double getDeviancePart(double d2, double d3) {
        double d4 = d2 - d3;
        double d5 = d2 + d3;
        if (FastMath.abs(d4) >= 0.1d * d5) {
            return ((FastMath.log(d2 / d3) * d2) + d3) - d2;
        }
        double d6 = d4 / d5;
        double d7 = d4 * d6;
        double d8 = Double.NaN;
        double d9 = d2 * 2.0d * d6;
        double d10 = d6 * d6;
        int i = 1;
        while (d7 != d8) {
            d9 *= d10;
            double d11 = (d9 / ((double) ((i * 2) + 1))) + d7;
            i++;
            double d12 = d7;
            d7 = d11;
            d8 = d12;
        }
        return d7;
    }

    static double getStirlingError(double d2) {
        if (d2 < 15.0d) {
            double d3 = 2.0d * d2;
            return FastMath.floor(d3) == d3 ? EXACT_STIRLING_ERRORS[(int) d3] : ((Gamma.logGamma(1.0d + d2) - ((0.5d + d2) * FastMath.log(d2))) + d2) - HALF_LOG_2_PI;
        }
        double d4 = d2 * d2;
        return (0.08333333333333333d - ((0.002777777777777778d - ((7.936507936507937E-4d - ((5.952380952380953E-4d - (8.417508417508417E-4d / d4)) / d4)) / d4)) / d4)) / d2;
    }

    static double logBinomialProbability(int i, int i2, double d2, double d3) {
        double d4;
        double dLog;
        if (i == 0) {
            if (d2 < 0.1d) {
                double d5 = i2;
                return (-getDeviancePart(d5, d3 * d5)) - (d5 * d2);
            }
            d4 = i2;
            dLog = FastMath.log(d3);
        } else {
            if (i != i2) {
                double d6 = i2;
                double d7 = i;
                double d8 = i2 - i;
                return (FastMath.log(((d7 * 6.283185307179586d) * d8) / d6) * (-0.5d)) + ((((getStirlingError(d6) - getStirlingError(d7)) - getStirlingError(d8)) - getDeviancePart(d7, d2 * d6)) - getDeviancePart(d8, d3 * d6));
            }
            if (d3 < 0.1d) {
                double d9 = i2;
                return (-getDeviancePart(d9, d2 * d9)) - (d9 * d3);
            }
            d4 = i2;
            dLog = FastMath.log(d2);
        }
        return d4 * dLog;
    }
}
