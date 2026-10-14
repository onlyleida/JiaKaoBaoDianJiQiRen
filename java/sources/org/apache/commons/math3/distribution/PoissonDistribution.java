package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class PoissonDistribution extends AbstractIntegerDistribution {
    public static final double DEFAULT_EPSILON = 1.0E-12d;
    public static final int DEFAULT_MAX_ITERATIONS = 10000000;
    private static final long serialVersionUID = -3349935121172596109L;
    private final double epsilon;
    private final ExponentialDistribution exponential;
    private final int maxIterations;
    private final double mean;
    private final NormalDistribution normal;

    public PoissonDistribution(double d2) throws NotStrictlyPositiveException {
        this(d2, 1.0E-12d, DEFAULT_MAX_ITERATIONS);
    }

    private long nextPoisson(double d2) {
        double d3;
        double dSample;
        double dCeil;
        double d4;
        double d5;
        PoissonDistribution poissonDistribution = this;
        long jNextPoisson = 0;
        double dNextDouble = 1.0d;
        if (d2 < 40.0d) {
            double dExp = FastMath.exp(-d2);
            while (jNextPoisson < 1000.0d * d2) {
                dNextDouble *= poissonDistribution.random.nextDouble();
                if (dNextDouble < dExp) {
                    break;
                }
                jNextPoisson++;
            }
            return jNextPoisson;
        }
        double dFloor = FastMath.floor(d2);
        double d6 = d2 - dFloor;
        double dLog = FastMath.log(dFloor);
        double dFactorialLog = CombinatoricsUtils.factorialLog((int) dFloor);
        jNextPoisson = d6 >= Double.MIN_VALUE ? poissonDistribution.nextPoisson(d6) : 0L;
        double dSqrt = FastMath.sqrt(FastMath.log(((32.0d * dFloor) / 3.141592653589793d) + 1.0d) * dFloor);
        double d7 = dSqrt / 2.0d;
        double d8 = dFloor * 2.0d;
        double d9 = d8 + dSqrt;
        double d10 = 1.0d / (8.0d * dFloor);
        double dSqrt2 = FastMath.sqrt(3.141592653589793d * d9) * FastMath.exp(d10);
        double d11 = d9 / dSqrt;
        long j = jNextPoisson;
        double dExp2 = FastMath.exp(((-dSqrt) * (dSqrt + 1.0d)) / d9) * d11;
        double d12 = dSqrt2 + dExp2 + 1.0d;
        double d13 = dSqrt2 / d12;
        double d14 = dExp2 / d12;
        while (true) {
            double dNextDouble2 = poissonDistribution.random.nextDouble();
            if (dNextDouble2 <= d13) {
                double dNextGaussian = poissonDistribution.random.nextGaussian();
                dSample = (FastMath.sqrt(dFloor + d7) * dNextGaussian) - 0.5d;
                if (dSample <= dSqrt) {
                    d3 = dFactorialLog;
                    if (dSample < (-dFloor)) {
                        dFactorialLog = d3;
                    } else {
                        double dFloor2 = dSample < 0.0d ? FastMath.floor(dSample) : FastMath.ceil(dSample);
                        d5 = ((-poissonDistribution.exponential.sample()) - ((dNextGaussian * dNextGaussian) / 2.0d)) + d10;
                        dCeil = dFloor2;
                        d4 = 1.0d;
                    }
                } else {
                    continue;
                }
            } else {
                d3 = dFactorialLog;
                if (dNextDouble2 > d13 + d14) {
                    break;
                }
                dSample = dSqrt + (poissonDistribution.exponential.sample() * d11);
                dCeil = FastMath.ceil(dSample);
                d4 = 1.0d;
                d5 = (-poissonDistribution.exponential.sample()) - (((dSample + 1.0d) * dSqrt) / d9);
            }
            int i = dSample < 0.0d ? 1 : 0;
            double d15 = dCeil + d4;
            double d16 = dSqrt;
            double d17 = (dCeil * d15) / d8;
            double d18 = d14;
            if (d5 >= (-d17) || i != 0) {
                double d19 = ((((dCeil * 2.0d) + 1.0d) / (6.0d * dFloor)) - 1.0d) * d17;
                if (d5 >= d19 - ((d17 * d17) / (((((double) i) * d15) + dFloor) * 3.0d))) {
                    if (d5 <= d19) {
                        double d20 = dCeil * dLog;
                        double d21 = dCeil + dFloor;
                        if (d5 < (d20 - CombinatoricsUtils.factorialLog((int) d21)) + d3) {
                            dFloor = d21;
                            break;
                        }
                    }
                    poissonDistribution = this;
                    d14 = d18;
                    dSqrt = d16;
                    dFactorialLog = d3;
                }
            }
            dFloor += dCeil;
            break;
        }
        return j + ((long) dFloor);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        if (i == Integer.MAX_VALUE) {
            return 1.0d;
        }
        return Gamma.regularizedGammaQ(((double) i) + 1.0d, this.mean, this.epsilon, this.maxIterations);
    }

    public double getMean() {
        return this.mean;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        return getMean();
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        return getMean();
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        return 0;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        return Integer.MAX_VALUE;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        if (i < 0 || i == Integer.MAX_VALUE) {
            return Double.NEGATIVE_INFINITY;
        }
        if (i == 0) {
            return -this.mean;
        }
        double d2 = i;
        return (((-SaddlePointExpansion.getStirlingError(d2)) - SaddlePointExpansion.getDeviancePart(d2, this.mean)) - (FastMath.log(6.283185307179586d) * 0.5d)) - (FastMath.log(d2) * 0.5d);
    }

    public double normalApproximateProbability(int i) {
        return this.normal.cumulativeProbability(((double) i) + 0.5d);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        double dLogProbability = logProbability(i);
        if (dLogProbability == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(dLogProbability);
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution, org.apache.commons.math3.distribution.IntegerDistribution
    public int sample() {
        return (int) FastMath.min(nextPoisson(this.mean), 2147483647L);
    }

    public PoissonDistribution(double d2, double d3, int i) throws NotStrictlyPositiveException {
        this(new Well19937c(), d2, d3, i);
    }

    public PoissonDistribution(RandomGenerator randomGenerator, double d2, double d3, int i) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d2 > 0.0d) {
            this.mean = d2;
            this.epsilon = d3;
            this.maxIterations = i;
            this.normal = new NormalDistribution(randomGenerator, d2, FastMath.sqrt(d2), 1.0E-9d);
            this.exponential = new ExponentialDistribution(randomGenerator, 1.0d, 1.0E-9d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.MEAN, Double.valueOf(d2));
    }

    public PoissonDistribution(double d2, double d3) throws NotStrictlyPositiveException {
        this(d2, d3, DEFAULT_MAX_ITERATIONS);
    }

    public PoissonDistribution(double d2, int i) {
        this(d2, 1.0E-12d, i);
    }
}
