package org.apache.commons.math3.geometry.partitioning;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.geometry.Space;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractSubHyperplane<S extends Space, T extends Space> implements SubHyperplane<S> {
    private final Hyperplane<S> hyperplane;
    private final Region<T> remainingRegion;

    protected AbstractSubHyperplane(Hyperplane<S> hyperplane, Region<T> region) {
        this.hyperplane = hyperplane;
        this.remainingRegion = region;
    }

    private BSPTree<T> recurseTransform(BSPTree<T> bSPTree, Hyperplane<S> hyperplane, Transform<S, T> transform, Map<BSPTree<T>, BSPTree<T>> map) {
        BSPTree<T> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(bSPTree.getAttribute());
        } else {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusOutside() == null ? null : transform.apply(boundaryAttribute.getPlusOutside(), this.hyperplane, hyperplane), boundaryAttribute.getPlusInside() != null ? transform.apply(boundaryAttribute.getPlusInside(), this.hyperplane, hyperplane) : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(transform.apply(bSPTree.getCut(), this.hyperplane, hyperplane), recurseTransform(bSPTree.getPlus(), hyperplane, transform, map), recurseTransform(bSPTree.getMinus(), hyperplane, transform, map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }

    public AbstractSubHyperplane<S, T> applyTransform(Transform<S, T> transform) {
        BoundaryAttribute boundaryAttribute;
        Hyperplane<S> hyperplaneApply = transform.apply(this.hyperplane);
        HashMap map = new HashMap();
        BSPTree<T> bSPTreeRecurseTransform = recurseTransform(this.remainingRegion.getTree(false), hyperplaneApply, transform, map);
        for (Map.Entry<BSPTree<T>, BSPTree<T>> entry : map.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it = boundaryAttribute.getSplitters().iterator();
                while (it.hasNext()) {
                    boundaryAttribute2.getSplitters().add(map.get(it.next()));
                }
            }
        }
        return buildNew(hyperplaneApply, this.remainingRegion.buildNew(bSPTreeRecurseTransform));
    }

    protected abstract AbstractSubHyperplane<S, T> buildNew(Hyperplane<S> hyperplane, Region<T> region);

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public Hyperplane<S> getHyperplane() {
        return this.hyperplane;
    }

    public Region<T> getRemainingRegion() {
        return this.remainingRegion;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public double getSize() {
        return this.remainingRegion.getSize();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public boolean isEmpty() {
        return this.remainingRegion.isEmpty();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    @Deprecated
    public Side side(Hyperplane<S> hyperplane) {
        return split(hyperplane).getSide();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public abstract SubHyperplane.SplitSubHyperplane<S> split(Hyperplane<S> hyperplane);

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public AbstractSubHyperplane<S, T> copySelf() {
        return buildNew(this.hyperplane.copySelf(), this.remainingRegion);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public AbstractSubHyperplane<S, T> reunite(SubHyperplane<S> subHyperplane) {
        return buildNew(this.hyperplane, new RegionFactory().union(this.remainingRegion, ((AbstractSubHyperplane) subHyperplane).remainingRegion));
    }
}
