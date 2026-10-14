package org.apache.commons.math3.analysis.solvers;

/* JADX INFO: loaded from: classes6.dex */
public class IllinoisSolver extends BaseSecantSolver {
    public IllinoisSolver() {
        super(1.0E-6d, BaseSecantSolver.Method.ILLINOIS);
    }

    public IllinoisSolver(double d2) {
        super(d2, BaseSecantSolver.Method.ILLINOIS);
    }

    public IllinoisSolver(double d2, double d3) {
        super(d2, d3, BaseSecantSolver.Method.ILLINOIS);
    }

    public IllinoisSolver(double d2, double d3, double d4) {
        super(d2, d3, d4, BaseSecantSolver.Method.PEGASUS);
    }
}
