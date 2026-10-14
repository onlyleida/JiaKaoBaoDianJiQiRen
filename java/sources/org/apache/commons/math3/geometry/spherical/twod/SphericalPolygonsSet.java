package org.apache.commons.math3.geometry.spherical.twod;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.geometry.enclosing.EnclosingBall;
import org.apache.commons.math3.geometry.enclosing.WelzlEncloser;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;
import org.apache.commons.math3.geometry.euclidean.threed.RotationConvention;
import org.apache.commons.math3.geometry.euclidean.threed.SphereGenerator;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SphericalPolygonsSet extends AbstractRegion<Sphere2D, Sphere1D> {
    private List<Vertex> loops;

    public SphericalPolygonsSet(double d2) {
        super(d2);
    }

    private static S2Point[] createRegularPolygonVertices(Vector3D vector3D, Vector3D vector3D2, double d2, int i) {
        S2Point[] s2PointArr = new S2Point[i];
        Vector3D vector3DCrossProduct = Vector3D.crossProduct(vector3D, vector3D2);
        RotationConvention rotationConvention = RotationConvention.VECTOR_OPERATOR;
        s2PointArr[0] = new S2Point(new Rotation(vector3DCrossProduct, d2, rotationConvention).applyTo(vector3D));
        Rotation rotation = new Rotation(vector3D, 6.283185307179586d / ((double) i), rotationConvention);
        for (int i2 = 1; i2 < i; i2++) {
            s2PointArr[i2] = new S2Point(rotation.applyTo(s2PointArr[i2 - 1].getVector()));
        }
        return s2PointArr;
    }

    private List<Vector3D> getInsidePoints() {
        PropertiesComputer propertiesComputer = new PropertiesComputer(getTolerance());
        getTree(true).visit(propertiesComputer);
        return propertiesComputer.getConvexCellsInsidePoints();
    }

    private List<Vector3D> getOutsidePoints() {
        SphericalPolygonsSet sphericalPolygonsSet = (SphericalPolygonsSet) new RegionFactory().getComplement(this);
        PropertiesComputer propertiesComputer = new PropertiesComputer(getTolerance());
        sphericalPolygonsSet.getTree(true).visit(propertiesComputer);
        return propertiesComputer.getConvexCellsInsidePoints();
    }

    private static void insertEdges(double d2, BSPTree<Sphere2D> bSPTree, List<Edge> list) {
        Edge edge;
        int i;
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        int i2 = 0;
        loop0: while (true) {
            edge = null;
            while (true) {
                if (edge != null || i2 >= list.size()) {
                    break loop0;
                }
                i = i2 + 1;
                Edge edge2 = list.get(i2);
                if (!bSPTree.insertCut(edge2.getCircle())) {
                    break;
                }
                edge = edge2;
                i2 = i;
            }
            i2 = i;
        }
        if (edge == null) {
            BSPTree<S> parent = bSPTree.getParent();
            if (parent == 0 || bSPTree == parent.getMinus()) {
                bSPTree.setAttribute(bool2);
                return;
            } else {
                bSPTree.setAttribute(bool);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Edge edge3 : list) {
            if (edge3 != edge) {
                edge3.split(edge.getCircle(), arrayList, arrayList2);
            }
        }
        if (arrayList.isEmpty()) {
            bSPTree.getPlus().setAttribute(bool);
        } else {
            insertEdges(d2, bSPTree.getPlus(), arrayList);
        }
        if (arrayList2.isEmpty()) {
            bSPTree.getMinus().setAttribute(bool2);
        } else {
            insertEdges(d2, bSPTree.getMinus(), arrayList2);
        }
    }

    private static BSPTree<Sphere2D> verticesToTree(double d2, S2Point... s2PointArr) {
        int length = s2PointArr.length;
        if (length == 0) {
            return new BSPTree<>(Boolean.TRUE);
        }
        Vertex[] vertexArr = new Vertex[length];
        for (int i = 0; i < length; i++) {
            vertexArr[i] = new Vertex(s2PointArr[i]);
        }
        ArrayList arrayList = new ArrayList(length);
        Vertex vertex = vertexArr[length - 1];
        int i2 = 0;
        while (i2 < length) {
            Vertex vertex2 = vertexArr[i2];
            Circle circleSharedCircleWith = vertex.sharedCircleWith(vertex2);
            if (circleSharedCircleWith == null) {
                circleSharedCircleWith = new Circle(vertex.getLocation(), vertex2.getLocation(), d2);
            }
            Circle circle = circleSharedCircleWith;
            arrayList.add(new Edge(vertex, vertex2, Vector3D.angle(vertex.getLocation().getVector(), vertex2.getLocation().getVector()), circle));
            for (int i3 = 0; i3 < length; i3++) {
                Vertex vertex3 = vertexArr[i3];
                if (vertex3 != vertex && vertex3 != vertex2 && FastMath.abs(circle.getOffset(vertex3.getLocation())) <= d2) {
                    vertex3.bindWith(circle);
                }
            }
            i2++;
            vertex = vertex2;
        }
        BSPTree<Sphere2D> bSPTree = new BSPTree<>();
        insertEdges(d2, bSPTree, arrayList);
        return bSPTree;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere2D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    protected void computeGeometricalProperties() throws MathIllegalStateException {
        BSPTree<Sphere2D> tree = getTree(true);
        if (tree.getCut() != null) {
            PropertiesComputer propertiesComputer = new PropertiesComputer(getTolerance());
            tree.visit(propertiesComputer);
            setSize(propertiesComputer.getArea());
            setBarycenter(propertiesComputer.getBarycenter());
            return;
        }
        if (tree.getCut() == null && ((Boolean) tree.getAttribute()).booleanValue()) {
            setSize(12.566370614359172d);
            setBarycenter(new S2Point(0.0d, 0.0d));
        } else {
            setSize(0.0d);
            setBarycenter(S2Point.NaN);
        }
    }

    public List<Vertex> getBoundaryLoops() throws MathIllegalStateException {
        if (this.loops == null) {
            if (getTree(false).getCut() == null) {
                this.loops = Collections.emptyList();
            } else {
                BSPTree<Sphere2D> tree = getTree(true);
                EdgesBuilder edgesBuilder = new EdgesBuilder(tree, getTolerance());
                tree.visit(edgesBuilder);
                List<Edge> edges = edgesBuilder.getEdges();
                this.loops = new ArrayList();
                while (!edges.isEmpty()) {
                    Edge outgoing = edges.get(0);
                    Vertex start = outgoing.getStart();
                    this.loops.add(start);
                    do {
                        Iterator<Edge> it = edges.iterator();
                        while (it.hasNext()) {
                            if (it.next() == outgoing) {
                                it.remove();
                                break;
                            }
                        }
                        outgoing = outgoing.getEnd().getOutgoing();
                    } while (outgoing.getStart() != start);
                }
            }
        }
        return Collections.unmodifiableList(this.loops);
    }

    public EnclosingBall<Sphere2D, S2Point> getEnclosingCap() {
        if (isEmpty()) {
            return new EnclosingBall<>(S2Point.PLUS_K, Double.NEGATIVE_INFINITY, new S2Point[0]);
        }
        if (isFull()) {
            return new EnclosingBall<>(S2Point.PLUS_K, Double.POSITIVE_INFINITY, new S2Point[0]);
        }
        BSPTree<Sphere2D> tree = getTree(false);
        if (isEmpty(tree.getMinus()) && isFull(tree.getPlus())) {
            return new EnclosingBall<>(new S2Point(((Circle) tree.getCut().getHyperplane()).getPole()).negate(), 1.5707963267948966d, new S2Point[0]);
        }
        if (isFull(tree.getMinus()) && isEmpty(tree.getPlus())) {
            return new EnclosingBall<>(new S2Point(((Circle) tree.getCut().getHyperplane()).getPole()), 1.5707963267948966d, new S2Point[0]);
        }
        List<Vector3D> insidePoints = getInsidePoints();
        for (Vertex vertex : getBoundaryLoops()) {
            Vertex end = vertex;
            int i = 0;
            while (true) {
                if (i == 0 || end != vertex) {
                    i++;
                    insidePoints.add(end.getLocation().getVector());
                    end = end.getOutgoing().getEnd();
                }
            }
        }
        EnclosingBall enclosingBallEnclose = new WelzlEncloser(getTolerance(), new SphereGenerator()).enclose(insidePoints);
        Vector3D[] vector3DArr = (Vector3D[]) enclosingBallEnclose.getSupport();
        double radius = enclosingBallEnclose.getRadius();
        double norm = ((Vector3D) enclosingBallEnclose.getCenter()).getNorm();
        if (norm >= getTolerance()) {
            S2Point[] s2PointArr = new S2Point[vector3DArr.length];
            for (int i2 = 0; i2 < vector3DArr.length; i2++) {
                s2PointArr[i2] = new S2Point(vector3DArr[i2]);
            }
            return new EnclosingBall<>(new S2Point((Vector3D) enclosingBallEnclose.getCenter()), FastMath.acos((((norm * norm) + 1.0d) - (radius * radius)) / (norm * 2.0d)), s2PointArr);
        }
        EnclosingBall<Sphere2D, S2Point> enclosingBall = new EnclosingBall<>(S2Point.PLUS_K, Double.POSITIVE_INFINITY, new S2Point[0]);
        Iterator<Vector3D> it = getOutsidePoints().iterator();
        while (it.hasNext()) {
            S2Point s2Point = new S2Point(it.next());
            BoundaryProjection<Sphere2D> boundaryProjectionProjectToBoundary = projectToBoundary(s2Point);
            if (3.141592653589793d - boundaryProjectionProjectToBoundary.getOffset() < enclosingBall.getRadius()) {
                enclosingBall = new EnclosingBall<>(s2Point.negate(), 3.141592653589793d - boundaryProjectionProjectToBoundary.getOffset(), (S2Point) boundaryProjectionProjectToBoundary.getProjected());
            }
        }
        return enclosingBall;
    }

    public SphericalPolygonsSet(Vector3D vector3D, double d2) {
        super(new BSPTree(new Circle(vector3D, d2).wholeHyperplane(), new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null), d2);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere2D>) bSPTree);
    }

    public SphericalPolygonsSet(Vector3D vector3D, Vector3D vector3D2, double d2, int i, double d3) {
        this(d3, createRegularPolygonVertices(vector3D, vector3D2, d2, i));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public SphericalPolygonsSet buildNew(BSPTree<Sphere2D> bSPTree) {
        return new SphericalPolygonsSet(bSPTree, getTolerance());
    }

    public SphericalPolygonsSet(BSPTree<Sphere2D> bSPTree, double d2) {
        super(bSPTree, d2);
    }

    public SphericalPolygonsSet(Collection<SubHyperplane<Sphere2D>> collection, double d2) {
        super(collection, d2);
    }

    public SphericalPolygonsSet(double d2, S2Point... s2PointArr) {
        super(verticesToTree(d2, s2PointArr), d2);
    }
}
