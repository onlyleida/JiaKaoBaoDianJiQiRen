package org.apache.commons.math3.geometry.spherical.twod;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.geometry.spherical.oned.ArcsSet;
import org.apache.commons.math3.geometry.spherical.oned.S1Point;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;

/* JADX INFO: loaded from: classes6.dex */
class EdgesBuilder implements BSPTreeVisitor<Sphere2D> {
    private final Map<Edge, BSPTree<Sphere2D>> edgeToNode = new IdentityHashMap();
    private final Map<BSPTree<Sphere2D>, List<Edge>> nodeToEdgesList = new IdentityHashMap();
    private final BSPTree<Sphere2D> root;
    private final double tolerance;

    EdgesBuilder(BSPTree<Sphere2D> bSPTree, double d2) {
        this.root = bSPTree;
        this.tolerance = d2;
    }

    private void addContribution(SubCircle subCircle, boolean z, BSPTree<Sphere2D> bSPTree) {
        Circle circle = (Circle) subCircle.getHyperplane();
        for (Arc arc : ((ArcsSet) subCircle.getRemainingRegion()).asList()) {
            Vertex vertex = new Vertex(circle.toSpace((Point<Sphere1D>) new S1Point(arc.getInf())));
            Vertex vertex2 = new Vertex(circle.toSpace((Point<Sphere1D>) new S1Point(arc.getSup())));
            vertex.bindWith(circle);
            vertex2.bindWith(circle);
            Edge edge = z ? new Edge(vertex2, vertex, arc.getSize(), circle.getReverse()) : new Edge(vertex, vertex2, arc.getSize(), circle);
            this.edgeToNode.put(edge, bSPTree);
            this.nodeToEdgesList.get(bSPTree).add(edge);
        }
    }

    private Edge getFollowingEdge(Edge edge) throws MathIllegalStateException {
        S2Point location = edge.getEnd().getLocation();
        List<BSPTree<S>> closeCuts = this.root.getCloseCuts(location, this.tolerance);
        double d2 = this.tolerance;
        Iterator it = closeCuts.iterator();
        Edge edge2 = null;
        while (it.hasNext()) {
            for (Edge edge3 : this.nodeToEdgesList.get((BSPTree) it.next())) {
                if (edge3 != edge && edge3.getStart().getIncoming() == null) {
                    double dAngle = Vector3D.angle(location.getVector(), edge3.getStart().getLocation().getVector());
                    if (dAngle <= d2) {
                        edge2 = edge3;
                        d2 = dAngle;
                    }
                }
            }
        }
        if (edge2 != null) {
            return edge2;
        }
        if (Vector3D.angle(location.getVector(), edge.getStart().getLocation().getVector()) <= this.tolerance) {
            return edge;
        }
        throw new MathIllegalStateException(LocalizedFormats.OUTLINE_BOUNDARY_LOOP_OPEN, new Object[0]);
    }

    public List<Edge> getEdges() throws MathIllegalStateException {
        for (Edge edge : this.edgeToNode.keySet()) {
            edge.setNextEdge(getFollowingEdge(edge));
        }
        return new ArrayList(this.edgeToNode.keySet());
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitInternalNode(BSPTree<Sphere2D> bSPTree) {
        this.nodeToEdgesList.put(bSPTree, new ArrayList());
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        if (boundaryAttribute.getPlusOutside() != null) {
            addContribution((SubCircle) boundaryAttribute.getPlusOutside(), false, bSPTree);
        }
        if (boundaryAttribute.getPlusInside() != null) {
            addContribution((SubCircle) boundaryAttribute.getPlusInside(), true, bSPTree);
        }
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitLeafNode(BSPTree<Sphere2D> bSPTree) {
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public BSPTreeVisitor.Order visitOrder(BSPTree<Sphere2D> bSPTree) {
        return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
    }
}
