package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class BrentSolver extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public BrentSolver() {
        this(1.0E-6d);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c6  */
    private double brent(double d2, double d3, double d4, double d5) {
        double d6;
        double d7;
        double dComputeObjectiveValue;
        double d8;
        double d9;
        double d10;
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        double d11 = d2;
        double d12 = d3;
        double d13 = d4;
        double d14 = d13;
        double d15 = d5;
        double d16 = d3 - d2;
        double d17 = d16;
        double d18 = d11;
        while (true) {
            if (FastMath.abs(d13) < FastMath.abs(d15)) {
                d11 = d18;
                d18 = d12;
                d14 = d13;
                d13 = d15;
            } else {
                double d19 = d14;
                d14 = d15;
                d15 = d19;
                double d20 = d11;
                d11 = d12;
                d12 = d20;
            }
            double dAbs = (relativeAccuracy * 2.0d * FastMath.abs(d11)) + absoluteAccuracy;
            double d21 = (d18 - d11) * 0.5d;
            if (FastMath.abs(d21) <= dAbs) {
                break;
            }
            double d22 = absoluteAccuracy;
            if (Precision.equals(d14, 0.0d)) {
                break;
            }
            if (FastMath.abs(d16) < dAbs || FastMath.abs(d15) <= FastMath.abs(d14)) {
                d6 = d21;
                d17 = d6;
            } else {
                double d23 = d14 / d15;
                if (d12 == d18) {
                    d9 = 2.0d * d21 * d23;
                    d10 = 1.0d - d23;
                } else {
                    double d24 = d15 / d13;
                    double d25 = d14 / d13;
                    double d26 = 2.0d * d21 * d24 * (d24 - d25);
                    double d27 = d25 - 1.0d;
                    d9 = (d26 - ((d11 - d12) * d27)) * d23;
                    d10 = (d24 - 1.0d) * d27 * (d23 - 1.0d);
                }
                double d28 = d9;
                double d29 = d10;
                if (d28 > 0.0d) {
                    d29 = -d29;
                } else {
                    d28 = -d28;
                }
                if (d28 >= ((1.5d * d21) * d29) - FastMath.abs(dAbs * d29) || d28 >= FastMath.abs(d16 * 0.5d * d29)) {
                    d6 = d21;
                    d17 = d6;
                } else {
                    d6 = d28 / d29;
                }
            }
            if (FastMath.abs(d6) > dAbs) {
                d7 = d11 + d6;
            } else {
                if (d21 > 0.0d) {
                    d7 = d11 + dAbs;
                } else {
                    d7 = d11 - dAbs;
                }
                dComputeObjectiveValue = computeObjectiveValue(d7);
                if ((dComputeObjectiveValue <= 0.0d && d13 > 0.0d) || (dComputeObjectiveValue <= 0.0d && d13 <= 0.0d)) {
                    d6 = d7 - d11;
                    d17 = d6;
                    d8 = d11;
                    d13 = d14;
                }
                d18 = d8;
                absoluteAccuracy = d22;
                d16 = d17;
                d17 = d6;
                d12 = d7;
                d15 = dComputeObjectiveValue;
            }
            dComputeObjectiveValue = computeObjectiveValue(d7);
            d8 = dComputeObjectiveValue <= 0.0d ? d18 : d18;
            d18 = d8;
            absoluteAccuracy = d22;
            d16 = d17;
            d17 = d6;
            d12 = d7;
            d15 = dComputeObjectiveValue;
        }
        return d11;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected double doSolve() throws TooManyEvaluationsException, NoBracketingException, NumberIsTooLargeException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double dComputeObjectiveValue = computeObjectiveValue(startValue);
        if (FastMath.abs(dComputeObjectiveValue) <= functionValueAccuracy) {
            return startValue;
        }
        double dComputeObjectiveValue2 = computeObjectiveValue(min);
        if (FastMath.abs(dComputeObjectiveValue2) <= functionValueAccuracy) {
            return min;
        }
        if (dComputeObjectiveValue * dComputeObjectiveValue2 < 0.0d) {
            return brent(min, startValue, dComputeObjectiveValue2, dComputeObjectiveValue);
        }
        double dComputeObjectiveValue3 = computeObjectiveValue(max);
        if (FastMath.abs(dComputeObjectiveValue3) <= functionValueAccuracy) {
            return max;
        }
        if (dComputeObjectiveValue * dComputeObjectiveValue3 < 0.0d) {
            return brent(startValue, max, dComputeObjectiveValue, dComputeObjectiveValue3);
        }
        throw new NoBracketingException(min, max, dComputeObjectiveValue2, dComputeObjectiveValue3);
    }

    public BrentSolver(double d2) {
        super(d2);
    }

    public BrentSolver(double d2, double d3) {
        super(d2, d3);
    }

    public BrentSolver(double d2, double d3, double d4) {
        super(d2, d3, d4);
    }
}
