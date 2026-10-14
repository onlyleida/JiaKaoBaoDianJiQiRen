package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class AbstractDifferentiableUnivariateSolver extends BaseAbstractUnivariateSolver<DifferentiableUnivariateFunction> implements DifferentiableUnivariateSolver {
    private UnivariateFunction functionDerivative;

    protected AbstractDifferentiableUnivariateSolver(double d2) {
        super(d2);
    }

    protected double computeDerivativeObjectiveValue(double d2) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.functionDerivative.value(d2);
    }

    protected AbstractDifferentiableUnivariateSolver(double d2, double d3, double d4) {
        super(d2, d3, d4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, DifferentiableUnivariateFunction differentiableUnivariateFunction, double d2, double d3, double d4) {
        super.setup(i, differentiableUnivariateFunction, d2, d3, d4);
        this.functionDerivative = differentiableUnivariateFunction.derivative();
    }
}
