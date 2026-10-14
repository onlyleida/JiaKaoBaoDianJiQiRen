package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.analysis.function.Logistic;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;

/* JADX INFO: loaded from: classes6.dex */
public class QuasiSigmoidDecayFunction {
    private final double scale;
    private final Logistic sigmoid;

    public QuasiSigmoidDecayFunction(double d2, double d3, long j) {
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d2));
        }
        if (d3 >= 0.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d3), 0, false);
        }
        if (j <= 1) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        Logistic logistic = new Logistic(d2, j, (4.0d * d3) / d2, 1.0d, 0.0d, 1.0d);
        this.sigmoid = logistic;
        this.scale = d2 / logistic.value(0.0d);
    }

    public double value(long j) {
        return this.scale * this.sigmoid.value(j);
    }
}
