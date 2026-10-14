package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Skewness extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 7101857578996691352L;
    protected boolean incMoment;
    protected ThirdMoment moment;

    public Skewness() {
        this.moment = null;
        this.incMoment = true;
        this.moment = new ThirdMoment();
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        if (this.incMoment) {
            this.moment.clear();
        }
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        int i3;
        int i4 = i;
        if (!test(dArr, i, i2) || i2 <= 2) {
            return Double.NaN;
        }
        double dEvaluate = new Mean().evaluate(dArr, i4, i2);
        double d2 = 0.0d;
        int i5 = i4;
        double d3 = 0.0d;
        double d4 = 0.0d;
        while (true) {
            i3 = i4 + i2;
            if (i5 >= i3) {
                break;
            }
            double d5 = dArr[i5] - dEvaluate;
            d3 += d5 * d5;
            d4 += d5;
            i5++;
        }
        double d6 = i2;
        double d7 = (d3 - ((d4 * d4) / d6)) / ((double) (i2 - 1));
        while (i4 < i3) {
            double d8 = dArr[i4] - dEvaluate;
            d2 += d8 * d8 * d8;
            i4++;
        }
        return (d6 / ((d6 - 1.0d) * (d6 - 2.0d))) * (d2 / (d7 * FastMath.sqrt(d7)));
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public long getN() {
        return this.moment.getN();
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        ThirdMoment thirdMoment = this.moment;
        long j = thirdMoment.n;
        if (j < 3) {
            return Double.NaN;
        }
        double d2 = thirdMoment.m2 / (j - 1);
        if (d2 < 1.0E-19d) {
            return 0.0d;
        }
        double n = thirdMoment.getN();
        return (this.moment.m3 * n) / ((((n - 1.0d) * (n - 2.0d)) * FastMath.sqrt(d2)) * d2);
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d2) {
        if (this.incMoment) {
            this.moment.increment(d2);
        }
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public Skewness copy() {
        Skewness skewness = new Skewness();
        copy(this, skewness);
        return skewness;
    }

    public Skewness(ThirdMoment thirdMoment) {
        this.moment = null;
        this.incMoment = false;
        this.moment = thirdMoment;
    }

    public static void copy(Skewness skewness, Skewness skewness2) throws NullArgumentException {
        MathUtils.checkNotNull(skewness);
        MathUtils.checkNotNull(skewness2);
        skewness2.setData(skewness.getDataRef());
        skewness2.moment = new ThirdMoment(skewness.moment.copy());
        skewness2.incMoment = skewness.incMoment;
    }

    public Skewness(Skewness skewness) throws NullArgumentException {
        this.moment = null;
        copy(skewness, this);
    }
}
