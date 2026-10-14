package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class SimplePointChecker<PAIR extends Pair<double[], ? extends Object>> extends AbstractConvergenceChecker<PAIR> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    public SimplePointChecker(double d2, double d3) {
        super(d2, d3);
        this.maxIterationCount = -1;
    }

    @Override // org.apache.commons.math3.optim.AbstractConvergenceChecker, org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, PAIR pair, PAIR pair2) {
        int i2 = this.maxIterationCount;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double[] dArr = (double[]) pair.getKey();
        double[] dArr2 = (double[]) pair2.getKey();
        for (int i3 = 0; i3 < dArr.length; i3++) {
            double d2 = dArr[i3];
            double d3 = dArr2[i3];
            double dAbs = FastMath.abs(d2 - d3);
            if (dAbs > FastMath.max(FastMath.abs(d2), FastMath.abs(d3)) * getRelativeThreshold() && dAbs > getAbsoluteThreshold()) {
                return false;
            }
        }
        return true;
    }

    public SimplePointChecker(double d2, double d3, int i) {
        super(d2, d3);
        if (i > 0) {
            this.maxIterationCount = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
