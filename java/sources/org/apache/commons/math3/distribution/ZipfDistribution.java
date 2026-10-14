package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ZipfDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = -140627372283420404L;
    private final double exponent;
    private final int numberOfElements;
    private double numericalMean;
    private boolean numericalMeanIsCalculated;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private transient ZipfRejectionInversionSampler sampler;

    static final class ZipfRejectionInversionSampler {
        private final double exponent;
        private final double hIntegralNumberOfElements;
        private final int numberOfElements;
        private final double hIntegralX1 = hIntegral(1.5d) - 1.0d;
        private final double s = 2.0d - hIntegralInverse(hIntegral(2.5d) - h(2.0d));

        ZipfRejectionInversionSampler(int i, double d2) {
            this.exponent = d2;
            this.numberOfElements = i;
            this.hIntegralNumberOfElements = hIntegral(((double) i) + 0.5d);
        }

        private double h(double d2) {
            return FastMath.exp((-this.exponent) * FastMath.log(d2));
        }

        private double hIntegral(double d2) {
            double dLog = FastMath.log(d2);
            return helper2((1.0d - this.exponent) * dLog) * dLog;
        }

        private double hIntegralInverse(double d2) {
            double d3 = (1.0d - this.exponent) * d2;
            if (d3 < -1.0d) {
                d3 = -1.0d;
            }
            return FastMath.exp(helper1(d3) * d2);
        }

        static double helper1(double d2) {
            return FastMath.abs(d2) > 1.0E-8d ? FastMath.log1p(d2) / d2 : 1.0d - (d2 * (0.5d - ((0.3333333333333333d - (0.25d * d2)) * d2)));
        }

        static double helper2(double d2) {
            return FastMath.abs(d2) > 1.0E-8d ? FastMath.expm1(d2) / d2 : (0.5d * d2 * ((0.3333333333333333d * d2 * ((d2 * 0.25d) + 1.0d)) + 1.0d)) + 1.0d;
        }

        int sample(RandomGenerator randomGenerator) {
            double dNextDouble;
            int i;
            double d2;
            do {
                dNextDouble = this.hIntegralNumberOfElements + (randomGenerator.nextDouble() * (this.hIntegralX1 - this.hIntegralNumberOfElements));
                double dHIntegralInverse = hIntegralInverse(dNextDouble);
                i = (int) (dHIntegralInverse + 0.5d);
                if (i < 1) {
                    i = 1;
                } else {
                    int i2 = this.numberOfElements;
                    if (i > i2) {
                        i = i2;
                    }
                }
                d2 = i;
                if (d2 - dHIntegralInverse <= this.s) {
                    break;
                }
            } while (dNextDouble < hIntegral(0.5d + d2) - h(d2));
            return i;
        }
    }

    public ZipfDistribution(int i, double d2) {
        this(new Well19937c(), i, d2);
    }

    private double generalizedHarmonic(int i, double d2) {
        double dPow = 0.0d;
        while (i > 0) {
            dPow += 1.0d / FastMath.pow(i, d2);
            i--;
        }
        return dPow;
    }

    protected double calculateNumericalMean() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        return generalizedHarmonic(numberOfElements, exponent - 1.0d) / generalizedHarmonic(numberOfElements, exponent);
    }

    protected double calculateNumericalVariance() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        double dGeneralizedHarmonic = generalizedHarmonic(numberOfElements, exponent - 2.0d);
        double dGeneralizedHarmonic2 = generalizedHarmonic(numberOfElements, exponent - 1.0d);
        double dGeneralizedHarmonic3 = generalizedHarmonic(numberOfElements, exponent);
        return (dGeneralizedHarmonic / dGeneralizedHarmonic3) - ((dGeneralizedHarmonic2 * dGeneralizedHarmonic2) / (dGeneralizedHarmonic3 * dGeneralizedHarmonic3));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i <= 0) {
            return 0.0d;
        }
        if (i >= this.numberOfElements) {
            return 1.0d;
        }
        return generalizedHarmonic(i, this.exponent) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    public double getExponent() {
        return this.exponent;
    }

    public int getNumberOfElements() {
        return this.numberOfElements;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        if (!this.numericalMeanIsCalculated) {
            this.numericalMean = calculateNumericalMean();
            this.numericalMeanIsCalculated = true;
        }
        return this.numericalMean;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        return 1;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        return getNumberOfElements();
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        if (i <= 0 || i > this.numberOfElements) {
            return Double.NEGATIVE_INFINITY;
        }
        double d2 = -FastMath.log(i);
        double d3 = this.exponent;
        return (d2 * d3) - FastMath.log(generalizedHarmonic(this.numberOfElements, d3));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        if (i <= 0 || i > this.numberOfElements) {
            return 0.0d;
        }
        return (1.0d / FastMath.pow(i, this.exponent)) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution, org.apache.commons.math3.distribution.IntegerDistribution
    public int sample() {
        if (this.sampler == null) {
            this.sampler = new ZipfRejectionInversionSampler(this.numberOfElements, this.exponent);
        }
        return this.sampler.sample(this.random);
    }

    public ZipfDistribution(RandomGenerator randomGenerator, int i, double d2) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalMean = Double.NaN;
        this.numericalMeanIsCalculated = false;
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DIMENSION, Integer.valueOf(i));
        }
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.EXPONENT, Double.valueOf(d2));
        }
        this.numberOfElements = i;
        this.exponent = d2;
    }
}
