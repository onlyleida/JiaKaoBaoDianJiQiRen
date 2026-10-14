package org.apache.commons.math3.optimization.fitting;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class WeightedObservedPoint implements Serializable {
    private static final long serialVersionUID = 5306874947404636157L;
    private final double weight;
    private final double x;
    private final double y;

    public WeightedObservedPoint(double d2, double d3, double d4) {
        this.weight = d2;
        this.x = d3;
        this.y = d4;
    }

    public double getWeight() {
        return this.weight;
    }

    public double getX() {
        return this.x;
    }

    public double getY() {
        return this.y;
    }
}
