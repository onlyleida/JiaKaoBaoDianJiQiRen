package org.apache.commons.math3.optim;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {
    private final double absoluteThreshold;
    private final double relativeThreshold;

    public AbstractConvergenceChecker(double d2, double d3) {
        this.relativeThreshold = d2;
        this.absoluteThreshold = d3;
    }

    @Override // org.apache.commons.math3.optim.ConvergenceChecker
    public abstract boolean converged(int i, PAIR pair, PAIR pair2);

    public double getAbsoluteThreshold() {
        return this.absoluteThreshold;
    }

    public double getRelativeThreshold() {
        return this.relativeThreshold;
    }
}
