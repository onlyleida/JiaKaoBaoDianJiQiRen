package org.apache.commons.math3.analysis.solvers;

/* JADX INFO: loaded from: classes6.dex */
public class RegulaFalsiSolver extends BaseSecantSolver {
    public RegulaFalsiSolver() {
        super(1.0E-6d, BaseSecantSolver.Method.REGULA_FALSI);
    }

    public RegulaFalsiSolver(double d2) {
        super(d2, BaseSecantSolver.Method.REGULA_FALSI);
    }

    public RegulaFalsiSolver(double d2, double d3) {
        super(d2, d3, BaseSecantSolver.Method.REGULA_FALSI);
    }

    public RegulaFalsiSolver(double d2, double d3, double d4) {
        super(d2, d3, d4, BaseSecantSolver.Method.REGULA_FALSI);
    }
}
