package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SimpleValueChecker extends AbstractConvergenceChecker<PointValuePair> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    public SimpleValueChecker(double d2, double d3) {
        super(d2, d3);
        this.maxIterationCount = -1;
    }

    @Override // org.apache.commons.math3.optim.AbstractConvergenceChecker, org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, PointValuePair pointValuePair, PointValuePair pointValuePair2) {
        int i2 = this.maxIterationCount;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double dDoubleValue = pointValuePair.getValue().doubleValue();
        double dDoubleValue2 = pointValuePair2.getValue().doubleValue();
        double dAbs = FastMath.abs(dDoubleValue - dDoubleValue2);
        return dAbs <= FastMath.max(FastMath.abs(dDoubleValue), FastMath.abs(dDoubleValue2)) * getRelativeThreshold() || dAbs <= getAbsoluteThreshold();
    }

    public SimpleValueChecker(double d2, double d3, int i) {
        super(d2, d3);
        if (i > 0) {
            this.maxIterationCount = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
