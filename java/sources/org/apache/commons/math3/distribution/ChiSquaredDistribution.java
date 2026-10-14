package org.apache.commons.math3.distribution;

import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;

/* JADX INFO: loaded from: classes6.dex */
public class ChiSquaredDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -8352658048349159782L;
    private final GammaDistribution gamma;
    private final double solverAbsoluteAccuracy;

    public ChiSquaredDistribution(double d2) {
        this(d2, 1.0E-9d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        return this.gamma.cumulativeProbability(d2);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        return this.gamma.density(d2);
    }

    public double getDegreesOfFreedom() {
        return this.gamma.getShape() * 2.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return getDegreesOfFreedom();
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        return getDegreesOfFreedom() * 2.0d;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    protected double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
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

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double logDensity(double d2) {
        return this.gamma.logDensity(d2);
    }

    public ChiSquaredDistribution(double d2, double d3) {
        this(new Well19937c(), d2, d3);
    }

    public ChiSquaredDistribution(RandomGenerator randomGenerator, double d2) {
        this(randomGenerator, d2, 1.0E-9d);
    }

    public ChiSquaredDistribution(RandomGenerator randomGenerator, double d2, double d3) {
        super(randomGenerator);
        this.gamma = new GammaDistribution(d2 / 2.0d, 2.0d);
        this.solverAbsoluteAccuracy = d3;
    }
}
