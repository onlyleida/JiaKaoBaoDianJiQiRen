package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class WeibullDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 8589540077390120676L;
    private double numericalMean;
    private boolean numericalMeanIsCalculated;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private final double scale;
    private final double shape;
    private final double solverAbsoluteAccuracy;

    public WeibullDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(d2, d3, 1.0E-9d);
    }

    protected double calculateNumericalMean() {
        return getScale() * FastMath.exp(Gamma.logGamma((1.0d / getShape()) + 1.0d));
    }

    protected double calculateNumericalVariance() {
        double shape = getShape();
        double scale = getScale();
        double numericalMean = getNumericalMean();
        return ((scale * scale) * FastMath.exp(Gamma.logGamma((2.0d / shape) + 1.0d))) - (numericalMean * numericalMean);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        return 1.0d - FastMath.exp(-FastMath.pow(d2 / this.scale, this.shape));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        if (d2 < 0.0d) {
            return 0.0d;
        }
        double d3 = d2 / this.scale;
        double dPow = FastMath.pow(d3, this.shape - 1.0d);
        return (this.shape / this.scale) * dPow * FastMath.exp(-(d3 * dPow));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        if (!this.numericalMeanIsCalculated) {
            this.numericalMean = calculateNumericalMean();
            this.numericalMeanIsCalculated = true;
        }
        return this.numericalMean;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
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
        return 0.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d2) {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), Double.valueOf(0.0d), Double.valueOf(1.0d));
        }
        if (d2 == 0.0d) {
            return 0.0d;
        }
        if (d2 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return this.scale * FastMath.pow(-FastMath.log1p(-d2), 1.0d / this.shape);
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
        if (d2 < 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        double d3 = d2 / this.scale;
        double dLog = FastMath.log(d3) * (this.shape - 1.0d);
        return (FastMath.log(this.shape / this.scale) + dLog) - (FastMath.exp(dLog) * d3);
    }

    public WeibullDistribution(double d2, double d3, double d4) {
        this(new Well19937c(), d2, d3, d4);
    }

    public WeibullDistribution(RandomGenerator randomGenerator, double d2, double d3) throws NotStrictlyPositiveException {
        this(randomGenerator, d2, d3, 1.0E-9d);
    }

    public WeibullDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalMean = Double.NaN;
        this.numericalMeanIsCalculated = false;
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d2));
        }
        if (d3 > 0.0d) {
            this.scale = d3;
            this.shape = d2;
            this.solverAbsoluteAccuracy = d4;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d3));
    }
}
