package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ExponentialDecayFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f16189a;
    private final double oneOverB;

    public ExponentialDecayFunction(double d2, double d3, long j) {
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d2));
        }
        if (d3 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d3));
        }
        if (d3 >= d2) {
            throw new NumberIsTooLargeException(Double.valueOf(d3), Double.valueOf(d2), false);
        }
        if (j <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        this.f16189a = d2;
        this.oneOverB = (-FastMath.log(d3 / d2)) / j;
    }

    public double value(long j) {
        return this.f16189a * FastMath.exp((-j) * this.oneOverB);
    }
}
