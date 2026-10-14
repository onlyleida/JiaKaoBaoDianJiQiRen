package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class TriangularDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20120112;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f16179a;
    private final double b;
    private final double c;
    private final double solverAbsoluteAccuracy;

    public TriangularDistribution(double d2, double d3, double d4) throws NumberIsTooSmallException, NumberIsTooLargeException {
        this(new Well19937c(), d2, d3, d4);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        double d3 = this.f16179a;
        if (d2 < d3) {
            return 0.0d;
        }
        if (d3 <= d2) {
            double d4 = this.c;
            if (d2 < d4) {
                return ((d2 - d3) * (d2 - d3)) / ((this.b - d3) * (d4 - d3));
            }
        }
        double d5 = this.c;
        if (d2 == d5) {
            return (d5 - d3) / (this.b - d3);
        }
        if (d5 >= d2) {
            return 1.0d;
        }
        double d6 = this.b;
        if (d2 <= d6) {
            return 1.0d - (((d6 - d2) * (d6 - d2)) / ((d6 - d3) * (d6 - d5)));
        }
        return 1.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        double d3 = this.f16179a;
        if (d2 < d3) {
            return 0.0d;
        }
        if (d3 <= d2) {
            double d4 = this.c;
            if (d2 < d4) {
                return ((d2 - d3) * 2.0d) / ((this.b - d3) * (d4 - d3));
            }
        }
        double d5 = this.c;
        if (d2 == d5) {
            return 2.0d / (this.b - d3);
        }
        if (d5 < d2) {
            double d6 = this.b;
            if (d2 <= d6) {
                return ((d6 - d2) * 2.0d) / ((d6 - d3) * (d6 - d5));
            }
        }
        return 0.0d;
    }

    public double getMode() {
        return this.c;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return ((this.f16179a + this.b) + this.c) / 3.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d2 = this.f16179a;
        double d3 = this.b;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = this.c;
        return ((((d4 + (d5 * d5)) - (d2 * d3)) - (d2 * d5)) - (d3 * d5)) / 18.0d;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    protected double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.f16179a;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return this.b;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d2) throws OutOfRangeException {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d2 == 0.0d) {
            return this.f16179a;
        }
        if (d2 == 1.0d) {
            return this.b;
        }
        double d3 = this.c;
        double d4 = this.f16179a;
        double d5 = this.b;
        return d2 < (d3 - d4) / (d5 - d4) ? d4 + FastMath.sqrt(d2 * (d5 - d4) * (d3 - d4)) : d5 - FastMath.sqrt(((1.0d - d2) * (d5 - d4)) * (d5 - d3));
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
        return true;
    }

    public TriangularDistribution(RandomGenerator randomGenerator, double d2, double d3, double d4) throws NumberIsTooSmallException, NumberIsTooLargeException {
        super(randomGenerator);
        if (d2 >= d4) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d2), Double.valueOf(d4), false);
        }
        if (d3 < d2) {
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_TOO_SMALL, Double.valueOf(d3), Double.valueOf(d2), true);
        }
        if (d3 > d4) {
            throw new NumberIsTooLargeException(LocalizedFormats.NUMBER_TOO_LARGE, Double.valueOf(d3), Double.valueOf(d4), true);
        }
        this.f16179a = d2;
        this.c = d3;
        this.b = d4;
        this.solverAbsoluteAccuracy = FastMath.max(FastMath.ulp(d2), FastMath.ulp(d4));
    }
}
