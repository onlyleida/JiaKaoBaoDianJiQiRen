package org.apache.commons.math3.geometry.euclidean.oned;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;

/* JADX INFO: loaded from: classes6.dex */
public class OrientedPoint implements Hyperplane<Euclidean1D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private boolean direct;
    private Vector1D location;
    private final double tolerance;

    public OrientedPoint(Vector1D vector1D, boolean z, double d2) {
        this.location = vector1D;
        this.direct = z;
        this.tolerance = d2;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public OrientedPoint copySelf() {
        return this;
    }

    public Vector1D getLocation() {
        return this.location;
    }

    public double getOffset(Vector<Euclidean1D> vector) {
        return getOffset((Point<Euclidean1D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.tolerance;
    }

    public boolean isDirect() {
        return this.direct;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Euclidean1D> project(Point<Euclidean1D> point) {
        return this.location;
    }

    public void revertSelf() {
        this.direct = !this.direct;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Euclidean1D> hyperplane) {
        return !(((OrientedPoint) hyperplane).direct ^ this.direct);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Euclidean1D> point) {
        double x = ((Vector1D) point).getX() - this.location.getX();
        return this.direct ? x : -x;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubOrientedPoint wholeHyperplane() {
        return new SubOrientedPoint(this, null);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public IntervalsSet wholeSpace() {
        return new IntervalsSet(this.tolerance);
    }

    @Deprecated
    public OrientedPoint(Vector1D vector1D, boolean z) {
        this(vector1D, z, 1.0E-10d);
    }
}
