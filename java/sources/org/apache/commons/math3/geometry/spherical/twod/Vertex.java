package org.apache.commons.math3.geometry.spherical.twod;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class Vertex {
    private final S2Point location;
    private Edge incoming = null;
    private Edge outgoing = null;
    private final List<Circle> circles = new ArrayList();

    Vertex(S2Point s2Point) {
        this.location = s2Point;
    }

    void bindWith(Circle circle) {
        this.circles.add(circle);
    }

    public Edge getIncoming() {
        return this.incoming;
    }

    public S2Point getLocation() {
        return this.location;
    }

    public Edge getOutgoing() {
        return this.outgoing;
    }

    void setIncoming(Edge edge) {
        this.incoming = edge;
        bindWith(edge.getCircle());
    }

    void setOutgoing(Edge edge) {
        this.outgoing = edge;
        bindWith(edge.getCircle());
    }

    Circle sharedCircleWith(Vertex vertex) {
        for (Circle circle : this.circles) {
            Iterator<Circle> it = vertex.circles.iterator();
            while (it.hasNext()) {
                if (circle == it.next()) {
                    return circle;
                }
            }
        }
        return null;
    }
}
