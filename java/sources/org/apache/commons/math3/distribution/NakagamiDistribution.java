package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class NakagamiDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20141003;
    private final double inverseAbsoluteAccuracy;
    private final double mu;
    private final double omega;

    public NakagamiDistribution(double d2, double d3) {
        this(d2, d3, 1.0E-9d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double d3 = this.mu;
        return Gamma.regularizedGammaP(d3, ((d3 * d2) * d2) / this.omega);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        double d3 = this.mu;
        return ((FastMath.pow(d3, d3) * 2.0d) / (Gamma.gamma(this.mu) * FastMath.pow(this.omega, this.mu))) * FastMath.pow(d2, (this.mu * 2.0d) - 1.0d) * FastMath.exp((((-this.mu) * d2) * d2) / this.omega);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return (Gamma.gamma(this.mu + 0.5d) / Gamma.gamma(this.mu)) * FastMath.sqrt(this.omega / this.mu);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double dGamma = Gamma.gamma(this.mu + 0.5d) / Gamma.gamma(this.mu);
        return this.omega * (1.0d - (((1.0d / this.mu) * dGamma) * dGamma));
    }

    public double getScale() {
        return this.omega;
    }

    public double getShape() {
        return this.mu;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    protected double getSolverAbsoluteAccuracy() {
        return this.inverseAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return 0.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
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
        return false;
    }

    public NakagamiDistribution(double d2, double d3, double d4) {
        this(new Well19937c(), d2, d3, d4);
    }

    public NakagamiDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) {
        super(randomGenerator);
        if (d2 < 0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(0.5d), true);
        }
        if (d3 > 0.0d) {
            this.mu = d2;
            this.omega = d3;
            this.inverseAbsoluteAccuracy = d4;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d3));
    }
}
