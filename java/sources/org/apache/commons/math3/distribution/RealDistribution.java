package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;

/* JADX INFO: loaded from: classes6.dex */
public interface RealDistribution {
    double cumulativeProbability(double d2);

    @Deprecated
    double cumulativeProbability(double d2, double d3) throws NumberIsTooLargeException;

    double density(double d2);

    double getNumericalMean();

    double getNumericalVariance();

    double getSupportLowerBound();

    double getSupportUpperBound();

    double inverseCumulativeProbability(double d2) throws OutOfRangeException;

    boolean isSupportConnected();

    @Deprecated
    boolean isSupportLowerBoundInclusive();

    @Deprecated
    boolean isSupportUpperBoundInclusive();

    double probability(double d2);

    void reseedRandomGenerator(long j);

    double sample();

    double[] sample(int i);
}
