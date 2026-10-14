package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractUnivariateSolver extends BaseAbstractUnivariateSolver<UnivariateFunction> implements UnivariateSolver {
    protected AbstractUnivariateSolver(double d2) {
        super(d2);
    }

    protected AbstractUnivariateSolver(double d2, double d3) {
        super(d2, d3);
    }

    protected AbstractUnivariateSolver(double d2, double d3, double d4) {
        super(d2, d3, d4);
    }
}
