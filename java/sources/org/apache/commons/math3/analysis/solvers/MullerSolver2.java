package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class MullerSolver2 extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public MullerSolver2() {
        this(1.0E-6d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double dSqrt;
        double dRandom;
        MullerSolver2 mullerSolver2 = this;
        double min = getMin();
        double max = getMax();
        mullerSolver2.verifyInterval(min, max);
        double relativeAccuracy = getRelativeAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double dComputeObjectiveValue = mullerSolver2.computeObjectiveValue(min);
        if (FastMath.abs(dComputeObjectiveValue) < functionValueAccuracy) {
            return min;
        }
        double dComputeObjectiveValue2 = mullerSolver2.computeObjectiveValue(max);
        if (FastMath.abs(dComputeObjectiveValue2) < functionValueAccuracy) {
            return max;
        }
        if (dComputeObjectiveValue * dComputeObjectiveValue2 > 0.0d) {
            throw new NoBracketingException(min, max, dComputeObjectiveValue, dComputeObjectiveValue2);
        }
        double d2 = (min + max) * 0.5d;
        double d3 = min;
        double d4 = max;
        double d5 = Double.POSITIVE_INFINITY;
        double d6 = dComputeObjectiveValue2;
        double dComputeObjectiveValue3 = mullerSolver2.computeObjectiveValue(d2);
        double d7 = d2;
        double d8 = dComputeObjectiveValue;
        while (true) {
            double d9 = d7 - d4;
            double d10 = d9 / (d4 - d3);
            double d11 = d10 + 1.0d;
            double d12 = ((dComputeObjectiveValue3 - (d11 * d6)) + (d10 * d8)) * d10;
            double d13 = ((((d10 * 2.0d) + 1.0d) * dComputeObjectiveValue3) - ((d11 * d11) * d6)) + (d10 * d10 * d8);
            double d14 = d11 * dComputeObjectiveValue3;
            double d15 = d13 * d13;
            double d16 = d15 - ((d12 * 4.0d) * d14);
            if (d16 >= 0.0d) {
                dSqrt = d13 + FastMath.sqrt(d16);
                double dSqrt2 = d13 - FastMath.sqrt(d16);
                if (FastMath.abs(dSqrt) <= FastMath.abs(dSqrt2)) {
                    dSqrt = dSqrt2;
                }
            } else {
                dSqrt = FastMath.sqrt(d15 - d16);
            }
            if (dSqrt != 0.0d) {
                dRandom = d7 - (((d14 * 2.0d) * d9) / dSqrt);
                while (true) {
                    if (dRandom != d4 && dRandom != d7) {
                        break;
                    }
                    dRandom += absoluteAccuracy;
                }
            } else {
                dRandom = (FastMath.random() * (max - min)) + min;
                d5 = Double.POSITIVE_INFINITY;
            }
            double dComputeObjectiveValue4 = mullerSolver2.computeObjectiveValue(dRandom);
            if (FastMath.abs(dRandom - d5) <= FastMath.max(relativeAccuracy * FastMath.abs(dRandom), absoluteAccuracy) || FastMath.abs(dComputeObjectiveValue4) <= functionValueAccuracy) {
                break;
            }
            mullerSolver2 = this;
            d5 = dRandom;
            d8 = d6;
            d6 = dComputeObjectiveValue3;
            dComputeObjectiveValue3 = dComputeObjectiveValue4;
            d3 = d4;
            d4 = d7;
            d7 = d5;
        }
        return dRandom;
    }

    public MullerSolver2(double d2) {
        super(d2);
    }

    public MullerSolver2(double d2, double d3) {
        super(d2, d3);
    }
}
