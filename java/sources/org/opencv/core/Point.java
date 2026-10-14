package org.opencv.core;

import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes6.dex */
public class Point {
    public double x;
    public double y;

    public Point(double d2, double d3) {
        this.x = d2;
        this.y = d3;
    }

    public double dot(Point point) {
        return (this.x * point.x) + (this.y * point.y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        return this.x == point.x && this.y == point.y;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.x);
        int i = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31;
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.y);
        return (i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
    }

    public boolean inside(Rect rect) {
        return rect.contains(this);
    }

    public void set(double[] dArr) {
        if (dArr != null) {
            this.x = dArr.length > 0 ? dArr[0] : 0.0d;
            this.y = dArr.length > 1 ? dArr[1] : 0.0d;
        } else {
            this.x = 0.0d;
            this.y = 0.0d;
        }
    }

    public String toString() {
        return VectorFormat.DEFAULT_PREFIX + this.x + ", " + this.y + VectorFormat.DEFAULT_SUFFIX;
    }

    public Point clone() {
        return new Point(this.x, this.y);
    }

    public Point() {
        this(0.0d, 0.0d);
    }

    public Point(double[] dArr) {
        this();
        set(dArr);
    }
}
