package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class MullerSolver extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public MullerSolver() {
        this(1.0E-6d);
    }

    private double solve(double d2, double d3, double d4, double d5) throws TooManyEvaluationsException {
        double dSqrt;
        long j;
        double d6;
        double relativeAccuracy = getRelativeAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double d7 = (d2 + d3) * 0.5d;
        double d8 = d4;
        double d9 = d5;
        double d10 = d7;
        double dComputeObjectiveValue = computeObjectiveValue(d7);
        double d11 = Double.POSITIVE_INFINITY;
        double d12 = d2;
        double d13 = d3;
        while (true) {
            double d14 = d10 - d12;
            double d15 = (dComputeObjectiveValue - d8) / d14;
            double d16 = d13 - d10;
            double d17 = d13 - d12;
            double d18 = (((d9 - dComputeObjectiveValue) / d16) - d15) / d17;
            double d19 = d15 + (d14 * d18);
            double d20 = (d19 * d19) - ((4.0d * dComputeObjectiveValue) * d18);
            double d21 = (-2.0d) * dComputeObjectiveValue;
            double dSqrt2 = d10 + (d21 / (d19 + FastMath.sqrt(d20)));
            dSqrt = isSequence(d12, dSqrt2, d13) ? dSqrt2 : d10 + (d21 / (d19 - FastMath.sqrt(d20)));
            double dComputeObjectiveValue2 = computeObjectiveValue(dSqrt);
            if (FastMath.abs(dSqrt - d11) <= FastMath.max(relativeAccuracy * FastMath.abs(dSqrt), absoluteAccuracy) || FastMath.abs(dComputeObjectiveValue2) <= functionValueAccuracy) {
                break;
            }
            if ((dSqrt < d10 && d14 > d17 * 0.95d) || (dSqrt > d10 && d16 > d17 * 0.95d) || dSqrt == d10) {
                j = 4602678819172646912L;
                double d22 = (d12 + d13) * 0.5d;
                double dComputeObjectiveValue3 = computeObjectiveValue(d22);
                if (FastMath.signum(d8) + FastMath.signum(dComputeObjectiveValue3) == 0.0d) {
                    d13 = d22;
                    d9 = dComputeObjectiveValue3;
                } else {
                    d12 = d22;
                    d8 = dComputeObjectiveValue3;
                }
                d6 = (d12 + d13) * 0.5d;
                dComputeObjectiveValue = computeObjectiveValue(d6);
                d11 = Double.POSITIVE_INFINITY;
            } else {
                if (dSqrt >= d10) {
                    d12 = d10;
                }
                if (dSqrt >= d10) {
                    d8 = dComputeObjectiveValue;
                }
                if (dSqrt <= d10) {
                    d13 = d10;
                }
                if (dSqrt <= d10) {
                    d9 = dComputeObjectiveValue;
                }
                d6 = dSqrt;
                d11 = d6;
                dComputeObjectiveValue = dComputeObjectiveValue2;
                j = 4602678819172646912L;
            }
            d10 = d6;
        }
        return dSqrt;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double dComputeObjectiveValue = computeObjectiveValue(min);
        if (FastMath.abs(dComputeObjectiveValue) < functionValueAccuracy) {
            return min;
        }
        double dComputeObjectiveValue2 = computeObjectiveValue(max);
        if (FastMath.abs(dComputeObjectiveValue2) < functionValueAccuracy) {
            return max;
        }
        double dComputeObjectiveValue3 = computeObjectiveValue(startValue);
        if (FastMath.abs(dComputeObjectiveValue3) < functionValueAccuracy) {
            return startValue;
        }
        verifyBracketing(min, max);
        return isBracketing(min, startValue) ? solve(min, startValue, dComputeObjectiveValue, dComputeObjectiveValue3) : solve(startValue, max, dComputeObjectiveValue3, dComputeObjectiveValue2);
    }

    public MullerSolver(double d2) {
        super(d2);
    }

    public MullerSolver(double d2, double d3) {
        super(d2, d3);
    }
}
