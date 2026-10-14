package org.apache.commons.math3.fitting;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class WeightedObservedPoints implements Serializable {
    private static final long serialVersionUID = 20130813;
    private final List<WeightedObservedPoint> observations = new ArrayList();

    public void add(double d2, double d3) {
        add(1.0d, d2, d3);
    }

    public void clear() {
        this.observations.clear();
    }

    public List<WeightedObservedPoint> toList() {
        return new ArrayList(this.observations);
    }

    public void add(double d2, double d3, double d4) {
        this.observations.add(new WeightedObservedPoint(d2, d3, d4));
    }

    public void add(WeightedObservedPoint weightedObservedPoint) {
        this.observations.add(weightedObservedPoint);
    }
}
