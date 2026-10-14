package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.optim.AbstractConvergenceChecker;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SimpleUnivariateValueChecker extends AbstractConvergenceChecker<UnivariatePointValuePair> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    public SimpleUnivariateValueChecker(double d2, double d3) {
        super(d2, d3);
        this.maxIterationCount = -1;
    }

    @Override // org.apache.commons.math3.optim.AbstractConvergenceChecker, org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
        int i2 = this.maxIterationCount;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double value = univariatePointValuePair.getValue();
        double value2 = univariatePointValuePair2.getValue();
        double dAbs = FastMath.abs(value - value2);
        return dAbs <= FastMath.max(FastMath.abs(value), FastMath.abs(value2)) * getRelativeThreshold() || dAbs <= getAbsoluteThreshold();
    }

    public SimpleUnivariateValueChecker(double d2, double d3, int i) {
        super(d2, d3);
        if (i > 0) {
            this.maxIterationCount = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
