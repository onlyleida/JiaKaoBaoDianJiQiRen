package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractUnivariateDifferentiableSolver extends BaseAbstractUnivariateSolver<UnivariateDifferentiableFunction> implements UnivariateDifferentiableSolver {
    private UnivariateDifferentiableFunction function;

    protected AbstractUnivariateDifferentiableSolver(double d2) {
        super(d2);
    }

    protected DerivativeStructure computeObjectiveValueAndDerivative(double d2) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.function.value(new DerivativeStructure(1, 1, 0, d2));
    }

    protected AbstractUnivariateDifferentiableSolver(double d2, double d3, double d4) {
        super(d2, d3, d4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, UnivariateDifferentiableFunction univariateDifferentiableFunction, double d2, double d3, double d4) {
        super.setup(i, univariateDifferentiableFunction, d2, d3, d4);
        this.function = univariateDifferentiableFunction;
    }
}
