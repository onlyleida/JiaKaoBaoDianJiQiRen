package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;

/* JADX INFO: loaded from: classes6.dex */
public interface BracketedUnivariateSolver<FUNC extends UnivariateFunction> extends BaseUnivariateSolver<FUNC> {
    double solve(int i, FUNC func, double d2, double d3, double d4, AllowedSolution allowedSolution);

    double solve(int i, FUNC func, double d2, double d3, AllowedSolution allowedSolution);
}
