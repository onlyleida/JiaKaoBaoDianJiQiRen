package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class LaplaceDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20141003;
    private final double beta;
    private final double mu;

    public LaplaceDistribution(double d2, double d3) {
        this(new Well19937c(), d2, d3);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double d3 = this.mu;
        return d2 <= d3 ? FastMath.exp((d2 - d3) / this.beta) / 2.0d : 1.0d - (FastMath.exp((d3 - d2) / this.beta) / 2.0d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        return FastMath.exp((-FastMath.abs(d2 - this.mu)) / this.beta) / (this.beta * 2.0d);
    }

    public double getLocation() {
        return this.mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return this.mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d2 = this.beta;
        return 2.0d * d2 * d2;
    }

    public double getScale() {
        return this.beta;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return Double.NEGATIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d2) throws OutOfRangeException {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), Double.valueOf(0.0d), Double.valueOf(1.0d));
        }
        if (d2 == 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d2 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        double d3 = d2 * 2.0d;
        return this.mu + (this.beta * (d2 > 0.5d ? -Math.log(2.0d - d3) : Math.log(d3)));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportLowerBoundInclusive() {
        return false;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    public LaplaceDistribution(RandomGenerator randomGenerator, double d2, double d3) {
        super(randomGenerator);
        if (d3 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d3));
        }
        this.mu = d2;
        this.beta = d3;
    }
}
