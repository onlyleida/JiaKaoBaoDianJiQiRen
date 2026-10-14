package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.WeightedEvaluation;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Product extends AbstractStorelessUnivariateStatistic implements Serializable, WeightedEvaluation {
    private static final long serialVersionUID = 2824226005990582538L;
    private long n;
    private double value;

    public Product() {
        this.n = 0L;
        this.value = 1.0d;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        this.value = 1.0d;
        this.n = 0L;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (!test(dArr, i, i2, true)) {
            return Double.NaN;
        }
        double d2 = 1.0d;
        for (int i3 = i; i3 < i + i2; i3++) {
            d2 *= dArr[i3];
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
        this.value *= d2;
        this.n++;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public Product copy() {
        Product product = new Product();
        copy(this, product);
        return product;
    }

    @Override // org.apache.commons.math3.stat.descriptive.WeightedEvaluation
    public double evaluate(double[] dArr, double[] dArr2, int i, int i2) throws MathIllegalArgumentException {
        if (!test(dArr, dArr2, i, i2, true)) {
            return Double.NaN;
        }
        double dPow = 1.0d;
        for (int i3 = i; i3 < i + i2; i3++) {
            dPow *= FastMath.pow(dArr[i3], dArr2[i3]);
        }
        return dPow;
    }

    public Product(Product product) throws NullArgumentException {
        copy(product, this);
    }

    public static void copy(Product product, Product product2) throws NullArgumentException {
        MathUtils.checkNotNull(product);
        MathUtils.checkNotNull(product2);
        product2.setData(product.getDataRef());
        product2.n = product.n;
        product2.value = product.value;
    }

    @Override // org.apache.commons.math3.stat.descriptive.WeightedEvaluation
    public double evaluate(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return evaluate(dArr, dArr2, 0, dArr.length);
    }
}
