package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.optim.OptimizationData;

/* JADX INFO: loaded from: classes6.dex */
public class SearchInterval implements OptimizationData {
    private final double lower;
    private final double start;
    private final double upper;

    public SearchInterval(double d2, double d3, double d4) {
        if (d2 >= d3) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(d3), false);
        }
        if (d4 < d2 || d4 > d3) {
            throw new OutOfRangeException(Double.valueOf(d4), Double.valueOf(d2), Double.valueOf(d3));
        }
        this.lower = d2;
        this.upper = d3;
        this.start = d4;
    }

    public double getMax() {
        return this.upper;
    }

    public double getMin() {
        return this.lower;
    }

    public double getStartValue() {
        return this.start;
    }

    public SearchInterval(double d2, double d3) {
        this(d2, d3, (d2 + d3) * 0.5d);
    }
}
