package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class TDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -5852615386664158222L;
    private final double degreesOfFreedom;
    private final double factor;
    private final double solverAbsoluteAccuracy;

    public TDistribution(double d2) throws NotStrictlyPositiveException {
        this(d2, 1.0E-9d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        if (d2 == 0.0d) {
            return 0.5d;
        }
        double d3 = this.degreesOfFreedom;
        double dRegularizedBeta = Beta.regularizedBeta(d3 / ((d2 * d2) + d3), d3 * 0.5d, 0.5d);
        return d2 < 0.0d ? 0.5d * dRegularizedBeta : 1.0d - (dRegularizedBeta * 0.5d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        return FastMath.exp(logDensity(d2));
    }

    public double getDegreesOfFreedom() {
        return this.degreesOfFreedom;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return getDegreesOfFreedom() > 1.0d ? 0.0d : Double.NaN;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double degreesOfFreedom = getDegreesOfFreedom();
        if (degreesOfFreedom > 2.0d) {
            return degreesOfFreedom / (degreesOfFreedom - 2.0d);
        }
        return (degreesOfFreedom <= 1.0d || degreesOfFreedom > 2.0d) ? Double.NaN : Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    protected double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return Double.NEGATIVE_INFINITY;
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
        return false;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double logDensity(double d2) {
        double d3 = this.degreesOfFreedom;
        return this.factor - (((d3 + 1.0d) / 2.0d) * FastMath.log(((d2 * d2) / d3) + 1.0d));
    }

    public TDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(new Well19937c(), d2, d3);
    }

    public TDistribution(RandomGenerator randomGenerator, double d2) throws NotStrictlyPositiveException {
        this(randomGenerator, d2, 1.0E-9d);
    }

    public TDistribution(RandomGenerator randomGenerator, double d2, double d3) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d2 > 0.0d) {
            this.degreesOfFreedom = d2;
            this.solverAbsoluteAccuracy = d3;
            this.factor = (Gamma.logGamma((1.0d + d2) / 2.0d) - ((FastMath.log(3.141592653589793d) + FastMath.log(d2)) * 0.5d)) - Gamma.logGamma(d2 / 2.0d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.DEGREES_OF_FREEDOM, Double.valueOf(d2));
    }
}
