package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class GammaDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20120524;
    private final double densityPrefactor1;
    private final double densityPrefactor2;
    private final double logDensityPrefactor1;
    private final double logDensityPrefactor2;
    private final double maxLogY;
    private final double minY;
    private final double scale;
    private final double shape;
    private final double shiftedShape;
    private final double solverAbsoluteAccuracy;

    public GammaDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(d2, d3, 1.0E-9d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        return Gamma.regularizedGammaP(this.shape, d2 / this.scale);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        if (d2 < 0.0d) {
            return 0.0d;
        }
        double d3 = d2 / this.scale;
        if (d3 > this.minY && FastMath.log(d3) < this.maxLogY) {
            return this.densityPrefactor1 * FastMath.exp(-d3) * FastMath.pow(d3, this.shape - 1.0d);
        }
        double d4 = this.shiftedShape;
        double d5 = (d3 - d4) / d4;
        return (this.densityPrefactor2 / d2) * FastMath.exp((((-d3) * 5.2421875d) / this.shiftedShape) + 4.7421875d + (this.shape * (FastMath.log1p(d5) - d5)));
    }

    @Deprecated
    public double getAlpha() {
        return this.shape;
    }

    @Deprecated
    public double getBeta() {
        return this.scale;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return this.shape * this.scale;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d2 = this.shape;
        double d3 = this.scale;
        return d2 * d3 * d3;
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
        if (d3 > this.minY && FastMath.log(d3) < this.maxLogY) {
            return (this.logDensityPrefactor1 - d3) + (FastMath.log(d3) * (this.shape - 1.0d));
        }
        double d4 = this.shiftedShape;
        double d5 = (d3 - d4) / d4;
        return (this.logDensityPrefactor2 - FastMath.log(d2)) + (((-d3) * 5.2421875d) / this.shiftedShape) + 4.7421875d + (this.shape * (FastMath.log1p(d5) - d5));
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        double d2 = this.shape;
        if (d2 < 1.0d) {
            while (true) {
                double dNextDouble = this.random.nextDouble();
                double d3 = this.shape;
                double d4 = (d3 / 2.718281828459045d) + 1.0d;
                double d5 = dNextDouble * d4;
                if (d5 <= 1.0d) {
                    double dPow = FastMath.pow(d5, 1.0d / d3);
                    if (this.random.nextDouble() <= FastMath.exp(-dPow)) {
                        return this.scale * dPow;
                    }
                } else {
                    double dLog = FastMath.log((d4 - d5) / d3) * (-1.0d);
                    if (this.random.nextDouble() <= FastMath.pow(dLog, this.shape - 1.0d)) {
                        return this.scale * dLog;
                    }
                }
            }
        } else {
            double d6 = d2 - 0.3333333333333333d;
            double dSqrt = 1.0d / (FastMath.sqrt(d6) * 3.0d);
            while (true) {
                double dNextGaussian = this.random.nextGaussian();
                double d7 = (dSqrt * dNextGaussian) + 1.0d;
                double d8 = d7 * d7 * d7;
                if (d8 > 0.0d) {
                    double d9 = dNextGaussian * dNextGaussian;
                    double dNextDouble2 = this.random.nextDouble();
                    if (dNextDouble2 < 1.0d - ((0.0331d * d9) * d9)) {
                        return this.scale * d6 * d8;
                    }
                    if (FastMath.log(dNextDouble2) < (d9 * 0.5d) + (((1.0d - d8) + FastMath.log(d8)) * d6)) {
                        return this.scale * d6 * d8;
                    }
                }
            }
        }
    }

    public GammaDistribution(double d2, double d3, double d4) throws NotStrictlyPositiveException {
        this(new Well19937c(), d2, d3, d4);
    }

    public GammaDistribution(RandomGenerator randomGenerator, double d2, double d3) throws NotStrictlyPositiveException {
        this(randomGenerator, d2, d3, 1.0E-9d);
    }

    public GammaDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d2));
        }
        if (d3 > 0.0d) {
            this.shape = d2;
            this.scale = d3;
            this.solverAbsoluteAccuracy = d4;
            double d5 = d2 + 4.7421875d;
            double d6 = d5 + 0.5d;
            this.shiftedShape = d6;
            double d7 = 2.718281828459045d / (6.283185307179586d * d6);
            double dSqrt = (FastMath.sqrt(d7) * d2) / Gamma.lanczos(d2);
            this.densityPrefactor2 = dSqrt;
            double dLog = (FastMath.log(d2) + (FastMath.log(d7) * 0.5d)) - FastMath.log(Gamma.lanczos(d2));
            this.logDensityPrefactor2 = dLog;
            this.densityPrefactor1 = (dSqrt / d3) * FastMath.pow(d6, -d2) * FastMath.exp(d5);
            this.logDensityPrefactor1 = ((dLog - FastMath.log(d3)) - (FastMath.log(d6) * d2)) + d2 + 4.7421875d;
            this.minY = d5 - FastMath.log(Double.MAX_VALUE);
            this.maxLogY = FastMath.log(Double.MAX_VALUE) / (d2 - 1.0d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d3));
    }
}
