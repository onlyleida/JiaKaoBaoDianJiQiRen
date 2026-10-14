package org.apache.commons.math3.geometry.spherical.twod;

import java.util.List;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Edge {
    private final Circle circle;
    private Vertex end;
    private final double length;
    private final Vertex start;

    Edge(Vertex vertex, Vertex vertex2, double d2, Circle circle) {
        this.start = vertex;
        this.end = vertex2;
        this.length = d2;
        this.circle = circle;
        vertex.setOutgoing(this);
        vertex2.setIncoming(this);
    }

    private Vertex addSubEdge(Vertex vertex, Vertex vertex2, double d2, List<Edge> list, Circle circle) {
        if (d2 <= this.circle.getTolerance()) {
            return vertex;
        }
        vertex2.bindWith(circle);
        list.add(new Edge(vertex, vertex2, d2, this.circle));
        return vertex2;
    }

    public Circle getCircle() {
        return this.circle;
    }

    public Vertex getEnd() {
        return this.end;
    }

    public double getLength() {
        return this.length;
    }

    public Vector3D getPointAt(double d2) {
        Circle circle = this.circle;
        return circle.getPointAt(d2 + circle.getPhase(this.start.getLocation().getVector()));
    }

    public Vertex getStart() {
        return this.start;
    }

    void setNextEdge(Edge edge) {
        Vertex start = edge.getStart();
        this.end = start;
        start.setIncoming(this);
        this.end.bindWith(getCircle());
    }

    void split(Circle circle, List<Edge> list, List<Edge> list2) {
        double phase = this.circle.getPhase(this.start.getLocation().getVector());
        Arc insideArc = this.circle.getInsideArc(circle);
        double dNormalizeAngle = MathUtils.normalizeAngle(insideArc.getInf(), 3.141592653589793d + phase) - phase;
        double size = dNormalizeAngle + insideArc.getSize();
        double d2 = size - 6.283185307179586d;
        double tolerance = this.circle.getTolerance();
        Vertex vertexAddSubEdge = this.start;
        if (d2 >= this.length - tolerance) {
            list2.add(this);
            return;
        }
        if (d2 >= 0.0d) {
            vertexAddSubEdge = addSubEdge(vertexAddSubEdge, new Vertex(new S2Point(this.circle.getPointAt(phase + d2))), d2, list2, circle);
        } else {
            d2 = 0.0d;
        }
        double d3 = this.length;
        if (dNormalizeAngle >= d3 - tolerance) {
            if (d2 >= 0.0d) {
                addSubEdge(vertexAddSubEdge, this.end, d3 - d2, list, circle);
                return;
            } else {
                list.add(this);
                return;
            }
        }
        double d4 = phase + dNormalizeAngle;
        Vertex vertexAddSubEdge2 = addSubEdge(vertexAddSubEdge, new Vertex(new S2Point(this.circle.getPointAt(d4))), dNormalizeAngle - d2, list, circle);
        double d5 = this.length;
        if (size >= d5 - tolerance) {
            addSubEdge(vertexAddSubEdge2, this.end, d5 - dNormalizeAngle, list2, circle);
        } else {
            addSubEdge(addSubEdge(vertexAddSubEdge2, new Vertex(new S2Point(this.circle.getPointAt(d4))), dNormalizeAngle - dNormalizeAngle, list2, circle), this.end, this.length - dNormalizeAngle, list, circle);
        }
    }
}
