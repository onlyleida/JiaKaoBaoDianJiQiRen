package org.apache.commons.math3.geometry.spherical.oned;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class ArcsSet extends AbstractRegion<Sphere1D, Sphere1D> implements Iterable<double[]> {

    public static class InconsistentStateAt2PiWrapping extends MathIllegalArgumentException {
        private static final long serialVersionUID = 20140107;

        public InconsistentStateAt2PiWrapping() {
            super(LocalizedFormats.INCONSISTENT_STATE_AT_2_PI_WRAPPING, new Object[0]);
        }
    }

    public static class Split {
        private final ArcsSet minus;
        private final ArcsSet plus;

        public ArcsSet getMinus() {
            return this.minus;
        }

        public ArcsSet getPlus() {
            return this.plus;
        }

        public Side getSide() {
            if (this.plus != null) {
                return this.minus != null ? Side.BOTH : Side.PLUS;
            }
            return this.minus != null ? Side.MINUS : Side.HYPER;
        }

        private Split(ArcsSet arcsSet, ArcsSet arcsSet2) {
            this.plus = arcsSet;
            this.minus = arcsSet2;
        }
    }

    private class SubArcsIterator implements Iterator<double[]> {
        private BSPTree<Sphere1D> current;
        private final BSPTree<Sphere1D> firstStart;
        private double[] pending;

        SubArcsIterator() {
            BSPTree<Sphere1D> firstArcStart = ArcsSet.this.getFirstArcStart();
            this.firstStart = firstArcStart;
            this.current = firstArcStart;
            if (firstArcStart != null) {
                selectPending();
            } else if (((Boolean) ArcsSet.this.getFirstLeaf(ArcsSet.this.getTree(false)).getAttribute()).booleanValue()) {
                this.pending = new double[]{0.0d, 6.283185307179586d};
            } else {
                this.pending = null;
            }
        }

        private void selectPending() {
            BSPTree<Sphere1D> bSPTreeNextInternalNode = this.current;
            while (bSPTreeNextInternalNode != null && !ArcsSet.this.isArcStart(bSPTreeNextInternalNode)) {
                bSPTreeNextInternalNode = ArcsSet.this.nextInternalNode(bSPTreeNextInternalNode);
            }
            if (bSPTreeNextInternalNode == null) {
                this.current = null;
                this.pending = null;
                return;
            }
            BSPTree<Sphere1D> bSPTreeNextInternalNode2 = bSPTreeNextInternalNode;
            while (bSPTreeNextInternalNode2 != null && !ArcsSet.this.isArcEnd(bSPTreeNextInternalNode2)) {
                bSPTreeNextInternalNode2 = ArcsSet.this.nextInternalNode(bSPTreeNextInternalNode2);
            }
            if (bSPTreeNextInternalNode2 != null) {
                this.pending = new double[]{ArcsSet.this.getAngle(bSPTreeNextInternalNode), ArcsSet.this.getAngle(bSPTreeNextInternalNode2)};
                this.current = bSPTreeNextInternalNode2;
                return;
            }
            BSPTree<Sphere1D> bSPTreePreviousInternalNode = this.firstStart;
            while (bSPTreePreviousInternalNode != null && !ArcsSet.this.isArcEnd(bSPTreePreviousInternalNode)) {
                bSPTreePreviousInternalNode = ArcsSet.this.previousInternalNode(bSPTreePreviousInternalNode);
            }
            if (bSPTreePreviousInternalNode == null) {
                throw new MathInternalError();
            }
            this.pending = new double[]{ArcsSet.this.getAngle(bSPTreeNextInternalNode), ArcsSet.this.getAngle(bSPTreePreviousInternalNode) + 6.283185307179586d};
            this.current = null;
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

    public ArcsSet(double d2) {
        super(d2);
    }

    private void addArcLimit(BSPTree<Sphere1D> bSPTree, double d2, boolean z) {
        LimitAngle limitAngle = new LimitAngle(new S1Point(d2), !z, getTolerance());
        BSPTree<S> cell = bSPTree.getCell(limitAngle.getLocation(), getTolerance());
        if (cell.getCut() != null) {
            throw new MathInternalError();
        }
        cell.insertCut(limitAngle);
        cell.setAttribute(null);
        cell.getPlus().setAttribute(Boolean.FALSE);
        cell.getMinus().setAttribute(Boolean.TRUE);
    }

    private static BSPTree<Sphere1D> buildTree(double d2, double d3, double d4) throws NumberIsTooLargeException {
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        if (!Precision.equals(d2, d3, 0)) {
            double d5 = d3 - d2;
            if (d5 < 6.283185307179586d) {
                if (d2 > d3) {
                    throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d2), Double.valueOf(d3), true);
                }
                double dNormalizeAngle = MathUtils.normalizeAngle(d2, 3.141592653589793d);
                double d6 = d5 + dNormalizeAngle;
                SubLimitAngle subLimitAngleWholeHyperplane = new LimitAngle(new S1Point(dNormalizeAngle), false, d4).wholeHyperplane();
                if (d6 > 6.283185307179586d) {
                    return new BSPTree<>(subLimitAngleWholeHyperplane, new BSPTree(new LimitAngle(new S1Point(d6 - 6.283185307179586d), true, d4).wholeHyperplane(), new BSPTree(bool), new BSPTree(bool2), null), new BSPTree(bool2), null);
                }
                return new BSPTree<>(subLimitAngleWholeHyperplane, new BSPTree(bool), new BSPTree(new LimitAngle(new S1Point(d6), true, d4).wholeHyperplane(), new BSPTree(bool), new BSPTree(bool2), null), null);
            }
        }
        return new BSPTree<>(bool2);
    }

    private void check2PiConsistency() throws InconsistentStateAt2PiWrapping {
        BSPTree<Sphere1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return;
        }
        Boolean bool = (Boolean) getFirstLeaf(tree).getAttribute();
        Boolean bool2 = (Boolean) getLastLeaf(tree).getAttribute();
        if (bool2.booleanValue() ^ bool.booleanValue()) {
            throw new InconsistentStateAt2PiWrapping();
        }
    }

    private BSPTree<Sphere1D> childAfter(BSPTree<Sphere1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getPlus() : bSPTree.getMinus();
    }

    private BSPTree<Sphere1D> childBefore(BSPTree<Sphere1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getMinus() : bSPTree.getPlus();
    }

    private ArcsSet createSplitPart(List<Double> list) {
        if (list.isEmpty()) {
            return null;
        }
        int i = 0;
        while (i < list.size()) {
            int size = (i + 1) % list.size();
            double dDoubleValue = list.get(i).doubleValue();
            if (FastMath.abs(MathUtils.normalizeAngle(list.get(size).doubleValue(), dDoubleValue) - dDoubleValue) <= getTolerance()) {
                if (size > 0) {
                    list.remove(size);
                    list.remove(i);
                    i--;
                } else {
                    double dDoubleValue2 = list.remove(list.size() - 1).doubleValue();
                    double dDoubleValue3 = list.remove(0).doubleValue();
                    if (list.isEmpty()) {
                        if (dDoubleValue2 - dDoubleValue3 > 3.141592653589793d) {
                            return new ArcsSet((BSPTree<Sphere1D>) new BSPTree(Boolean.TRUE), getTolerance());
                        }
                        return null;
                    }
                    list.add(Double.valueOf(list.remove(0).doubleValue() + 6.283185307179586d));
                }
            }
            i++;
        }
        BSPTree<Sphere1D> bSPTree = new BSPTree<>(Boolean.FALSE);
        for (int i2 = 0; i2 < list.size() - 1; i2 += 2) {
            addArcLimit(bSPTree, list.get(i2).doubleValue(), true);
            addArcLimit(bSPTree, list.get(i2 + 1).doubleValue(), false);
        }
        if (bSPTree.getCut() == null) {
            return null;
        }
        return new ArcsSet(bSPTree, getTolerance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getAngle(BSPTree<Sphere1D> bSPTree) {
        return ((LimitAngle) bSPTree.getCut().getHyperplane()).getLocation().getAlpha();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.spherical.oned.ArcsSet] */
    public BSPTree<Sphere1D> getFirstArcStart() {
        BSPTree bSPTreeNextInternalNode;
        BSPTree tree = getTree(false);
        if (tree.getCut() == null) {
            return null;
        }
        BSPTree parent = getFirstLeaf(tree).getParent();
        while (bSPTreeNextInternalNode != null && !isArcStart(bSPTreeNextInternalNode)) {
            bSPTreeNextInternalNode = parent;
            bSPTreeNextInternalNode = nextInternalNode(bSPTreeNextInternalNode);
        }
        bSPTreeNextInternalNode = parent;
        return bSPTreeNextInternalNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BSPTree<Sphere1D> getFirstLeaf(BSPTree<Sphere1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Sphere1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = previousInternalNode(bSPTree);
        }
        return leafBefore(bSPTree2);
    }

    private BSPTree<Sphere1D> getLastLeaf(BSPTree<Sphere1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Sphere1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = nextInternalNode(bSPTree);
        }
        return leafAfter(bSPTree2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isAfterParent(BSPTree<Sphere1D> bSPTree) {
        BSPTree<S> parent = bSPTree.getParent();
        return parent != 0 && bSPTree == childAfter(parent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isArcEnd(BSPTree<Sphere1D> bSPTree) {
        return ((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && !((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isArcStart(BSPTree<Sphere1D> bSPTree) {
        return !((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && ((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isBeforeParent(BSPTree<Sphere1D> bSPTree) {
        BSPTree<S> parent = bSPTree.getParent();
        return parent != 0 && bSPTree == childBefore(parent);
    }

    private boolean isDirect(BSPTree<Sphere1D> bSPTree) {
        return ((LimitAngle) bSPTree.getCut().getHyperplane()).isDirect();
    }

    private BSPTree<Sphere1D> leafAfter(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> bSPTreeChildAfter = childAfter(bSPTree);
        while (bSPTreeChildAfter.getCut() != null) {
            bSPTreeChildAfter = childBefore(bSPTreeChildAfter);
        }
        return bSPTreeChildAfter;
    }

    private BSPTree<Sphere1D> leafBefore(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> bSPTreeChildBefore = childBefore(bSPTree);
        while (bSPTreeChildBefore.getCut() != null) {
            bSPTreeChildBefore = childAfter(bSPTreeChildBefore);
        }
        return bSPTreeChildBefore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BSPTree<Sphere1D> nextInternalNode(BSPTree<Sphere1D> bSPTree) {
        if (childAfter(bSPTree).getCut() != null) {
            return leafAfter(bSPTree).getParent();
        }
        while (isAfterParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BSPTree<Sphere1D> previousInternalNode(BSPTree<Sphere1D> bSPTree) {
        if (childBefore(bSPTree).getCut() != null) {
            return leafBefore(bSPTree).getParent();
        }
        while (isBeforeParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public List<Arc> asList() {
        ArrayList arrayList = new ArrayList();
        for (double[] dArr : this) {
            arrayList.add(new Arc(dArr[0], dArr[1], getTolerance()));
        }
        return arrayList;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere1D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    protected void computeGeometricalProperties() {
        double d2 = 0.0d;
        if (getTree(false).getCut() == null) {
            setBarycenter(S1Point.NaN);
            setSize(((Boolean) getTree(false).getAttribute()).booleanValue() ? 6.283185307179586d : 0.0d);
            return;
        }
        double d3 = 0.0d;
        for (double[] dArr : this) {
            double d4 = dArr[1] - dArr[0];
            d2 += d4;
            d3 += d4 * (dArr[0] + dArr[1]);
        }
        setSize(d2);
        if (Precision.equals(d2, 6.283185307179586d, 0)) {
            setBarycenter(S1Point.NaN);
        } else if (d2 >= Precision.SAFE_MIN) {
            setBarycenter(new S1Point(d3 / (d2 * 2.0d)));
        } else {
            setBarycenter(((LimitAngle) getTree(false).getCut().getHyperplane()).getLocation());
        }
    }

    @Override // java.lang.Iterable
    public Iterator<double[]> iterator() {
        return new SubArcsIterator();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public BoundaryProjection<Sphere1D> projectToBoundary(Point<Sphere1D> point) {
        double alpha = ((S1Point) point).getAlpha();
        double d2 = Double.NaN;
        double d3 = Double.NaN;
        boolean z = false;
        for (double[] dArr : this) {
            if (Double.isNaN(d3)) {
                d3 = dArr[0];
            }
            if (!z) {
                if (alpha < dArr[0]) {
                    if (!Double.isNaN(d2)) {
                        double d4 = alpha - d2;
                        double d5 = dArr[0] - alpha;
                        return d4 < d5 ? new BoundaryProjection<>(point, new S1Point(d2), d4) : new BoundaryProjection<>(point, new S1Point(dArr[0]), d5);
                    }
                    z = true;
                } else if (alpha <= dArr[1]) {
                    double d6 = dArr[0] - alpha;
                    double d7 = alpha - dArr[1];
                    return d6 < d7 ? new BoundaryProjection<>(point, new S1Point(dArr[1]), d7) : new BoundaryProjection<>(point, new S1Point(dArr[0]), d6);
                }
            }
            d2 = dArr[1];
        }
        if (Double.isNaN(d2)) {
            return new BoundaryProjection<>(point, null, 6.283185307179586d);
        }
        if (z) {
            double d8 = alpha - (d2 - 6.283185307179586d);
            double d9 = d3 - alpha;
            return d8 < d9 ? new BoundaryProjection<>(point, new S1Point(d2), d8) : new BoundaryProjection<>(point, new S1Point(d3), d9);
        }
        double d10 = alpha - d2;
        double d11 = (6.283185307179586d + d3) - alpha;
        return d10 < d11 ? new BoundaryProjection<>(point, new S1Point(d2), d10) : new BoundaryProjection<>(point, new S1Point(d3), d11);
    }

    @Deprecated
    public Side side(Arc arc) {
        return split(arc).getSide();
    }

    public Split split(Arc arc) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        double inf = arc.getInf() + 3.141592653589793d;
        double sup = arc.getSup() - arc.getInf();
        for (double[] dArr : this) {
            double dNormalizeAngle = MathUtils.normalizeAngle(dArr[0], inf) - arc.getInf();
            double d2 = dArr[0] - dNormalizeAngle;
            double d3 = dArr[1] - d2;
            if (dNormalizeAngle < sup) {
                arrayList.add(Double.valueOf(dArr[0]));
                if (d3 > sup) {
                    double d4 = sup + d2;
                    arrayList.add(Double.valueOf(d4));
                    arrayList2.add(Double.valueOf(d4));
                    if (d3 > 6.283185307179586d) {
                        double d5 = d2 + 6.283185307179586d;
                        arrayList2.add(Double.valueOf(d5));
                        arrayList.add(Double.valueOf(d5));
                        arrayList.add(Double.valueOf(dArr[1]));
                    } else {
                        arrayList2.add(Double.valueOf(dArr[1]));
                    }
                } else {
                    arrayList.add(Double.valueOf(dArr[1]));
                }
            } else {
                arrayList2.add(Double.valueOf(dArr[0]));
                if (d3 > 6.283185307179586d) {
                    double d6 = d2 + 6.283185307179586d;
                    arrayList2.add(Double.valueOf(d6));
                    arrayList.add(Double.valueOf(d6));
                    double d7 = sup + 6.283185307179586d;
                    if (d3 > d7) {
                        double d8 = d7 + d2;
                        arrayList.add(Double.valueOf(d8));
                        arrayList2.add(Double.valueOf(d8));
                        arrayList2.add(Double.valueOf(dArr[1]));
                    } else {
                        arrayList.add(Double.valueOf(dArr[1]));
                    }
                } else {
                    arrayList2.add(Double.valueOf(dArr[1]));
                }
            }
        }
        return new Split(createSplitPart(arrayList));
    }

    public ArcsSet(double d2, double d3, double d4) throws NumberIsTooLargeException {
        super(buildTree(d2, d3, d4), d4);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere1D>) bSPTree);
    }

    public ArcsSet(BSPTree<Sphere1D> bSPTree, double d2) throws InconsistentStateAt2PiWrapping {
        super(bSPTree, d2);
        check2PiConsistency();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public ArcsSet buildNew(BSPTree<Sphere1D> bSPTree) {
        return new ArcsSet(bSPTree, getTolerance());
    }

    public ArcsSet(Collection<SubHyperplane<Sphere1D>> collection, double d2) throws InconsistentStateAt2PiWrapping {
        super(collection, d2);
        check2PiConsistency();
    }
}
