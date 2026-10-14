package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractPolynomialSolver extends BaseAbstractUnivariateSolver<PolynomialFunction> implements PolynomialSolver {
    private PolynomialFunction polynomialFunction;

    protected AbstractPolynomialSolver(double d2) {
        super(d2);
    }

    protected double[] getCoefficients() {
        return this.polynomialFunction.getCoefficients();
    }

    protected AbstractPolynomialSolver(double d2, double d3) {
        super(d2, d3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, PolynomialFunction polynomialFunction, double d2, double d3, double d4) {
        super.setup(i, polynomialFunction, d2, d3, d4);
        this.polynomialFunction = polynomialFunction;
    }

    protected AbstractPolynomialSolver(double d2, double d3, double d4) {
        super(d2, d3, d4);
    }
}
