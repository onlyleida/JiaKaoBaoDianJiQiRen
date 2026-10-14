package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class StepFunction implements UnivariateFunction {
    private final double[] abscissa;
    private final double[] ordinate;

    public StepFunction(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
        if (dArr2.length != dArr.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
        MathArrays.checkOrder(dArr);
        this.abscissa = MathArrays.copyOf(dArr);
        this.ordinate = MathArrays.copyOf(dArr2);
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        int iBinarySearch = Arrays.binarySearch(this.abscissa, d2);
        if (iBinarySearch < -1) {
            return this.ordinate[(-iBinarySearch) - 2];
        }
        return iBinarySearch >= 0 ? this.ordinate[iBinarySearch] : this.ordinate[0];
    }
}
