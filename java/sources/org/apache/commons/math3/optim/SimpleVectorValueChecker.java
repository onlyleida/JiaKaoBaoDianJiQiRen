package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SimpleVectorValueChecker extends AbstractConvergenceChecker<PointVectorValuePair> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    public SimpleVectorValueChecker(double d2, double d3) {
        super(d2, d3);
        this.maxIterationCount = -1;
    }

    @Override // org.apache.commons.math3.optim.AbstractConvergenceChecker, org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, PointVectorValuePair pointVectorValuePair, PointVectorValuePair pointVectorValuePair2) {
        int i2 = this.maxIterationCount;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double[] valueRef = pointVectorValuePair.getValueRef();
        double[] valueRef2 = pointVectorValuePair2.getValueRef();
        for (int i3 = 0; i3 < valueRef.length; i3++) {
            double d2 = valueRef[i3];
            double d3 = valueRef2[i3];
            double dAbs = FastMath.abs(d2 - d3);
            if (dAbs > FastMath.max(FastMath.abs(d2), FastMath.abs(d3)) * getRelativeThreshold() && dAbs > getAbsoluteThreshold()) {
                return false;
            }
        }
        return true;
    }

    public SimpleVectorValueChecker(double d2, double d3, int i) {
        super(d2, d3);
        if (i > 0) {
            this.maxIterationCount = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
