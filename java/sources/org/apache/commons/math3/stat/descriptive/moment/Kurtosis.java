package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Kurtosis extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 2784465764798260919L;
    protected boolean incMoment;
    protected FourthMoment moment;

    public Kurtosis() {
        this.incMoment = true;
        this.moment = new FourthMoment();
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        if (this.incMoment) {
            this.moment.clear();
        }
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (!test(dArr, i, i2) || i2 <= 3) {
            return Double.NaN;
        }
        Variance variance = new Variance();
        variance.incrementAll(dArr, i, i2);
        double d2 = variance.moment.m1;
        double dSqrt = FastMath.sqrt(variance.getResult());
        double dPow = 0.0d;
        for (int i3 = i; i3 < i + i2; i3++) {
            dPow += FastMath.pow(dArr[i3] - d2, 4.0d);
        }
        double d3 = i2;
        double d4 = (d3 + 1.0d) * d3;
        double d5 = d3 - 1.0d;
        double d6 = d3 - 2.0d;
        double d7 = d3 - 3.0d;
        return ((d4 / ((d5 * d6) * d7)) * (dPow / FastMath.pow(dSqrt, 4.0d))) - ((FastMath.pow(d5, 2.0d) * 3.0d) / (d6 * d7));
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public long getN() {
        return this.moment.getN();
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        if (this.moment.getN() <= 3) {
            return Double.NaN;
        }
        FourthMoment fourthMoment = this.moment;
        double d2 = fourthMoment.m2;
        long j = fourthMoment.n;
        double d3 = d2 / (j - 1);
        if (j <= 3 || d3 < 1.0E-19d) {
            return 0.0d;
        }
        double d4 = j;
        double result = (d4 + 1.0d) * d4 * fourthMoment.getResult();
        double d5 = this.moment.m2;
        double d6 = d4 - 1.0d;
        return (result - (((d5 * 3.0d) * d5) * d6)) / ((((d6 * (d4 - 2.0d)) * (d4 - 3.0d)) * d3) * d3);
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d2) {
        if (this.incMoment) {
            this.moment.increment(d2);
        }
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public Kurtosis copy() {
        Kurtosis kurtosis = new Kurtosis();
        copy(this, kurtosis);
        return kurtosis;
    }

    public Kurtosis(FourthMoment fourthMoment) {
        this.incMoment = false;
        this.moment = fourthMoment;
    }

    public static void copy(Kurtosis kurtosis, Kurtosis kurtosis2) throws NullArgumentException {
        MathUtils.checkNotNull(kurtosis);
        MathUtils.checkNotNull(kurtosis2);
        kurtosis2.setData(kurtosis.getDataRef());
        kurtosis2.moment = kurtosis.moment.copy();
        kurtosis2.incMoment = kurtosis.incMoment;
    }

    public Kurtosis(Kurtosis kurtosis) throws NullArgumentException {
        copy(kurtosis, this);
    }
}
