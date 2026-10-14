package org.apache.commons.math3.geometry.euclidean.oned;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.partitioning.Region;

/* JADX INFO: loaded from: classes6.dex */
public class Interval {
    private final double lower;
    private final double upper;

    public Interval(double d2, double d3) {
        if (d3 < d2) {
            throw new NumberIsTooSmallException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d3), Double.valueOf(d2), true);
        }
        this.lower = d2;
        this.upper = d3;
    }

    public Region.Location checkPoint(double d2, double d3) {
        double d4 = this.lower;
        if (d2 >= d4 - d3) {
            double d5 = this.upper;
            if (d2 <= d5 + d3) {
                return (d2 <= d4 + d3 || d2 >= d5 - d3) ? Region.Location.BOUNDARY : Region.Location.INSIDE;
            }
        }
        return Region.Location.OUTSIDE;
    }

    public double getBarycenter() {
        return (this.lower + this.upper) * 0.5d;
    }

    public double getInf() {
        return this.lower;
    }

    @Deprecated
    public double getLength() {
        return getSize();
    }

    @Deprecated
    public double getLower() {
        return getInf();
    }

    @Deprecated
    public double getMidPoint() {
        return getBarycenter();
    }

    public double getSize() {
        return this.upper - this.lower;
    }

    public double getSup() {
        return this.upper;
    }

    @Deprecated
    public double getUpper() {
        return getSup();
    }
}
