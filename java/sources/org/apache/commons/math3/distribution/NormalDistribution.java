package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Erf;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class NormalDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final double SQRT2 = FastMath.sqrt(2.0d);
    private static final long serialVersionUID = 8589540077390120676L;
    private final double logStandardDeviationPlusHalfLog2Pi;
    private final double mean;
    private final double solverAbsoluteAccuracy;
    private final double standardDeviation;

    public NormalDistribution() {
        this(0.0d, 1.0d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double d3 = d2 - this.mean;
        double dAbs = FastMath.abs(d3);
        double d4 = this.standardDeviation;
        if (dAbs > 40.0d * d4) {
            return d3 < 0.0d ? 0.0d : 1.0d;
        }
        return Erf.erfc((-d3) / (d4 * SQRT2)) * 0.5d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        return FastMath.exp(logDensity(d2));
    }

    public double getMean() {
        return this.mean;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return getMean();
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double standardDeviation = getStandardDeviation();
        return standardDeviation * standardDeviation;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    protected double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    public double getStandardDeviation() {
        return this.standardDeviation;
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
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        return this.mean + (this.standardDeviation * SQRT2 * Erf.erfInv((d2 * 2.0d) - 1.0d));
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
        double d3 = (d2 - this.mean) / this.standardDeviation;
        return (((-0.5d) * d3) * d3) - this.logStandardDeviationPlusHalfLog2Pi;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double probability(double d2, double d3) throws NumberIsTooLargeException {
        if (d2 > d3) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Double.valueOf(d2), Double.valueOf(d3), true);
        }
        double d4 = this.standardDeviation * SQRT2;
        double d5 = this.mean;
        return Erf.erf((d2 - d5) / d4, (d3 - d5) / d4) * 0.5d;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return (this.standardDeviation * this.random.nextGaussian()) + this.mean;
    }

    public NormalDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(d2, d3, 1.0E-9d);
    }

    public NormalDistribution(double d2, double d3, double d4) throws NotStrictlyPositiveException {
        this(new Well19937c(), d2, d3, d4);
    }

    public NormalDistribution(RandomGenerator randomGenerator, double d2, double d3) throws NotStrictlyPositiveException {
        this(randomGenerator, d2, d3, 1.0E-9d);
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    @Deprecated
    public double cumulativeProbability(double d2, double d3) throws NumberIsTooLargeException {
        return probability(d2, d3);
    }

    public NormalDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d3 > 0.0d) {
            this.mean = d2;
            this.standardDeviation = d3;
            this.logStandardDeviationPlusHalfLog2Pi = FastMath.log(d3) + (FastMath.log(6.283185307179586d) * 0.5d);
            this.solverAbsoluteAccuracy = d4;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.STANDARD_DEVIATION, Double.valueOf(d3));
    }
}
