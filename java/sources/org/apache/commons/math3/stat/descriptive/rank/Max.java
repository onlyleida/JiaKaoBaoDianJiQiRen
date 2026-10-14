package org.apache.commons.math3.stat.descriptive.rank;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Max extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -5593383832225844641L;
    private long n;
    private double value;

    public Max() {
        this.n = 0L;
        this.value = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        this.value = Double.NaN;
        this.n = 0L;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (!test(dArr, i, i2)) {
            return Double.NaN;
        }
        double d2 = dArr[i];
        for (int i3 = i; i3 < i + i2; i3++) {
            if (!Double.isNaN(dArr[i3]) && d2 <= dArr[i3]) {
                d2 = dArr[i3];
            }
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
        double d3 = this.value;
        if (d2 > d3 || Double.isNaN(d3)) {
            this.value = d2;
        }
        this.n++;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public Max copy() {
        Max max = new Max();
        copy(this, max);
        return max;
    }

    public Max(Max max) throws NullArgumentException {
        copy(max, this);
    }

    public static void copy(Max max, Max max2) throws NullArgumentException {
        MathUtils.checkNotNull(max);
        MathUtils.checkNotNull(max2);
        max2.setData(max.getDataRef());
        max2.n = max.n;
        max2.value = max.value;
    }
}
