package org.apache.commons.math3.distribution;

import java.io.Serializable;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomDataImpl;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractRealDistribution implements RealDistribution, Serializable {
    public static final double SOLVER_DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private static final long serialVersionUID = -38038050983108802L;
    protected final RandomGenerator random;

    @Deprecated
    protected RandomDataImpl randomData;
    private double solverAbsoluteAccuracy;

    @Deprecated
    protected AbstractRealDistribution() {
        this.randomData = new RandomDataImpl();
        this.solverAbsoluteAccuracy = 1.0E-6d;
        this.random = null;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    @Deprecated
    public double cumulativeProbability(double d2, double d3) throws NumberIsTooLargeException {
        return probability(d2, d3);
    }

    protected double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(final double d2) throws OutOfRangeException {
        double d3;
        if (d2 >= 0.0d) {
            double d4 = 1.0d;
            if (d2 <= 1.0d) {
                double supportLowerBound = getSupportLowerBound();
                if (d2 == 0.0d) {
                    return supportLowerBound;
                }
                double supportUpperBound = getSupportUpperBound();
                if (d2 == 1.0d) {
                    return supportUpperBound;
                }
                double numericalMean = getNumericalMean();
                double dSqrt = FastMath.sqrt(getNumericalVariance());
                boolean z = (Double.isInfinite(numericalMean) || Double.isNaN(numericalMean) || Double.isInfinite(dSqrt) || Double.isNaN(dSqrt)) ? false : true;
                if (supportLowerBound == Double.NEGATIVE_INFINITY) {
                    if (z) {
                        supportLowerBound = numericalMean - (FastMath.sqrt((1.0d - d2) / d2) * dSqrt);
                    } else {
                        supportLowerBound = -1.0d;
                        while (cumulativeProbability(supportLowerBound) >= d2) {
                            supportLowerBound *= 2.0d;
                        }
                    }
                }
                if (supportUpperBound != Double.POSITIVE_INFINITY) {
                    d3 = supportUpperBound;
                } else if (z) {
                    supportUpperBound = numericalMean + (dSqrt * FastMath.sqrt(d2 / (1.0d - d2)));
                    d3 = supportUpperBound;
                } else {
                    while (cumulativeProbability(d4) < d2) {
                        d4 *= 2.0d;
                    }
                    d3 = d4;
                }
                double dSolve = UnivariateSolverUtils.solve(new UnivariateFunction() { // from class: org.apache.commons.math3.distribution.AbstractRealDistribution.1
                    @Override // org.apache.commons.math3.analysis.UnivariateFunction
                    public double value(double d5) {
                        return AbstractRealDistribution.this.cumulativeProbability(d5) - d2;
                    }
                }, supportLowerBound, d3, getSolverAbsoluteAccuracy());
                if (!isSupportConnected()) {
                    double solverAbsoluteAccuracy = getSolverAbsoluteAccuracy();
                    double d5 = dSolve - solverAbsoluteAccuracy;
                    if (d5 >= getSupportLowerBound()) {
                        double dCumulativeProbability = cumulativeProbability(dSolve);
                        if (cumulativeProbability(d5) == dCumulativeProbability) {
                            while (dSolve - supportLowerBound > solverAbsoluteAccuracy) {
                                double d6 = (supportLowerBound + dSolve) * 0.5d;
                                if (cumulativeProbability(d6) < dCumulativeProbability) {
                                    supportLowerBound = d6;
                                } else {
                                    dSolve = d6;
                                }
                            }
                        }
                    }
                }
                return dSolve;
            }
        }
        throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
    }

    public double logDensity(double d2) {
        return FastMath.log(density(d2));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double probability(double d2) {
        return 0.0d;
    }

    public double probability(double d2, double d3) {
        if (d2 <= d3) {
            return cumulativeProbability(d3) - cumulativeProbability(d2);
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Double.valueOf(d2), Double.valueOf(d3), true);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public void reseedRandomGenerator(long j) {
        this.random.setSeed(j);
        this.randomData.reSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return inverseCumulativeProbability(this.random.nextDouble());
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double[] sample(int i) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = sample();
        }
        return dArr;
    }

    protected AbstractRealDistribution(RandomGenerator randomGenerator) {
        this.randomData = new RandomDataImpl();
        this.solverAbsoluteAccuracy = 1.0E-6d;
        this.random = randomGenerator;
    }
}
