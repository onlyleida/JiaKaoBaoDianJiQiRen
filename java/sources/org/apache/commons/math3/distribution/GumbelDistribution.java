package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class GumbelDistribution extends AbstractRealDistribution {
    private static final double EULER = 0.5778636748954609d;
    private static final long serialVersionUID = 20141003;
    private final double beta;
    private final double mu;

    public GumbelDistribution(double d2, double d3) {
        this(new Well19937c(), d2, d3);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        return FastMath.exp(-FastMath.exp(-((d2 - this.mu) / this.beta)));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        double d3 = -((d2 - this.mu) / this.beta);
        return FastMath.exp(d3 - FastMath.exp(d3)) / this.beta;
    }

    public double getLocation() {
        return this.mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return this.mu + (this.beta * EULER);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d2 = this.beta;
        return d2 * d2 * 1.6449340668482264d;
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
        return this.mu - (FastMath.log(-FastMath.log(d2)) * this.beta);
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

    public GumbelDistribution(RandomGenerator randomGenerator, double d2, double d3) {
        super(randomGenerator);
        if (d3 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d3));
        }
        this.beta = d3;
        this.mu = d2;
    }
}
