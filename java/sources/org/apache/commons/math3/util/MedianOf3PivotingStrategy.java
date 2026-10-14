package org.apache.commons.math3.util;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

/* JADX INFO: loaded from: classes6.dex */
public class MedianOf3PivotingStrategy implements PivotingStrategyInterface, Serializable {
    private static final long serialVersionUID = 20140713;

    @Override // org.apache.commons.math3.util.PivotingStrategyInterface
    public int pivotIndex(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        MathArrays.verifyValues(dArr, i, i2 - i);
        int i3 = i2 - 1;
        int i4 = ((i3 - i) / 2) + i;
        double d2 = dArr[i];
        double d3 = dArr[i4];
        double d4 = dArr[i3];
        if (d2 < d3) {
            if (d3 < d4) {
                return i4;
            }
            return d2 < d4 ? i3 : i;
        }
        if (d2 < d4) {
            return i;
        }
        return d3 < d4 ? i3 : i4;
    }
}
