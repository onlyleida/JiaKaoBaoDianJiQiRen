package org.apache.commons.math3.geometry.euclidean.threed;

import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Plane implements Hyperplane<Euclidean3D>, Embedding<Euclidean3D, Euclidean2D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private Vector3D origin;
    private double originOffset;
    private final double tolerance;
    private Vector3D u;
    private Vector3D v;
    private Vector3D w;

    public Plane(Vector3D vector3D, double d2) throws MathArithmeticException {
        setNormal(vector3D);
        this.tolerance = d2;
        this.originOffset = 0.0d;
        setFrame();
    }

    private void setFrame() {
        this.origin = new Vector3D(-this.originOffset, this.w);
        Vector3D vector3DOrthogonal = this.w.orthogonal();
        this.u = vector3DOrthogonal;
        this.v = Vector3D.crossProduct(this.w, vector3DOrthogonal);
    }

    private void setNormal(Vector3D vector3D) throws MathArithmeticException {
        double norm = vector3D.getNorm();
        if (norm < 1.0E-10d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        this.w = new Vector3D(1.0d / norm, vector3D);
    }

    public boolean contains(Vector3D vector3D) {
        return FastMath.abs(getOffset((Vector<Euclidean3D>) vector3D)) < this.tolerance;
    }

    public Vector3D getNormal() {
        return this.w;
    }

    public double getOffset(Plane plane) {
        return this.originOffset + (sameOrientationAs(plane) ? -plane.originOffset : plane.originOffset);
    }

    public Vector3D getOrigin() {
        return this.origin;
    }

    public Vector3D getPointAt(Vector2D vector2D, double d2) {
        return new Vector3D(vector2D.getX(), this.u, vector2D.getY(), this.v, d2 - this.originOffset, this.w);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.tolerance;
    }

    public Vector3D getU() {
        return this.u;
    }

    public Vector3D getV() {
        return this.v;
    }

    public Vector3D intersection(Line line) {
        Vector3D direction = line.getDirection();
        double dDotProduct = this.w.dotProduct(direction);
        if (FastMath.abs(dDotProduct) < 1.0E-10d) {
            return null;
        }
        Vector3D space = line.toSpace((Point<Euclidean1D>) Vector1D.ZERO);
        return new Vector3D(1.0d, space, (-(this.originOffset + this.w.dotProduct(space))) / dDotProduct, direction);
    }

    public boolean isSimilarTo(Plane plane) {
        double dAngle = Vector3D.angle(this.w, plane.w);
        return (dAngle < 1.0E-10d && FastMath.abs(this.originOffset - plane.originOffset) < this.tolerance) || (dAngle > 3.141592653489793d && FastMath.abs(this.originOffset + plane.originOffset) < this.tolerance);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Euclidean3D> project(Point<Euclidean3D> point) {
        return toSpace((Vector<Euclidean2D>) toSubSpace(point));
    }

    public void reset(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        setNormal(vector3D2);
        this.originOffset = -vector3D.dotProduct(this.w);
        setFrame();
    }

    public void revertSelf() {
        Vector3D vector3D = this.u;
        this.u = this.v;
        this.v = vector3D;
        this.w = this.w.negate();
        this.originOffset = -this.originOffset;
    }

    public Plane rotate(Vector3D vector3D, Rotation rotation) {
        Plane plane = new Plane(vector3D.add((Vector<Euclidean3D>) rotation.applyTo(this.origin.subtract((Vector<Euclidean3D>) vector3D))), rotation.applyTo(this.w), this.tolerance);
        plane.u = rotation.applyTo(this.u);
        plane.v = rotation.applyTo(this.v);
        return plane;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Euclidean3D> hyperplane) {
        return ((Plane) hyperplane).w.dotProduct(this.w) > 0.0d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public /* bridge */ /* synthetic */ Point toSpace(Point point) {
        return toSpace((Point<Euclidean2D>) point);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public /* bridge */ /* synthetic */ Point toSubSpace(Point point) {
        return toSubSpace((Point<Euclidean3D>) point);
    }

    public Plane translate(Vector3D vector3D) {
        Plane plane = new Plane(this.origin.add((Vector<Euclidean3D>) vector3D), this.w, this.tolerance);
        plane.u = this.u;
        plane.v = this.v;
        return plane;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Plane copySelf() {
        return new Plane(this);
    }

    public double getOffset(Vector<Euclidean3D> vector) {
        return getOffset((Point<Euclidean3D>) vector);
    }

    public Vector3D toSpace(Vector<Euclidean2D> vector) {
        return toSpace((Point<Euclidean2D>) vector);
    }

    public Vector2D toSubSpace(Vector<Euclidean3D> vector) {
        return toSubSpace((Point<Euclidean3D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubPlane wholeHyperplane() {
        return new SubPlane(this, new PolygonsSet(this.tolerance));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public PolyhedronsSet wholeSpace() {
        return new PolyhedronsSet(this.tolerance);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Euclidean3D> point) {
        return ((Vector3D) point).dotProduct(this.w) + this.originOffset;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Vector3D toSpace(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return new Vector3D(vector2D.getX(), this.u, vector2D.getY(), this.v, -this.originOffset, this.w);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Vector2D toSubSpace(Point<Euclidean3D> point) {
        Vector3D vector3D = (Vector3D) point;
        return new Vector2D(vector3D.dotProduct(this.u), vector3D.dotProduct(this.v));
    }

    public void reset(Plane plane) {
        this.originOffset = plane.originOffset;
        this.origin = plane.origin;
        this.u = plane.u;
        this.v = plane.v;
        this.w = plane.w;
    }

    public Plane(Vector3D vector3D, Vector3D vector3D2, double d2) throws MathArithmeticException {
        setNormal(vector3D2);
        this.tolerance = d2;
        this.originOffset = -vector3D.dotProduct(this.w);
        setFrame();
    }

    public Line intersection(Plane plane) {
        Vector3D vector3DCrossProduct = Vector3D.crossProduct(this.w, plane.w);
        double norm = vector3DCrossProduct.getNorm();
        double d2 = this.tolerance;
        if (norm < d2) {
            return null;
        }
        Vector3D vector3DIntersection = intersection(this, plane, new Plane(vector3DCrossProduct, d2));
        return new Line(vector3DIntersection, vector3DIntersection.add((Vector<Euclidean3D>) vector3DCrossProduct), this.tolerance);
    }

    public Plane(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, double d2) throws MathArithmeticException {
        this(vector3D, vector3D2.subtract((Vector<Euclidean3D>) vector3D).crossProduct(vector3D3.subtract((Vector<Euclidean3D>) vector3D)), d2);
    }

    public static Vector3D intersection(Plane plane, Plane plane2, Plane plane3) {
        double x = plane.w.getX();
        double y = plane.w.getY();
        double z = plane.w.getZ();
        double d2 = plane.originOffset;
        double x2 = plane2.w.getX();
        double y2 = plane2.w.getY();
        double z2 = plane2.w.getZ();
        double d3 = plane2.originOffset;
        double x3 = plane3.w.getX();
        double y3 = plane3.w.getY();
        double z3 = plane3.w.getZ();
        double d4 = plane3.originOffset;
        double d5 = (y2 * z3) - (y3 * z2);
        double d6 = (z2 * x3) - (z3 * x2);
        double d7 = (x2 * y3) - (x3 * y2);
        double d8 = (x * d5) + (y * d6) + (z * d7);
        if (FastMath.abs(d8) < 1.0E-10d) {
            return null;
        }
        double d9 = 1.0d / d8;
        return new Vector3D(((((-d5) * d2) - (((z * y3) - (z3 * y)) * d3)) - (((z2 * y) - (z * y2)) * d4)) * d9, ((((-d6) * d2) - (((z3 * x) - (z * x3)) * d3)) - (((z * x2) - (z2 * x)) * d4)) * d9, ((((-d7) * d2) - (((x3 * y) - (y3 * x)) * d3)) - (((y2 * x) - (y * x2)) * d4)) * d9);
    }

    @Deprecated
    public Plane(Vector3D vector3D) throws MathArithmeticException {
        this(vector3D, 1.0E-10d);
    }

    @Deprecated
    public Plane(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        this(vector3D, vector3D2, 1.0E-10d);
    }

    @Deprecated
    public Plane(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3) throws MathArithmeticException {
        this(vector3D, vector3D2, vector3D3, 1.0E-10d);
    }

    public Plane(Plane plane) {
        this.originOffset = plane.originOffset;
        this.origin = plane.origin;
        this.u = plane.u;
        this.v = plane.v;
        this.w = plane.w;
        this.tolerance = plane.tolerance;
    }
}
