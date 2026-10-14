package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SecantSolver extends AbstractUnivariateSolver {
    protected static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public SecantSolver() {
        super(1.0E-6d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected final double doSolve() throws TooManyEvaluationsException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double dComputeObjectiveValue = computeObjectiveValue(min);
        double dComputeObjectiveValue2 = computeObjectiveValue(max);
        double d2 = 0.0d;
        if (dComputeObjectiveValue == 0.0d) {
            return min;
        }
        if (dComputeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double functionValueAccuracy = getFunctionValueAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        while (true) {
            double d3 = dComputeObjectiveValue;
            dComputeObjectiveValue = dComputeObjectiveValue2;
            double d4 = min;
            min = max;
            max = min - (((min - d4) * dComputeObjectiveValue) / (dComputeObjectiveValue - d3));
            dComputeObjectiveValue2 = computeObjectiveValue(max);
            if (dComputeObjectiveValue2 == d2 || FastMath.abs(dComputeObjectiveValue2) <= functionValueAccuracy || FastMath.abs(max - min) < FastMath.max(relativeAccuracy * FastMath.abs(max), absoluteAccuracy)) {
                return max;
            }
            d2 = 0.0d;
        }
    }

    public SecantSolver(double d2) {
        super(d2);
    }

    public SecantSolver(double d2, double d3) {
        super(d2, d3);
    }
}
