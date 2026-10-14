package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ContinuedFraction {
    private static final double DEFAULT_EPSILON = 1.0E-8d;

    protected ContinuedFraction() {
    }

    public double evaluate(double d2) throws ConvergenceException {
        return evaluate(d2, 1.0E-8d, Integer.MAX_VALUE);
    }

    protected abstract double getA(int i, double d2);

    protected abstract double getB(int i, double d2);

    public double evaluate(double d2, double d3) throws ConvergenceException {
        return evaluate(d2, d3, Integer.MAX_VALUE);
    }

    public double evaluate(double d2, int i) throws ConvergenceException, MaxCountExceededException {
        return evaluate(d2, 1.0E-8d, i);
    }

    public double evaluate(double d2, double d3, int i) throws ConvergenceException, MaxCountExceededException {
        double a2 = getA(0, d2);
        if (Precision.equals(a2, 0.0d, 1.0E-50d)) {
            a2 = 1.0E-50d;
        }
        double d4 = 0.0d;
        double d5 = a2;
        int i2 = 1;
        while (i2 < i) {
            double a3 = getA(i2, d2);
            double b = getB(i2, d2);
            double d6 = (d4 * b) + a3;
            if (Precision.equals(d6, 0.0d, 1.0E-50d)) {
                d6 = 1.0E-50d;
            }
            double d7 = a3 + (b / a2);
            a2 = Precision.equals(d7, 0.0d, 1.0E-50d) ? 1.0E-50d : d7;
            d4 = 1.0d / d6;
            double d8 = a2 * d4;
            d5 *= d8;
            if (!Double.isInfinite(d5)) {
                if (Double.isNaN(d5)) {
                    throw new ConvergenceException(LocalizedFormats.CONTINUED_FRACTION_NAN_DIVERGENCE, Double.valueOf(d2));
                }
                if (FastMath.abs(d8 - 1.0d) < d3) {
                    break;
                }
                i2++;
            } else {
                throw new ConvergenceException(LocalizedFormats.CONTINUED_FRACTION_INFINITY_DIVERGENCE, Double.valueOf(d2));
            }
        }
        if (i2 < i) {
            return d5;
        }
        throw new MaxCountExceededException(LocalizedFormats.NON_CONVERGENT_CONTINUED_FRACTION, Integer.valueOf(i), Double.valueOf(d2));
    }
}
