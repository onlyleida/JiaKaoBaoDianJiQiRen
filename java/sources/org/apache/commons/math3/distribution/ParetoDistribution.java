package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ParetoDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20130424;
    private final double scale;
    private final double shape;
    private final double solverAbsoluteAccuracy;

    public ParetoDistribution() {
        this(1.0d, 1.0d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double d3 = this.scale;
        if (d2 <= d3) {
            return 0.0d;
        }
        return 1.0d - FastMath.pow(d3 / d2, this.shape);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        double d3 = this.scale;
        if (d2 < d3) {
            return 0.0d;
        }
        return (FastMath.pow(d3, this.shape) / FastMath.pow(d2, this.shape + 1.0d)) * this.shape;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        double d2 = this.shape;
        if (d2 <= 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return (this.scale * d2) / (d2 - 1.0d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d2 = this.shape;
        if (d2 <= 2.0d) {
            return Double.POSITIVE_INFINITY;
        }
        double d3 = d2 - 1.0d;
        double d4 = this.scale;
        return (((d4 * d4) * d2) / (d3 * d3)) / (d2 - 2.0d);
    }

    public double getScale() {
        return this.scale;
    }

    public double getShape() {
        return this.shape;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    protected double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.scale;
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
        double d3 = this.scale;
        if (d2 < d3) {
            return Double.NEGATIVE_INFINITY;
        }
        double dLog = FastMath.log(d3) * this.shape;
        double dLog2 = FastMath.log(d2);
        double d4 = this.shape;
        return (dLog - (dLog2 * (1.0d + d4))) + FastMath.log(d4);
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return this.scale / FastMath.pow(this.random.nextDouble(), 1.0d / this.shape);
    }

    public ParetoDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(d2, d3, 1.0E-9d);
    }

    public ParetoDistribution(double d2, double d3, double d4) throws NotStrictlyPositiveException {
        this(new Well19937c(), d2, d3, d4);
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    @Deprecated
    public double cumulativeProbability(double d2, double d3) throws NumberIsTooLargeException {
        return probability(d2, d3);
    }

    public ParetoDistribution(RandomGenerator randomGenerator, double d2, double d3) throws NotStrictlyPositiveException {
        this(randomGenerator, d2, d3, 1.0E-9d);
    }

    public ParetoDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d2));
        }
        if (d3 > 0.0d) {
            this.scale = d2;
            this.shape = d3;
            this.solverAbsoluteAccuracy = d4;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d3));
    }
}
