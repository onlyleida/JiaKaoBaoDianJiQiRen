package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;

/* JADX INFO: loaded from: classes6.dex */
public class BoundaryAttribute<S extends Space> {
    private final SubHyperplane<S> plusInside;
    private final SubHyperplane<S> plusOutside;
    private final NodesSet<S> splitters;

    @Deprecated
    public BoundaryAttribute(SubHyperplane<S> subHyperplane, SubHyperplane<S> subHyperplane2) {
        this(subHyperplane, subHyperplane2, null);
    }

    public SubHyperplane<S> getPlusInside() {
        return this.plusInside;
    }

    public SubHyperplane<S> getPlusOutside() {
        return this.plusOutside;
    }

    public NodesSet<S> getSplitters() {
        return this.splitters;
    }

    BoundaryAttribute(SubHyperplane<S> subHyperplane, SubHyperplane<S> subHyperplane2, NodesSet<S> nodesSet) {
        this.plusOutside = subHyperplane;
        this.plusInside = subHyperplane2;
        this.splitters = nodesSet;
    }
}
