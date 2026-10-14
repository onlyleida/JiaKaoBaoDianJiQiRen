package org.apache.commons.math3.geometry.euclidean.oned;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class IntervalsSet extends AbstractRegion<Euclidean1D, Euclidean1D> implements Iterable<double[]> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;

    private class SubIntervalsIterator implements Iterator<double[]> {
        private BSPTree<Euclidean1D> current;
        private double[] pending;

        SubIntervalsIterator() {
            BSPTree<Euclidean1D> firstIntervalBoundary = IntervalsSet.this.getFirstIntervalBoundary();
            this.current = firstIntervalBoundary;
            if (firstIntervalBoundary == null) {
                if (((Boolean) IntervalsSet.this.getFirstLeaf(IntervalsSet.this.getTree(false)).getAttribute()).booleanValue()) {
                    this.pending = new double[]{Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY};
                    return;
                } else {
                    this.pending = null;
                    return;
                }
            }
            if (IntervalsSet.this.isIntervalEnd(firstIntervalBoundary)) {
                this.pending = new double[]{Double.NEGATIVE_INFINITY, IntervalsSet.this.getAngle(this.current)};
            } else {
                selectPending();
            }
        }

        private void selectPending() {
            BSPTree<Euclidean1D> bSPTreeNextInternalNode = this.current;
            while (bSPTreeNextInternalNode != null && !IntervalsSet.this.isIntervalStart(bSPTreeNextInternalNode)) {
                bSPTreeNextInternalNode = IntervalsSet.this.nextInternalNode(bSPTreeNextInternalNode);
            }
            if (bSPTreeNextInternalNode == null) {
                this.current = null;
                this.pending = null;
                return;
            }
            BSPTree<Euclidean1D> bSPTreeNextInternalNode2 = bSPTreeNextInternalNode;
            while (bSPTreeNextInternalNode2 != null && !IntervalsSet.this.isIntervalEnd(bSPTreeNextInternalNode2)) {
                bSPTreeNextInternalNode2 = IntervalsSet.this.nextInternalNode(bSPTreeNextInternalNode2);
            }
            if (bSPTreeNextInternalNode2 != null) {
                this.pending = new double[]{IntervalsSet.this.getAngle(bSPTreeNextInternalNode), IntervalsSet.this.getAngle(bSPTreeNextInternalNode2)};
                this.current = bSPTreeNextInternalNode2;
            } else {
                this.pending = new double[]{IntervalsSet.this.getAngle(bSPTreeNextInternalNode), Double.POSITIVE_INFINITY};
                this.current = null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.pending != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public double[] next() {
            double[] dArr = this.pending;
            if (dArr == null) {
                throw new NoSuchElementException();
            }
            selectPending();
            return dArr;
        }
    }

    public IntervalsSet(double d2) {
        super(d2);
    }

    private static BSPTree<Euclidean1D> buildTree(double d2, double d3, double d4) {
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        if (Double.isInfinite(d2) && d2 < 0.0d) {
            return (!Double.isInfinite(d3) || d3 <= 0.0d) ? new BSPTree<>(new OrientedPoint(new Vector1D(d3), true, d4).wholeHyperplane(), new BSPTree(bool), new BSPTree(bool2), null) : new BSPTree<>(bool2);
        }
        SubOrientedPoint subOrientedPointWholeHyperplane = new OrientedPoint(new Vector1D(d2), false, d4).wholeHyperplane();
        if (!Double.isInfinite(d3) || d3 <= 0.0d) {
            return new BSPTree<>(subOrientedPointWholeHyperplane, new BSPTree(bool), new BSPTree(new OrientedPoint(new Vector1D(d3), true, d4).wholeHyperplane(), new BSPTree(bool), new BSPTree(bool2), null), null);
        }
        return new BSPTree<>(subOrientedPointWholeHyperplane, new BSPTree(bool), new BSPTree(bool2), null);
    }

    private BSPTree<Euclidean1D> childAfter(BSPTree<Euclidean1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getPlus() : bSPTree.getMinus();
    }

    private BSPTree<Euclidean1D> childBefore(BSPTree<Euclidean1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getMinus() : bSPTree.getPlus();
    }

    private Vector1D finiteOrNullPoint(double d2) {
        if (Double.isInfinite(d2)) {
            return null;
        }
        return new Vector1D(d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getAngle(BSPTree<Euclidean1D> bSPTree) {
        return ((OrientedPoint) bSPTree.getCut().getHyperplane()).getLocation().getX();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet, org.apache.commons.math3.geometry.partitioning.AbstractRegion] */
    public BSPTree<Euclidean1D> getFirstIntervalBoundary() {
        BSPTree bSPTreeNextInternalNode;
        BSPTree tree = getTree(false);
        if (tree.getCut() == null) {
            return null;
        }
        BSPTree parent = getFirstLeaf(tree).getParent();
        while (bSPTreeNextInternalNode != null && !isIntervalStart(bSPTreeNextInternalNode) && !isIntervalEnd(bSPTreeNextInternalNode)) {
            bSPTreeNextInternalNode = parent;
            bSPTreeNextInternalNode = nextInternalNode(bSPTreeNextInternalNode);
        }
        bSPTreeNextInternalNode = parent;
        return bSPTreeNextInternalNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BSPTree<Euclidean1D> getFirstLeaf(BSPTree<Euclidean1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Euclidean1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = previousInternalNode(bSPTree);
        }
        return leafBefore(bSPTree2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isAfterParent(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<S> parent = bSPTree.getParent();
        return parent != 0 && bSPTree == childAfter(parent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isBeforeParent(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<S> parent = bSPTree.getParent();
        return parent != 0 && bSPTree == childBefore(parent);
    }

    private boolean isDirect(BSPTree<Euclidean1D> bSPTree) {
        return ((OrientedPoint) bSPTree.getCut().getHyperplane()).isDirect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isIntervalEnd(BSPTree<Euclidean1D> bSPTree) {
        return ((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && !((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isIntervalStart(BSPTree<Euclidean1D> bSPTree) {
        return !((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && ((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    private BSPTree<Euclidean1D> leafAfter(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> bSPTreeChildAfter = childAfter(bSPTree);
        while (bSPTreeChildAfter.getCut() != null) {
            bSPTreeChildAfter = childBefore(bSPTreeChildAfter);
        }
        return bSPTreeChildAfter;
    }

    private BSPTree<Euclidean1D> leafBefore(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> bSPTreeChildBefore = childBefore(bSPTree);
        while (bSPTreeChildBefore.getCut() != null) {
            bSPTreeChildBefore = childAfter(bSPTreeChildBefore);
        }
        return bSPTreeChildBefore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BSPTree<Euclidean1D> nextInternalNode(BSPTree<Euclidean1D> bSPTree) {
        if (childAfter(bSPTree).getCut() != null) {
            return leafAfter(bSPTree).getParent();
        }
        while (isAfterParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    private BSPTree<Euclidean1D> previousInternalNode(BSPTree<Euclidean1D> bSPTree) {
        if (childBefore(bSPTree).getCut() != null) {
            return leafBefore(bSPTree).getParent();
        }
        while (isBeforeParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public List<Interval> asList() {
        ArrayList arrayList = new ArrayList();
        for (double[] dArr : this) {
            arrayList.add(new Interval(dArr[0], dArr[1]));
        }
        return arrayList;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean1D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    protected void computeGeometricalProperties() {
        double size = 0.0d;
        if (getTree(false).getCut() == null) {
            setBarycenter((Point) Vector1D.NaN);
            setSize(((Boolean) getTree(false).getAttribute()).booleanValue() ? Double.POSITIVE_INFINITY : 0.0d);
            return;
        }
        double size2 = 0.0d;
        for (Interval interval : asList()) {
            size += interval.getSize();
            size2 += interval.getSize() * interval.getBarycenter();
        }
        setSize(size);
        if (Double.isInfinite(size)) {
            setBarycenter((Point) Vector1D.NaN);
        } else if (size >= Precision.SAFE_MIN) {
            setBarycenter((Point) new Vector1D(size2 / size));
        } else {
            setBarycenter((Point) ((OrientedPoint) getTree(false).getCut().getHyperplane()).getLocation());
        }
    }

    public double getInf() {
        BSPTree<Euclidean1D> tree = getTree(false);
        double d2 = Double.POSITIVE_INFINITY;
        while (tree.getCut() != null) {
            OrientedPoint orientedPoint = (OrientedPoint) tree.getCut().getHyperplane();
            double x = orientedPoint.getLocation().getX();
            tree = orientedPoint.isDirect() ? tree.getMinus() : tree.getPlus();
            d2 = x;
        }
        if (((Boolean) tree.getAttribute()).booleanValue()) {
            return Double.NEGATIVE_INFINITY;
        }
        return d2;
    }

    public double getSup() {
        BSPTree<Euclidean1D> tree = getTree(false);
        double d2 = Double.NEGATIVE_INFINITY;
        while (tree.getCut() != null) {
            OrientedPoint orientedPoint = (OrientedPoint) tree.getCut().getHyperplane();
            double x = orientedPoint.getLocation().getX();
            tree = orientedPoint.isDirect() ? tree.getPlus() : tree.getMinus();
            d2 = x;
        }
        if (((Boolean) tree.getAttribute()).booleanValue()) {
            return Double.POSITIVE_INFINITY;
        }
        return d2;
    }

    @Override // java.lang.Iterable
    public Iterator<double[]> iterator() {
        return new SubIntervalsIterator();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public BoundaryProjection<Euclidean1D> projectToBoundary(Point<Euclidean1D> point) {
        double x = ((Vector1D) point).getX();
        double d2 = Double.NEGATIVE_INFINITY;
        for (double[] dArr : this) {
            if (x < dArr[0]) {
                double d3 = x - d2;
                double d4 = dArr[0] - x;
                return d3 < d4 ? new BoundaryProjection<>(point, finiteOrNullPoint(d2), d3) : new BoundaryProjection<>(point, finiteOrNullPoint(dArr[0]), d4);
            }
            if (x <= dArr[1]) {
                double d5 = dArr[0] - x;
                double d6 = x - dArr[1];
                return d5 < d6 ? new BoundaryProjection<>(point, finiteOrNullPoint(dArr[1]), d6) : new BoundaryProjection<>(point, finiteOrNullPoint(dArr[0]), d5);
            }
            d2 = dArr[1];
        }
        return new BoundaryProjection<>(point, finiteOrNullPoint(d2), x - d2);
    }

    public IntervalsSet(double d2, double d3, double d4) {
        super(buildTree(d2, d3, d4), d4);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean1D>) bSPTree);
    }

    public IntervalsSet(BSPTree<Euclidean1D> bSPTree, double d2) {
        super(bSPTree, d2);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public IntervalsSet buildNew(BSPTree<Euclidean1D> bSPTree) {
        return new IntervalsSet(bSPTree, getTolerance());
    }

    public IntervalsSet(Collection<SubHyperplane<Euclidean1D>> collection, double d2) {
        super(collection, d2);
    }

    @Deprecated
    public IntervalsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(double d2, double d3) {
        this(d2, d3, 1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(BSPTree<Euclidean1D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(Collection<SubHyperplane<Euclidean1D>> collection) {
        this(collection, 1.0E-10d);
    }
}
