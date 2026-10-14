package com.autonavi.base.amap.mapcore;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes5.dex */
public class FPointBounds {
    private final int mVersionCode;
    public final FPoint northeast;
    public final FPoint southwest;

    public static final class Builder {
        private float mSouth = Float.POSITIVE_INFINITY;
        private float mNorth = Float.NEGATIVE_INFINITY;
        private float mWest = Float.POSITIVE_INFINITY;
        private float mEast = Float.NEGATIVE_INFINITY;

        private boolean containsx(double d2) {
            float f2 = this.mWest;
            float f3 = this.mEast;
            if (f2 <= f3) {
                return ((double) f2) <= d2 && d2 <= ((double) f3);
            }
            return ((double) f2) <= d2 || d2 <= ((double) f3);
        }

        public FPointBounds build() {
            return new FPointBounds(FPoint.obtain(this.mWest, this.mSouth), FPoint.obtain(this.mEast, this.mNorth));
        }

        public Builder include(FPoint fPoint) {
            this.mSouth = Math.min(this.mSouth, ((PointF) fPoint).y);
            this.mNorth = Math.max(this.mNorth, ((PointF) fPoint).y);
            this.mWest = Math.min(this.mWest, ((PointF) fPoint).x);
            this.mEast = Math.max(this.mEast, ((PointF) fPoint).x);
            return this;
        }
    }

    FPointBounds(int i, FPoint fPoint, FPoint fPoint2) {
        this.mVersionCode = i;
        this.southwest = fPoint;
        this.northeast = fPoint2;
    }

    public static Builder builder() {
        return new Builder();
    }

    private boolean containsx(double d2) {
        float f2 = ((PointF) this.southwest).x;
        float f3 = ((PointF) this.northeast).x;
        if (f2 <= f3) {
            return ((double) f2) <= d2 && d2 <= ((double) f3);
        }
        return ((double) f2) <= d2 || d2 <= ((double) f3);
    }

    private boolean containsy(double d2) {
        return ((double) ((PointF) this.southwest).y) <= d2 && d2 <= ((double) ((PointF) this.northeast).y);
    }

    private boolean intersect(FPointBounds fPointBounds) {
        FPoint fPoint;
        FPoint fPoint2;
        FPoint fPoint3;
        FPoint fPoint4;
        if (fPointBounds == null || (fPoint = fPointBounds.northeast) == null || (fPoint2 = fPointBounds.southwest) == null || (fPoint3 = this.northeast) == null || (fPoint4 = this.southwest) == null) {
            return false;
        }
        float f2 = ((PointF) fPoint).x;
        float f3 = ((PointF) fPoint2).x + f2;
        float f4 = ((PointF) fPoint3).x;
        float f5 = ((PointF) fPoint4).x;
        double d2 = (f3 - f4) - f5;
        double d3 = ((f4 - f5) + f2) - f5;
        float f6 = ((PointF) fPoint).y;
        float f7 = ((PointF) fPoint2).y;
        float f8 = ((PointF) fPoint3).y;
        float f9 = ((PointF) fPoint4).y;
        return Math.abs(d2) < d3 && Math.abs((double) (((f6 + f7) - f8) - f9)) < ((double) (((f8 - f9) + f6) - f7));
    }

    public boolean contains(FPoint fPoint) {
        return containsy((double) ((PointF) fPoint).y) && containsx((double) ((PointF) fPoint).x);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FPointBounds)) {
            return false;
        }
        FPointBounds fPointBounds = (FPointBounds) obj;
        return this.southwest.equals(fPointBounds.southwest) && this.northeast.equals(fPointBounds.northeast);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean intersects(FPointBounds fPointBounds) {
        if (fPointBounds == null) {
            return false;
        }
        return intersect(fPointBounds) || fPointBounds.intersect(this);
    }

    public String toString() {
        return "southwest = (" + ((PointF) this.southwest).x + "," + ((PointF) this.southwest).y + ") northeast = (" + ((PointF) this.northeast).x + "," + ((PointF) this.northeast).y + ")";
    }

    public boolean contains(FPointBounds fPointBounds) {
        return fPointBounds != null && contains(fPointBounds.southwest) && contains(fPointBounds.northeast);
    }

    public FPointBounds(FPoint fPoint, FPoint fPoint2) {
        this(1, fPoint, fPoint2);
    }
}
