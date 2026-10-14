package org.apache.commons.math3.ml.distance;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class CanberraDistance implements DistanceMeasure {
    private static final long serialVersionUID = -6972277381587032228L;

    @Override // org.apache.commons.math3.ml.distance.DistanceMeasure
    public double compute(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        MathArrays.checkEqualLength(dArr, dArr2);
        double d2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double dAbs = FastMath.abs(dArr[i] - dArr2[i]);
            double dAbs2 = FastMath.abs(dArr[i]) + FastMath.abs(dArr2[i]);
            d2 += (dAbs == 0.0d && dAbs2 == 0.0d) ? 0.0d : dAbs / dAbs2;
        }
        return d2;
    }
}
