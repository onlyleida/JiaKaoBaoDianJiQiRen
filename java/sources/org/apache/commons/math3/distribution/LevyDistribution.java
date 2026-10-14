package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Erf;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class LevyDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20130314;
    private final double c;
    private final double halfC;
    private final double mu;

    public LevyDistribution(double d2, double d3) {
        this(new Well19937c(), d2, d3);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double d3 = this.mu;
        if (d2 < d3) {
            return Double.NaN;
        }
        return Erf.erfc(FastMath.sqrt(this.halfC / (d2 - d3)));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        double d3 = this.mu;
        if (d2 < d3) {
            return Double.NaN;
        }
        double d4 = d2 - d3;
        double d5 = this.halfC / d4;
        return (FastMath.sqrt(d5 / 3.141592653589793d) * FastMath.exp(-d5)) / d4;
    }

    public double getLocation() {
        return this.mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        return Double.POSITIVE_INFINITY;
    }

    public double getScale() {
        return this.c;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d2) throws OutOfRangeException {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        double dErfcInv = Erf.erfcInv(d2);
        return this.mu + (this.halfC / (dErfcInv * dErfcInv));
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

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double logDensity(double d2) {
        double d3 = this.mu;
        if (d2 < d3) {
            return Double.NaN;
        }
        double d4 = d2 - d3;
        double d5 = this.halfC / d4;
        return ((FastMath.log(d5 / 3.141592653589793d) * 0.5d) - d5) - FastMath.log(d4);
    }

    public LevyDistribution(RandomGenerator randomGenerator, double d2, double d3) {
        super(randomGenerator);
        this.mu = d2;
        this.c = d3;
        this.halfC = d3 * 0.5d;
    }
}
