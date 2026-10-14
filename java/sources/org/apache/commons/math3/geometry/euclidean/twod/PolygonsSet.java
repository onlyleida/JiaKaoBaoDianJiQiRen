package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.NodesSet;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class PolygonsSet extends AbstractRegion<Euclidean2D, Euclidean1D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private Vector2D[][] vertices;

    /* JADX INFO: renamed from: org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side;

        static {
            int[] iArr = new int[Side.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static class ConnectableSegment extends Segment {
        private final BSPTree<Euclidean2D> endNode;
        private ConnectableSegment next;
        private final BSPTree<Euclidean2D> node;
        private ConnectableSegment previous;
        private boolean processed;
        private final BSPTree<Euclidean2D> startNode;

        ConnectableSegment(Vector2D vector2D, Vector2D vector2D2, Line line, BSPTree<Euclidean2D> bSPTree, BSPTree<Euclidean2D> bSPTree2, BSPTree<Euclidean2D> bSPTree3) {
            super(vector2D, vector2D2, line);
            this.node = bSPTree;
            this.startNode = bSPTree2;
            this.endNode = bSPTree3;
            this.previous = null;
            this.next = null;
            this.processed = false;
        }

        public BSPTree<Euclidean2D> getEndNode() {
            return this.endNode;
        }

        public ConnectableSegment getNext() {
            return this.next;
        }

        public BSPTree<Euclidean2D> getNode() {
            return this.node;
        }

        public ConnectableSegment getPrevious() {
            return this.previous;
        }

        public BSPTree<Euclidean2D> getStartNode() {
            return this.startNode;
        }

        public boolean isProcessed() {
            return this.processed;
        }

        public void setNext(ConnectableSegment connectableSegment) {
            this.next = connectableSegment;
        }

        public void setPrevious(ConnectableSegment connectableSegment) {
            this.previous = connectableSegment;
        }

        public void setProcessed(boolean z) {
            this.processed = z;
        }
    }

    private static class Edge {
        private final Vertex end;
        private final Line line;
        private BSPTree<Euclidean2D> node = null;
        private final Vertex start;

        Edge(Vertex vertex, Vertex vertex2, Line line) {
            this.start = vertex;
            this.end = vertex2;
            this.line = line;
            vertex.setOutgoing(this);
            vertex2.setIncoming(this);
        }

        public Vertex getEnd() {
            return this.end;
        }

        public Line getLine() {
            return this.line;
        }

        public BSPTree<Euclidean2D> getNode() {
            return this.node;
        }

        public Vertex getStart() {
            return this.start;
        }

        public void setNode(BSPTree<Euclidean2D> bSPTree) {
            this.node = bSPTree;
        }

        public Vertex split(Line line) {
            Vertex vertex = new Vertex(this.line.intersection(line));
            vertex.bindWith(line);
            Edge edge = new Edge(this.start, vertex, this.line);
            Edge edge2 = new Edge(vertex, this.end, this.line);
            edge.node = this.node;
            edge2.node = this.node;
            return vertex;
        }
    }

    private static class SegmentsBuilder implements BSPTreeVisitor<Euclidean2D> {
        private final List<ConnectableSegment> segments = new ArrayList();
        private final double tolerance;

        SegmentsBuilder(double d2) {
            this.tolerance = d2;
        }

        private void addContribution(SubHyperplane<Euclidean2D> subHyperplane, BSPTree<Euclidean2D> bSPTree, Iterable<BSPTree<Euclidean2D>> iterable, boolean z) {
            Line line = (Line) subHyperplane.getHyperplane();
            for (Interval interval : ((IntervalsSet) ((AbstractSubHyperplane) subHyperplane).getRemainingRegion()).asList()) {
                Vector2D space = Double.isInfinite(interval.getInf()) ? null : line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getInf()));
                Vector2D space2 = Double.isInfinite(interval.getSup()) ? null : line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getSup()));
                BSPTree<Euclidean2D> bSPTreeSelectClosest = selectClosest(space, iterable);
                BSPTree<Euclidean2D> bSPTreeSelectClosest2 = selectClosest(space2, iterable);
                if (z) {
                    this.segments.add(new ConnectableSegment(space2, space, line.getReverse(), bSPTree, bSPTreeSelectClosest2, bSPTreeSelectClosest));
                } else {
                    this.segments.add(new ConnectableSegment(space, space2, line, bSPTree, bSPTreeSelectClosest, bSPTreeSelectClosest2));
                }
            }
        }

        private BSPTree<Euclidean2D> selectClosest(Vector2D vector2D, Iterable<BSPTree<Euclidean2D>> iterable) {
            double d2 = Double.POSITIVE_INFINITY;
            BSPTree<Euclidean2D> bSPTree = null;
            for (BSPTree<Euclidean2D> bSPTree2 : iterable) {
                double dAbs = FastMath.abs(bSPTree2.getCut().getHyperplane().getOffset(vector2D));
                if (dAbs < d2) {
                    bSPTree = bSPTree2;
                    d2 = dAbs;
                }
            }
            if (d2 <= this.tolerance) {
                return bSPTree;
            }
            return null;
        }

        public List<ConnectableSegment> getSegments() {
            return this.segments;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitInternalNode(BSPTree<Euclidean2D> bSPTree) {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            NodesSet splitters = boundaryAttribute.getSplitters();
            if (boundaryAttribute.getPlusOutside() != null) {
                addContribution(boundaryAttribute.getPlusOutside(), bSPTree, splitters, false);
            }
            if (boundaryAttribute.getPlusInside() != null) {
                addContribution(boundaryAttribute.getPlusInside(), bSPTree, splitters, true);
            }
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitLeafNode(BSPTree<Euclidean2D> bSPTree) {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public BSPTreeVisitor.Order visitOrder(BSPTree<Euclidean2D> bSPTree) {
            return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
        }
    }

    private static class Vertex {
        private final Vector2D location;
        private Edge incoming = null;
        private Edge outgoing = null;
        private final List<Line> lines = new ArrayList();

        Vertex(Vector2D vector2D) {
            this.location = vector2D;
        }

        public void bindWith(Line line) {
            this.lines.add(line);
        }

        public Edge getIncoming() {
            return this.incoming;
        }

        public Vector2D getLocation() {
            return this.location;
        }

        public Edge getOutgoing() {
            return this.outgoing;
        }

        public void setIncoming(Edge edge) {
            this.incoming = edge;
            bindWith(edge.getLine());
        }

        public void setOutgoing(Edge edge) {
            this.outgoing = edge;
            bindWith(edge.getLine());
        }

        public Line sharedLineWith(Vertex vertex) {
            for (Line line : this.lines) {
                Iterator<Line> it = vertex.lines.iterator();
                while (it.hasNext()) {
                    if (line == it.next()) {
                        return line;
                    }
                }
            }
            return null;
        }
    }

    public PolygonsSet(double d2) {
        super(d2);
    }

    private static Line[] boxBoundary(double d2, double d3, double d4, double d5, double d6) {
        if (d2 >= d3 - d6 || d4 >= d5 - d6) {
            return null;
        }
        Vector2D vector2D = new Vector2D(d2, d4);
        Vector2D vector2D2 = new Vector2D(d2, d5);
        Vector2D vector2D3 = new Vector2D(d3, d4);
        Vector2D vector2D4 = new Vector2D(d3, d5);
        return new Line[]{new Line(vector2D, vector2D3, d6), new Line(vector2D3, vector2D4, d6), new Line(vector2D4, vector2D2, d6), new Line(vector2D2, vector2D, d6)};
    }

    private int closeVerticesConnections(List<ConnectableSegment> list) {
        int i = 0;
        for (ConnectableSegment connectableSegment : list) {
            if (connectableSegment.getNext() == null && connectableSegment.getEnd() != null) {
                Vector2D end = connectableSegment.getEnd();
                ConnectableSegment connectableSegment2 = null;
                double d2 = Double.POSITIVE_INFINITY;
                for (ConnectableSegment connectableSegment3 : list) {
                    if (connectableSegment3.getPrevious() == null && connectableSegment3.getStart() != null) {
                        double dDistance = Vector2D.distance(end, connectableSegment3.getStart());
                        if (dDistance < d2) {
                            connectableSegment2 = connectableSegment3;
                            d2 = dDistance;
                        }
                    }
                }
                if (d2 <= getTolerance()) {
                    connectableSegment.setNext(connectableSegment2);
                    connectableSegment2.setPrevious(connectableSegment);
                    i++;
                }
            }
        }
        return i;
    }

    private void filterSpuriousVertices(List<Segment> list) {
        int i = 0;
        while (i < list.size()) {
            Segment segment = list.get(i);
            int size = (i + 1) % list.size();
            Segment segment2 = list.get(size);
            if (segment2 != null && Precision.equals(segment.getLine().getAngle(), segment2.getLine().getAngle(), Precision.EPSILON)) {
                list.set(size, new Segment(segment.getStart(), segment2.getEnd(), segment.getLine()));
                list.remove(i);
                i--;
            }
            i++;
        }
    }

    private List<Segment> followLoop(ConnectableSegment connectableSegment) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(connectableSegment);
        connectableSegment.setProcessed(true);
        ConnectableSegment next = connectableSegment.getNext();
        while (next != connectableSegment && next != null) {
            arrayList.add(next);
            next.setProcessed(true);
            next = next.getNext();
        }
        if (next == null) {
            for (ConnectableSegment previous = connectableSegment.getPrevious(); previous != null; previous = previous.getPrevious()) {
                arrayList.add(0, previous);
                previous.setProcessed(true);
            }
        }
        filterSpuriousVertices(arrayList);
        if (arrayList.size() != 2 || arrayList.get(0).getStart() == null) {
            return arrayList;
        }
        return null;
    }

    private ConnectableSegment getUnprocessed(List<ConnectableSegment> list) {
        for (ConnectableSegment connectableSegment : list) {
            if (!connectableSegment.isProcessed()) {
                return connectableSegment;
            }
        }
        return null;
    }

    private static void insertEdges(double d2, BSPTree<Euclidean2D> bSPTree, List<Edge> list) {
        Edge edge;
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        int i = 0;
        loop0: while (true) {
            edge = null;
            while (edge == null && i < list.size()) {
                int i2 = i + 1;
                Edge edge2 = list.get(i);
                if (edge2.getNode() == null && bSPTree.insertCut(edge2.getLine())) {
                    edge2.setNode(bSPTree);
                    edge = edge2;
                    i = i2;
                } else {
                    i = i2;
                }
            }
            break loop0;
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
                double offset = edge.getLine().getOffset((Point<Euclidean2D>) edge3.getStart().getLocation());
                double offset2 = edge.getLine().getOffset((Point<Euclidean2D>) edge3.getEnd().getLocation());
                Side side = FastMath.abs(offset) <= d2 ? Side.HYPER : offset < 0.0d ? Side.MINUS : Side.PLUS;
                Side side2 = FastMath.abs(offset2) <= d2 ? Side.HYPER : offset2 < 0.0d ? Side.MINUS : Side.PLUS;
                int i3 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[side.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (side2 == Side.PLUS) {
                            arrayList.add(edge3);
                        } else if (side2 == Side.MINUS) {
                            arrayList2.add(edge3);
                        }
                    } else if (side2 == Side.PLUS) {
                        Vertex vertexSplit = edge3.split(edge.getLine());
                        arrayList2.add(vertexSplit.getIncoming());
                        arrayList.add(vertexSplit.getOutgoing());
                    } else {
                        arrayList2.add(edge3);
                    }
                } else if (side2 == Side.MINUS) {
                    Vertex vertexSplit2 = edge3.split(edge.getLine());
                    arrayList2.add(vertexSplit2.getOutgoing());
                    arrayList.add(vertexSplit2.getIncoming());
                } else {
                    arrayList.add(edge3);
                }
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

    private int naturalFollowerConnections(List<ConnectableSegment> list) {
        int i = 0;
        for (ConnectableSegment connectableSegment : list) {
            if (connectableSegment.getNext() == null) {
                BSPTree<Euclidean2D> node = connectableSegment.getNode();
                BSPTree<Euclidean2D> endNode = connectableSegment.getEndNode();
                for (ConnectableSegment connectableSegment2 : list) {
                    if (connectableSegment2.getPrevious() == null && connectableSegment2.getNode() == endNode && connectableSegment2.getStartNode() == node) {
                        connectableSegment.setNext(connectableSegment2);
                        connectableSegment2.setPrevious(connectableSegment);
                        i++;
                        break;
                    }
                }
            }
        }
        return i;
    }

    private int splitEdgeConnections(List<ConnectableSegment> list) {
        int i = 0;
        for (ConnectableSegment connectableSegment : list) {
            if (connectableSegment.getNext() == null) {
                Hyperplane hyperplane = connectableSegment.getNode().getCut().getHyperplane();
                BSPTree<Euclidean2D> endNode = connectableSegment.getEndNode();
                for (ConnectableSegment connectableSegment2 : list) {
                    if (connectableSegment2.getPrevious() == null && connectableSegment2.getNode().getCut().getHyperplane() == hyperplane && connectableSegment2.getStartNode() == endNode) {
                        connectableSegment.setNext(connectableSegment2);
                        connectableSegment2.setPrevious(connectableSegment);
                        i++;
                        break;
                    }
                }
            }
        }
        return i;
    }

    private static BSPTree<Euclidean2D> verticesToTree(double d2, Vector2D... vector2DArr) {
        int length = vector2DArr.length;
        if (length == 0) {
            return new BSPTree<>(Boolean.TRUE);
        }
        Vertex[] vertexArr = new Vertex[length];
        for (int i = 0; i < length; i++) {
            vertexArr[i] = new Vertex(vector2DArr[i]);
        }
        ArrayList arrayList = new ArrayList(length);
        int i2 = 0;
        while (i2 < length) {
            Vertex vertex = vertexArr[i2];
            i2++;
            Vertex vertex2 = vertexArr[i2 % length];
            Line lineSharedLineWith = vertex.sharedLineWith(vertex2);
            if (lineSharedLineWith == null) {
                lineSharedLineWith = new Line(vertex.getLocation(), vertex2.getLocation(), d2);
            }
            arrayList.add(new Edge(vertex, vertex2, lineSharedLineWith));
            for (int i3 = 0; i3 < length; i3++) {
                Vertex vertex3 = vertexArr[i3];
                if (vertex3 != vertex && vertex3 != vertex2 && FastMath.abs(lineSharedLineWith.getOffset((Point<Euclidean2D>) vertex3.getLocation())) <= d2) {
                    vertex3.bindWith(lineSharedLineWith);
                }
            }
        }
        BSPTree<Euclidean2D> bSPTree = new BSPTree<>();
        insertEdges(d2, bSPTree, arrayList);
        return bSPTree;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean2D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    protected void computeGeometricalProperties() {
        Vector2D[][] vertices = getVertices();
        if (vertices.length == 0) {
            BSPTree<Euclidean2D> tree = getTree(false);
            if (tree.getCut() == null && ((Boolean) tree.getAttribute()).booleanValue()) {
                setSize(Double.POSITIVE_INFINITY);
                setBarycenter((Point) Vector2D.NaN);
                return;
            } else {
                setSize(0.0d);
                setBarycenter((Point) new Vector2D(0.0d, 0.0d));
                return;
            }
        }
        if (vertices[0][0] == null) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector2D.NaN);
            return;
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        for (Vector2D[] vector2DArr : vertices) {
            double x = vector2DArr[vector2DArr.length - 1].getX();
            double y = vector2DArr[vector2DArr.length - 1].getY();
            int length = vector2DArr.length;
            int i = 0;
            while (i < length) {
                Vector2D vector2D = vector2DArr[i];
                double x2 = vector2D.getX();
                double y2 = vector2D.getY();
                double d5 = (x * y2) - (y * x2);
                d2 += d5;
                d3 += (x + x2) * d5;
                d4 += d5 * (y + y2);
                i++;
                x = x2;
                y = y2;
            }
        }
        if (d2 < 0.0d) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector2D.NaN);
        } else {
            setSize(d2 / 2.0d);
            double d6 = d2 * 3.0d;
            setBarycenter((Point) new Vector2D(d3 / d6, d4 / d6));
        }
    }

    public Vector2D[][] getVertices() {
        Iterator it;
        if (this.vertices == null) {
            int i = 0;
            if (getTree(false).getCut() == null) {
                this.vertices = new Vector2D[0][];
            } else {
                SegmentsBuilder segmentsBuilder = new SegmentsBuilder(getTolerance());
                int i2 = 1;
                getTree(true).visit(segmentsBuilder);
                List<ConnectableSegment> segments = segmentsBuilder.getSegments();
                int size = segments.size() - naturalFollowerConnections(segments);
                if (size > 0) {
                    size -= splitEdgeConnections(segments);
                }
                if (size > 0) {
                    closeVerticesConnections(segments);
                }
                ArrayList arrayList = new ArrayList();
                while (true) {
                    ConnectableSegment unprocessed = getUnprocessed(segments);
                    if (unprocessed == null) {
                        break;
                    }
                    List<Segment> listFollowLoop = followLoop(unprocessed);
                    if (listFollowLoop != null) {
                        if (listFollowLoop.get(0).getStart() == null) {
                            arrayList.add(0, listFollowLoop);
                        } else {
                            arrayList.add(listFollowLoop);
                        }
                    }
                }
                this.vertices = new Vector2D[arrayList.size()][];
                Iterator it2 = arrayList.iterator();
                int i3 = 0;
                while (it2.hasNext()) {
                    List<Segment> list = (List) it2.next();
                    Vector2D vector2D = null;
                    if (list.size() < 2 || (list.size() == 2 && ((Segment) list.get(i)).getStart() == null && ((Segment) list.get(i2)).getEnd() == null)) {
                        it = it2;
                        Line line = ((Segment) list.get(i)).getLine();
                        Vector2D[][] vector2DArr = this.vertices;
                        Vector2D[] vector2DArr2 = new Vector2D[3];
                        vector2DArr2[i] = null;
                        vector2DArr2[1] = line.toSpace((Point<Euclidean1D>) new Vector1D(-3.4028234663852886E38d));
                        vector2DArr2[2] = line.toSpace((Point<Euclidean1D>) new Vector1D(3.4028234663852886E38d));
                        vector2DArr[i3] = vector2DArr2;
                        i3++;
                    } else {
                        if (((Segment) list.get(i)).getStart() == null) {
                            int size2 = list.size() + 2;
                            Vector2D[] vector2DArr3 = new Vector2D[size2];
                            int i4 = 0;
                            for (Segment segment : list) {
                                if (i4 == 0) {
                                    double x = segment.getLine().toSubSpace((Point<Euclidean2D>) segment.getEnd()).getX();
                                    double dMax = x - FastMath.max(1.0d, FastMath.abs(x / 2.0d));
                                    int i5 = i4 + 1;
                                    vector2DArr3[i4] = vector2D;
                                    i4 = i5 + 1;
                                    vector2DArr3[i5] = segment.getLine().toSpace((Point<Euclidean1D>) new Vector1D(dMax));
                                }
                                int i6 = size2 - 1;
                                if (i4 < i6) {
                                    vector2DArr3[i4] = segment.getEnd();
                                    i4++;
                                }
                                if (i4 == i6) {
                                    double x2 = segment.getLine().toSubSpace((Point<Euclidean2D>) segment.getStart()).getX();
                                    vector2DArr3[i4] = segment.getLine().toSpace((Point<Euclidean1D>) new Vector1D(x2 + FastMath.max(1.0d, FastMath.abs(x2 / 2.0d))));
                                    i4++;
                                }
                                it2 = it2;
                                vector2D = null;
                            }
                            it = it2;
                            this.vertices[i3] = vector2DArr3;
                            i3++;
                        } else {
                            it = it2;
                            Vector2D[] vector2DArr4 = new Vector2D[list.size()];
                            Iterator it3 = list.iterator();
                            int i7 = 0;
                            while (it3.hasNext()) {
                                vector2DArr4[i7] = ((Segment) it3.next()).getStart();
                                i7++;
                            }
                            this.vertices[i3] = vector2DArr4;
                            i3++;
                        }
                        i = 0;
                    }
                    it2 = it;
                    i2 = 1;
                }
            }
        }
        return (Vector2D[][]) this.vertices.clone();
    }

    public PolygonsSet(BSPTree<Euclidean2D> bSPTree, double d2) {
        super(bSPTree, d2);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean2D>) bSPTree);
    }

    public PolygonsSet(Collection<SubHyperplane<Euclidean2D>> collection, double d2) {
        super(collection, d2);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public PolygonsSet buildNew(BSPTree<Euclidean2D> bSPTree) {
        return new PolygonsSet(bSPTree, getTolerance());
    }

    public PolygonsSet(double d2, double d3, double d4, double d5, double d6) {
        super(boxBoundary(d2, d3, d4, d5, d6), d6);
    }

    public PolygonsSet(double d2, Vector2D... vector2DArr) {
        super(verticesToTree(d2, vector2DArr), d2);
    }

    @Deprecated
    public PolygonsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(BSPTree<Euclidean2D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(Collection<SubHyperplane<Euclidean2D>> collection) {
        this(collection, 1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(double d2, double d3, double d4, double d5) {
        this(d2, d3, d4, d5, 1.0E-10d);
    }
}
