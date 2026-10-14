package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class LogisticDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20141003;
    private final double mu;
    private final double s;

    public LogisticDistribution(double d2, double d3) {
        this(new Well19937c(), d2, d3);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        return 1.0d / (FastMath.exp(-((1.0d / this.s) * (d2 - this.mu))) + 1.0d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        double dExp = FastMath.exp(-((d2 - this.mu) / this.s));
        double d3 = (1.0d / this.s) * dExp;
        double d4 = dExp + 1.0d;
        return d3 / (d4 * d4);
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
        double d2 = this.s;
        return (1.0d / (d2 * d2)) * 3.289868133696453d;
    }

    public double getScale() {
        return this.s;
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
            return 0.0d;
        }
        if (d2 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return (this.s * Math.log(d2 / (1.0d - d2))) + this.mu;
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

    public LogisticDistribution(RandomGenerator randomGenerator, double d2, double d3) {
        super(randomGenerator);
        if (d3 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d3));
        }
        this.mu = d2;
        this.s = d3;
    }
}
