package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class GeometricDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 20130507;
    private final double log1mProbabilityOfSuccess;
    private final double logProbabilityOfSuccess;
    private final double probabilityOfSuccess;

    public GeometricDistribution(double d2) {
        this(new Well19937c(), d2);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        return -FastMath.expm1(this.log1mProbabilityOfSuccess * ((double) (i + 1)));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        double d2 = this.probabilityOfSuccess;
        return (1.0d - d2) / d2;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        double d2 = this.probabilityOfSuccess;
        return (1.0d - d2) / (d2 * d2);
    }

    public double getProbabilityOfSuccess() {
        return this.probabilityOfSuccess;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        return 0;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        return Integer.MAX_VALUE;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution, org.apache.commons.math3.distribution.IntegerDistribution
    public int inverseCumulativeProbability(double d2) throws OutOfRangeException {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d2 == 1.0d) {
            return Integer.MAX_VALUE;
        }
        if (d2 == 0.0d) {
            return 0;
        }
        return Math.max(0, (int) Math.ceil((FastMath.log1p(-d2) / this.log1mProbabilityOfSuccess) - 1.0d));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        if (i < 0) {
            return Double.NEGATIVE_INFINITY;
        }
        return (((double) i) * this.log1mProbabilityOfSuccess) + this.logProbabilityOfSuccess;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        return FastMath.exp(this.log1mProbabilityOfSuccess * ((double) i)) * this.probabilityOfSuccess;
    }

    public GeometricDistribution(RandomGenerator randomGenerator, double d2) {
        super(randomGenerator);
        if (d2 <= 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_LEFT, Double.valueOf(d2), 0, 1);
        }
        this.probabilityOfSuccess = d2;
        this.logProbabilityOfSuccess = FastMath.log(d2);
        this.log1mProbabilityOfSuccess = FastMath.log1p(-d2);
    }
}
