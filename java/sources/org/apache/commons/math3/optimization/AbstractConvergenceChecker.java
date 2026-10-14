package org.apache.commons.math3.optimization;

import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {
    private final double absoluteThreshold;
    private final double relativeThreshold;

    @Deprecated
    private static final double DEFAULT_RELATIVE_THRESHOLD = Precision.EPSILON * 100.0d;

    @Deprecated
    private static final double DEFAULT_ABSOLUTE_THRESHOLD = Precision.SAFE_MIN * 100.0d;

    @Deprecated
    public AbstractConvergenceChecker() {
        this.relativeThreshold = DEFAULT_RELATIVE_THRESHOLD;
        this.absoluteThreshold = DEFAULT_ABSOLUTE_THRESHOLD;
    }

    @Override // org.apache.commons.math3.optimization.ConvergenceChecker
    public abstract boolean converged(int i, PAIR pair, PAIR pair2);

    public double getAbsoluteThreshold() {
        return this.absoluteThreshold;
    }

    public double getRelativeThreshold() {
        return this.relativeThreshold;
    }

    public AbstractConvergenceChecker(double d2, double d3) {
        this.relativeThreshold = d2;
        this.absoluteThreshold = d3;
    }
}
