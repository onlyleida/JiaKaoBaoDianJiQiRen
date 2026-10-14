package org.apache.commons.math3.ml.distance;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class EarthMoversDistance implements DistanceMeasure {
    private static final long serialVersionUID = -5406732779747414922L;

    @Override // org.apache.commons.math3.ml.distance.DistanceMeasure
    public double compute(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        MathArrays.checkEqualLength(dArr, dArr2);
        double dAbs = 0.0d;
        double d2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d2 = (dArr[i] + d2) - dArr2[i];
            dAbs += FastMath.abs(d2);
        }
        return dAbs;
    }
}
