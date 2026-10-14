package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Space;

/* JADX INFO: loaded from: classes6.dex */
public class NodesSet<S extends Space> implements Iterable<BSPTree<S>> {
    private List<BSPTree<S>> list = new ArrayList();

    public void add(BSPTree<S> bSPTree) {
        Iterator<BSPTree<S>> it = this.list.iterator();
        while (it.hasNext()) {
            if (bSPTree == it.next()) {
                return;
            }
        }
        this.list.add(bSPTree);
    }

    public void addAll(Iterable<BSPTree<S>> iterable) {
        Iterator<BSPTree<S>> it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    @Override // java.lang.Iterable
    public Iterator<BSPTree<S>> iterator() {
        return this.list.iterator();
    }
}
