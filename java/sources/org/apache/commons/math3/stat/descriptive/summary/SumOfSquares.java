package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class SumOfSquares extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 1460986908574398008L;
    private long n;
    private double value;

    public SumOfSquares() {
        this.n = 0L;
        this.value = 0.0d;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        this.value = 0.0d;
        this.n = 0L;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (!test(dArr, i, i2, true)) {
            return Double.NaN;
        }
        double d2 = 0.0d;
        for (int i3 = i; i3 < i + i2; i3++) {
            d2 += dArr[i3] * dArr[i3];
        }
        return d2;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public long getN() {
        return this.n;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        return this.value;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d2) {
        this.value += d2 * d2;
        this.n++;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public SumOfSquares copy() {
        SumOfSquares sumOfSquares = new SumOfSquares();
        copy(this, sumOfSquares);
        return sumOfSquares;
    }

    public SumOfSquares(SumOfSquares sumOfSquares) throws NullArgumentException {
        copy(sumOfSquares, this);
    }

    public static void copy(SumOfSquares sumOfSquares, SumOfSquares sumOfSquares2) throws NullArgumentException {
        MathUtils.checkNotNull(sumOfSquares);
        MathUtils.checkNotNull(sumOfSquares2);
        sumOfSquares2.setData(sumOfSquares.getDataRef());
        sumOfSquares2.n = sumOfSquares.n;
        sumOfSquares2.value = sumOfSquares.value;
    }
}
