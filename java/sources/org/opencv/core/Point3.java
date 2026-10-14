package org.opencv.core;

import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes6.dex */
public class Point3 {
    public double x;
    public double y;
    public double z;

    public Point3(double d2, double d3, double d4) {
        this.x = d2;
        this.y = d3;
        this.z = d4;
    }

    public Point3 cross(Point3 point3) {
        double d2 = this.y;
        double d3 = point3.z;
        double d4 = this.z;
        double d5 = point3.y;
        double d6 = (d2 * d3) - (d4 * d5);
        double d7 = point3.x;
        double d8 = this.x;
        return new Point3(d6, (d4 * d7) - (d3 * d8), (d8 * d5) - (d2 * d7));
    }

    public double dot(Point3 point3) {
        return (this.x * point3.x) + (this.y * point3.y) + (this.z * point3.z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Point3)) {
            return false;
        }
        Point3 point3 = (Point3) obj;
        return this.x == point3.x && this.y == point3.y && this.z == point3.z;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.x);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.y);
        int i = ((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.z);
        return (i * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
    }

    public void set(double[] dArr) {
        if (dArr != null) {
            this.x = dArr.length > 0 ? dArr[0] : 0.0d;
            this.y = dArr.length > 1 ? dArr[1] : 0.0d;
            this.z = dArr.length > 2 ? dArr[2] : 0.0d;
        } else {
            this.x = 0.0d;
            this.y = 0.0d;
            this.z = 0.0d;
        }
    }

    public String toString() {
        return VectorFormat.DEFAULT_PREFIX + this.x + ", " + this.y + ", " + this.z + VectorFormat.DEFAULT_SUFFIX;
    }

    public Point3 clone() {
        return new Point3(this.x, this.y, this.z);
    }

    public Point3() {
        this(0.0d, 0.0d, 0.0d);
    }

    public Point3(Point point) {
        this.x = point.x;
        this.y = point.y;
        this.z = 0.0d;
    }

    public Point3(double[] dArr) {
        this();
        set(dArr);
    }
}
