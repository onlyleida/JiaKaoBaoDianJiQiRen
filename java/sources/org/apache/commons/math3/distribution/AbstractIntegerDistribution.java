package org.apache.commons.math3.distribution;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomDataImpl;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractIntegerDistribution implements IntegerDistribution, Serializable {
    private static final long serialVersionUID = -1146319659338487221L;
    protected final RandomGenerator random;

    @Deprecated
    protected final RandomDataImpl randomData;

    @Deprecated
    protected AbstractIntegerDistribution() {
        this.randomData = new RandomDataImpl();
        this.random = null;
    }

    private double checkedCumulativeProbability(int i) throws MathInternalError {
        double dCumulativeProbability = cumulativeProbability(i);
        if (Double.isNaN(dCumulativeProbability)) {
            throw new MathInternalError(LocalizedFormats.DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN, Integer.valueOf(i));
        }
        return dCumulativeProbability;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i, int i2) throws NumberIsTooLargeException {
        if (i2 >= i) {
            return cumulativeProbability(i2) - cumulativeProbability(i);
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Integer.valueOf(i), Integer.valueOf(i2), true);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int inverseCumulativeProbability(double d2) throws OutOfRangeException {
        boolean z = false;
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        int supportLowerBound = getSupportLowerBound();
        if (d2 == 0.0d) {
            return supportLowerBound;
        }
        if (supportLowerBound != Integer.MIN_VALUE) {
            supportLowerBound--;
        } else if (checkedCumulativeProbability(supportLowerBound) >= d2) {
            return supportLowerBound;
        }
        int supportUpperBound = getSupportUpperBound();
        if (d2 == 1.0d) {
            return supportUpperBound;
        }
        double numericalMean = getNumericalMean();
        double dSqrt = FastMath.sqrt(getNumericalVariance());
        if (!Double.isInfinite(numericalMean) && !Double.isNaN(numericalMean) && !Double.isInfinite(dSqrt) && !Double.isNaN(dSqrt) && dSqrt != 0.0d) {
            z = true;
        }
        if (z) {
            double dSqrt2 = FastMath.sqrt((1.0d - d2) / d2);
            double d3 = numericalMean - (dSqrt2 * dSqrt);
            if (d3 > supportLowerBound) {
                supportLowerBound = ((int) FastMath.ceil(d3)) - 1;
            }
            double d4 = numericalMean + ((1.0d / dSqrt2) * dSqrt);
            if (d4 < supportUpperBound) {
                supportUpperBound = ((int) FastMath.ceil(d4)) - 1;
            }
        }
        return solveInverseCumulativeProbability(d2, supportLowerBound, supportUpperBound);
    }

    public double logProbability(int i) {
        return FastMath.log(probability(i));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public void reseedRandomGenerator(long j) {
        this.random.setSeed(j);
        this.randomData.reSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int sample() {
        return inverseCumulativeProbability(this.random.nextDouble());
    }

    protected int solveInverseCumulativeProbability(double d2, int i, int i2) {
        while (i + 1 < i2) {
            int i3 = (i + i2) / 2;
            if (i3 < i || i3 > i2) {
                i3 = ((i2 - i) / 2) + i;
            }
            if (checkedCumulativeProbability(i3) >= d2) {
                i2 = i3;
            } else {
                i = i3;
            }
        }
        return i2;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int[] sample(int i) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = sample();
        }
        return iArr;
    }

    protected AbstractIntegerDistribution(RandomGenerator randomGenerator) {
        this.randomData = new RandomDataImpl();
        this.random = randomGenerator;
    }
}
