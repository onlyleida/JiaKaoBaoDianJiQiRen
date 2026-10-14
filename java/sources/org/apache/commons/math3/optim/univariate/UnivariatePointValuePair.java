package org.apache.commons.math3.optim.univariate;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public class UnivariatePointValuePair implements Serializable {
    private static final long serialVersionUID = 1003888396256744753L;
    private final double point;
    private final double value;

    public UnivariatePointValuePair(double d2, double d3) {
        this.point = d2;
        this.value = d3;
    }

    public double getPoint() {
        return this.point;
    }

    public double getValue() {
        return this.value;
    }
}
