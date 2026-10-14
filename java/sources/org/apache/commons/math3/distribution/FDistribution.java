package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class FDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -8516354193418641566L;
    private final double denominatorDegreesOfFreedom;
    private final double numeratorDegreesOfFreedom;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private final double solverAbsoluteAccuracy;

    public FDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(d2, d3, 1.0E-9d);
    }

    protected double calculateNumericalVariance() {
        double denominatorDegreesOfFreedom = getDenominatorDegreesOfFreedom();
        if (denominatorDegreesOfFreedom <= 4.0d) {
            return Double.NaN;
        }
        double numeratorDegreesOfFreedom = getNumeratorDegreesOfFreedom();
        double d2 = denominatorDegreesOfFreedom - 2.0d;
        return (((denominatorDegreesOfFreedom * denominatorDegreesOfFreedom) * 2.0d) * ((numeratorDegreesOfFreedom + denominatorDegreesOfFreedom) - 2.0d)) / ((numeratorDegreesOfFreedom * (d2 * d2)) * (denominatorDegreesOfFreedom - 4.0d));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        double d3 = this.numeratorDegreesOfFreedom;
        double d4 = this.denominatorDegreesOfFreedom;
        double d5 = d2 * d3;
        return Beta.regularizedBeta(d5 / (d4 + d5), d3 * 0.5d, d4 * 0.5d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        return FastMath.exp(logDensity(d2));
    }

    public double getDenominatorDegreesOfFreedom() {
        return this.denominatorDegreesOfFreedom;
    }

    public double getNumeratorDegreesOfFreedom() {
        return this.numeratorDegreesOfFreedom;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        double denominatorDegreesOfFreedom = getDenominatorDegreesOfFreedom();
        if (denominatorDegreesOfFreedom > 2.0d) {
            return denominatorDegreesOfFreedom / (denominatorDegreesOfFreedom - 2.0d);
        }
        return Double.NaN;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
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
        return false;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double logDensity(double d2) {
        double d3 = this.numeratorDegreesOfFreedom / 2.0d;
        double d4 = this.denominatorDegreesOfFreedom / 2.0d;
        double dLog = FastMath.log(d2);
        double dLog2 = FastMath.log(this.numeratorDegreesOfFreedom);
        double dLog3 = FastMath.log(this.denominatorDegreesOfFreedom);
        double dLog4 = FastMath.log((this.numeratorDegreesOfFreedom * d2) + this.denominatorDegreesOfFreedom);
        return ((((((dLog2 * d3) + (d3 * dLog)) - dLog) + (dLog3 * d4)) - (d3 * dLog4)) - (dLog4 * d4)) - Beta.logBeta(d3, d4);
    }

    public FDistribution(double d2, double d3, double d4) throws NotStrictlyPositiveException {
        this(new Well19937c(), d2, d3, d4);
    }

    public FDistribution(RandomGenerator randomGenerator, double d2, double d3) throws NotStrictlyPositiveException {
        this(randomGenerator, d2, d3, 1.0E-9d);
    }

    public FDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DEGREES_OF_FREEDOM, Double.valueOf(d2));
        }
        if (d3 > 0.0d) {
            this.numeratorDegreesOfFreedom = d2;
            this.denominatorDegreesOfFreedom = d3;
            this.solverAbsoluteAccuracy = d4;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.DEGREES_OF_FREEDOM, Double.valueOf(d3));
    }
}
