package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class BinomialDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 6751309484392813623L;
    private final int numberOfTrials;
    private final double probabilityOfSuccess;

    public BinomialDistribution(int i, double d2) {
        this(new Well19937c(), i, d2);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        int i2 = this.numberOfTrials;
        if (i >= i2) {
            return 1.0d;
        }
        return 1.0d - Beta.regularizedBeta(this.probabilityOfSuccess, ((double) i) + 1.0d, i2 - i);
    }

    public int getNumberOfTrials() {
        return this.numberOfTrials;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        return ((double) this.numberOfTrials) * this.probabilityOfSuccess;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        double d2 = this.probabilityOfSuccess;
        return ((double) this.numberOfTrials) * d2 * (1.0d - d2);
    }

    public double getProbabilityOfSuccess() {
        return this.probabilityOfSuccess;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        if (this.probabilityOfSuccess < 1.0d) {
            return 0;
        }
        return this.numberOfTrials;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        if (this.probabilityOfSuccess > 0.0d) {
            return this.numberOfTrials;
        }
        return 0;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        int i2 = this.numberOfTrials;
        if (i2 == 0) {
            return i == 0 ? 0.0d : Double.NEGATIVE_INFINITY;
        }
        if (i < 0 || i > i2) {
            return Double.NEGATIVE_INFINITY;
        }
        double d2 = this.probabilityOfSuccess;
        return SaddlePointExpansion.logBinomialProbability(i, i2, d2, 1.0d - d2);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        double dLogProbability = logProbability(i);
        if (dLogProbability == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(dLogProbability);
    }

    public BinomialDistribution(RandomGenerator randomGenerator, int i, double d2) {
        super(randomGenerator);
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_TRIALS, Integer.valueOf(i));
        }
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        this.probabilityOfSuccess = d2;
        this.numberOfTrials = i;
    }
}
