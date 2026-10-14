package org.apache.commons.math3.distribution;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class EnumeratedRealDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20130308;
    protected final EnumeratedDistribution<Double> innerDistribution;

    public EnumeratedRealDistribution(double[] dArr, double[] dArr2) throws NotPositiveException, NotANumberException, NotFiniteNumberException, DimensionMismatchException, MathArithmeticException {
        this(new Well19937c(), dArr, dArr2);
    }

    private static List<Pair<Double, Double>> createDistribution(double[] dArr, double[] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
        ArrayList arrayList = new ArrayList(dArr.length);
        for (int i = 0; i < dArr.length; i++) {
            arrayList.add(new Pair(Double.valueOf(dArr[i]), Double.valueOf(dArr2[i])));
        }
        return arrayList;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double dDoubleValue = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().doubleValue() <= d2) {
                dDoubleValue += pair.getValue().doubleValue();
            }
        }
        return dDoubleValue;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        return probability(d2);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        double dDoubleValue = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            dDoubleValue += pair.getValue().doubleValue() * pair.getKey().doubleValue();
        }
        return dDoubleValue;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double dDoubleValue = 0.0d;
        double dDoubleValue2 = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            dDoubleValue2 += pair.getValue().doubleValue() * pair.getKey().doubleValue();
            dDoubleValue += pair.getValue().doubleValue() * pair.getKey().doubleValue() * pair.getKey().doubleValue();
        }
        return dDoubleValue - (dDoubleValue2 * dDoubleValue2);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        double dDoubleValue = Double.POSITIVE_INFINITY;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().doubleValue() < dDoubleValue && pair.getValue().doubleValue() > 0.0d) {
                dDoubleValue = pair.getKey().doubleValue();
            }
        }
        return dDoubleValue;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        double dDoubleValue = Double.NEGATIVE_INFINITY;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().doubleValue() > dDoubleValue && pair.getValue().doubleValue() > 0.0d) {
                dDoubleValue = pair.getKey().doubleValue();
            }
        }
        return dDoubleValue;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d2) throws OutOfRangeException {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        double supportLowerBound = getSupportLowerBound();
        double dDoubleValue = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getValue().doubleValue() != 0.0d) {
                dDoubleValue += pair.getValue().doubleValue();
                supportLowerBound = pair.getKey().doubleValue();
                if (dDoubleValue >= d2) {
                    break;
                }
            }
        }
        return supportLowerBound;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double probability(double d2) {
        return this.innerDistribution.probability(Double.valueOf(d2));
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return this.innerDistribution.sample().doubleValue();
    }

    public EnumeratedRealDistribution(RandomGenerator randomGenerator, double[] dArr, double[] dArr2) throws NotPositiveException, NotANumberException, NotFiniteNumberException, DimensionMismatchException, MathArithmeticException {
        super(randomGenerator);
        this.innerDistribution = new EnumeratedDistribution<>(randomGenerator, createDistribution(dArr, dArr2));
    }

    public EnumeratedRealDistribution(RandomGenerator randomGenerator, double[] dArr) {
        super(randomGenerator);
        HashMap map = new HashMap();
        int i = 0;
        for (double d2 : dArr) {
            Integer num = (Integer) map.get(Double.valueOf(d2));
            if (num == null) {
                num = 0;
            }
            map.put(Double.valueOf(d2), Integer.valueOf(num.intValue() + 1));
        }
        int size = map.size();
        double length = dArr.length;
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        for (Map.Entry entry : map.entrySet()) {
            dArr2[i] = ((Double) entry.getKey()).doubleValue();
            dArr3[i] = ((double) ((Integer) entry.getValue()).intValue()) / length;
            i++;
        }
        this.innerDistribution = new EnumeratedDistribution<>(randomGenerator, createDistribution(dArr2, dArr3));
    }

    public EnumeratedRealDistribution(double[] dArr) {
        this(new Well19937c(), dArr);
    }
}
