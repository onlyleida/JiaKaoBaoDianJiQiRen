package org.apache.commons.math3.optimization;

import java.io.Serializable;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class PointValuePair extends Pair<double[], Double> implements Serializable {
    private static final long serialVersionUID = 20120513;

    private static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20120513;
        private final double[] point;
        private final double value;

        DataTransferObject(double[] dArr, double d2) {
            this.point = (double[]) dArr.clone();
            this.value = d2;
        }

        private Object readResolve() {
            return new PointValuePair(this.point, this.value, false);
        }
    }

    public PointValuePair(double[] dArr, double d2) {
        this(dArr, d2, true);
    }

    private Object writeReplace() {
        return new DataTransferObject(getKey(), getValue().doubleValue());
    }

    public double[] getPoint() {
        double[] key = getKey();
        if (key == null) {
            return null;
        }
        return (double[]) key.clone();
    }

    public double[] getPointRef() {
        return getKey();
    }

    public PointValuePair(double[] dArr, double d2, boolean z) {
        super(z ? dArr == null ? null : (double[]) dArr.clone() : dArr, Double.valueOf(d2));
    }
}
