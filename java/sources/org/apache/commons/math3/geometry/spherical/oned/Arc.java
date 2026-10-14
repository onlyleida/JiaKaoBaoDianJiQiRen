package org.apache.commons.math3.geometry.spherical.oned;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class Arc {
    private final double lower;
    private final double middle;
    private final double tolerance;
    private final double upper;

    public Arc(double d2, double d3, double d4) throws NumberIsTooLargeException {
        this.tolerance = d4;
        if (!Precision.equals(d2, d3, 0)) {
            double d5 = d3 - d2;
            if (d5 < 6.283185307179586d) {
                if (d2 > d3) {
                    throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d2), Double.valueOf(d3), true);
                }
                double dNormalizeAngle = MathUtils.normalizeAngle(d2, 3.141592653589793d);
                this.lower = dNormalizeAngle;
                double d6 = d5 + dNormalizeAngle;
                this.upper = d6;
                this.middle = (dNormalizeAngle + d6) * 0.5d;
                return;
            }
        }
        this.lower = 0.0d;
        this.upper = 6.283185307179586d;
        this.middle = 3.141592653589793d;
    }

    public Region.Location checkPoint(double d2) {
        double dNormalizeAngle = MathUtils.normalizeAngle(d2, this.middle);
        double d3 = this.lower;
        double d4 = this.tolerance;
        if (dNormalizeAngle >= d3 - d4) {
            double d5 = this.upper;
            if (dNormalizeAngle <= d5 + d4) {
                if (dNormalizeAngle <= d3 + d4 || dNormalizeAngle >= d5 - d4) {
                    return getSize() >= 6.283185307179586d - this.tolerance ? Region.Location.INSIDE : Region.Location.BOUNDARY;
                }
                return Region.Location.INSIDE;
            }
        }
        return Region.Location.OUTSIDE;
    }

    public double getBarycenter() {
        return this.middle;
    }

    public double getInf() {
        return this.lower;
    }

    public double getSize() {
        return this.upper - this.lower;
    }

    public double getSup() {
        return this.upper;
    }

    public double getTolerance() {
        return this.tolerance;
    }
}
