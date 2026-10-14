package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class BetaDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -1221965979403477668L;
    private final double alpha;
    private final double beta;
    private final double solverAbsoluteAccuracy;
    private double z;

    private static final class ChengBetaSampler {
        private ChengBetaSampler() {
        }

        private static double algorithmBB(RandomGenerator randomGenerator, double d2, double d3, double d4) {
            double dExp;
            double d5;
            double dLog;
            double d6 = d3 + d4;
            double dSqrt = FastMath.sqrt((d6 - 2.0d) / (((2.0d * d3) * d4) - d6));
            double d7 = (1.0d / dSqrt) + d3;
            do {
                double dNextDouble = randomGenerator.nextDouble();
                double dNextDouble2 = randomGenerator.nextDouble();
                double dLog2 = (FastMath.log(dNextDouble) - FastMath.log1p(-dNextDouble)) * dSqrt;
                dExp = FastMath.exp(dLog2) * d3;
                double d8 = dNextDouble * dNextDouble * dNextDouble2;
                d5 = (dLog2 * d7) - 1.3862944d;
                double d9 = (d3 + d5) - dExp;
                if (d9 + 2.609438d >= 5.0d * d8) {
                    break;
                }
                dLog = FastMath.log(d8);
                if (d9 >= dLog) {
                    break;
                }
            } while (d5 + ((FastMath.log(d6) - FastMath.log(d4 + dExp)) * d6) < dLog);
            double dMin = FastMath.min(dExp, Double.MAX_VALUE);
            return Precision.equals(d3, d2) ? dMin / (d4 + dMin) : d4 / (d4 + dMin);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:26:0x0096 A[SYNTHETIC] */
        private static double algorithmBC(RandomGenerator randomGenerator, double d2, double d3, double d4) {
            double dExp;
            double dLog;
            double dExp2;
            double d5 = d3 + d4;
            double d6 = 1.0d / d4;
            double d7 = (1.0d + d3) - d4;
            double d8 = (((0.0416667d * d4) + 0.0138889d) * d7) / ((d3 * d6) - 0.777778d);
            double d9 = (((0.25d / d7) + 0.5d) * d4) + 0.25d;
            while (true) {
                double dNextDouble = randomGenerator.nextDouble();
                double dNextDouble2 = randomGenerator.nextDouble();
                double d10 = dNextDouble * dNextDouble2;
                double d11 = dNextDouble * d10;
                if (dNextDouble < 0.5d) {
                    if (((dNextDouble2 * 0.25d) + d11) - d10 >= d8) {
                        continue;
                    } else {
                        dLog = (FastMath.log(dNextDouble) - FastMath.log1p(-dNextDouble)) * d6;
                        dExp2 = FastMath.exp(dLog) * d3;
                        if ((((FastMath.log(d5) - FastMath.log(d4 + dExp2)) + dLog) * d5) - 1.3862944d >= FastMath.log(d11)) {
                            dExp = dExp2;
                            break;
                        }
                    }
                } else {
                    if (d11 <= 0.25d) {
                        dExp = FastMath.exp(d6 * (FastMath.log(dNextDouble) - FastMath.log1p(-dNextDouble))) * d3;
                        break;
                    }
                    if (d11 >= d9) {
                        continue;
                    } else {
                        dLog = (FastMath.log(dNextDouble) - FastMath.log1p(-dNextDouble)) * d6;
                        dExp2 = FastMath.exp(dLog) * d3;
                        if ((((FastMath.log(d5) - FastMath.log(d4 + dExp2)) + dLog) * d5) - 1.3862944d >= FastMath.log(d11)) {
                            dExp = dExp2;
                            break;
                        }
                    }
                }
            }
            double dMin = FastMath.min(dExp, Double.MAX_VALUE);
            return Precision.equals(d3, d2) ? dMin / (d4 + dMin) : d4 / (d4 + dMin);
        }

        static double sample(RandomGenerator randomGenerator, double d2, double d3) {
            double dMin = FastMath.min(d2, d3);
            double dMax = FastMath.max(d2, d3);
            return dMin > 1.0d ? algorithmBB(randomGenerator, d2, dMin, dMax) : algorithmBC(randomGenerator, d2, dMax, dMin);
        }
    }

    public BetaDistribution(double d2, double d3) {
        this(d2, d3, 1.0E-9d);
    }

    private void recomputeZ() {
        if (Double.isNaN(this.z)) {
            this.z = (Gamma.logGamma(this.alpha) + Gamma.logGamma(this.beta)) - Gamma.logGamma(this.alpha + this.beta);
        }
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        if (d2 <= 0.0d) {
            return 0.0d;
        }
        if (d2 >= 1.0d) {
            return 1.0d;
        }
        return Beta.regularizedBeta(d2, this.alpha, this.beta);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        double dLogDensity = logDensity(d2);
        if (dLogDensity == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(dLogDensity);
    }

    public double getAlpha() {
        return this.alpha;
    }

    public double getBeta() {
        return this.beta;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        double alpha = getAlpha();
        return alpha / (getBeta() + alpha);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double alpha = getAlpha();
        double beta = getBeta();
        double d2 = alpha + beta;
        return (alpha * beta) / ((d2 * d2) * (d2 + 1.0d));
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
        return 1.0d;
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
        recomputeZ();
        if (d2 < 0.0d || d2 > 1.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d2 == 0.0d) {
            if (this.alpha >= 1.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            throw new NumberIsTooSmallException(LocalizedFormats.CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA, Double.valueOf(this.alpha), 1, false);
        }
        if (d2 == 1.0d) {
            if (this.beta >= 1.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            throw new NumberIsTooSmallException(LocalizedFormats.CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA, Double.valueOf(this.beta), 1, false);
        }
        return (((this.alpha - 1.0d) * FastMath.log(d2)) + ((this.beta - 1.0d) * FastMath.log1p(-d2))) - this.z;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return ChengBetaSampler.sample(this.random, this.alpha, this.beta);
    }

    public BetaDistribution(double d2, double d3, double d4) {
        this(new Well19937c(), d2, d3, d4);
    }

    public BetaDistribution(RandomGenerator randomGenerator, double d2, double d3) {
        this(randomGenerator, d2, d3, 1.0E-9d);
    }

    public BetaDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) {
        super(randomGenerator);
        this.alpha = d2;
        this.beta = d3;
        this.z = Double.NaN;
        this.solverAbsoluteAccuracy = d4;
    }
}
