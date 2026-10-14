package org.apache.commons.math3.stat.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.clustering.Clusterable;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class DBSCANClusterer<T extends Clusterable<T>> {
    private final double eps;
    private final int minPts;

    private enum PointStatus {
        NOISE,
        PART_OF_CLUSTER
    }

    public DBSCANClusterer(double d2, int i) throws NotPositiveException {
        if (d2 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d2));
        }
        if (i < 0) {
            throw new NotPositiveException(Integer.valueOf(i));
        }
        this.eps = d2;
        this.minPts = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Cluster<T> expandCluster(Cluster<T> cluster, T t, List<T> list, Collection<T> collection, Map<Clusterable<T>, PointStatus> map) {
        cluster.addPoint(t);
        map.put(t, PointStatus.PART_OF_CLUSTER);
        List<T> arrayList = new ArrayList<>(list);
        for (int i = 0; i < arrayList.size(); i++) {
            T t2 = arrayList.get(i);
            PointStatus pointStatus = (PointStatus) map.get(t2);
            if (pointStatus == null) {
                List<T> neighbors = getNeighbors(t2, collection);
                if (neighbors.size() >= this.minPts) {
                    arrayList = merge(arrayList, neighbors);
                }
            }
            PointStatus pointStatus2 = PointStatus.PART_OF_CLUSTER;
            if (pointStatus != pointStatus2) {
                map.put(t2, pointStatus2);
                cluster.addPoint(t2);
            }
        }
        return cluster;
    }

    private List<T> getNeighbors(T t, Collection<T> collection) {
        ArrayList arrayList = new ArrayList();
        for (T t2 : collection) {
            if (t != t2 && t2.distanceFrom(t) <= this.eps) {
                arrayList.add(t2);
            }
        }
        return arrayList;
    }

    private List<T> merge(List<T> list, List<T> list2) {
        HashSet hashSet = new HashSet(list);
        for (T t : list2) {
            if (!hashSet.contains(t)) {
                list.add(t);
            }
        }
        return list;
    }

    public List<Cluster<T>> cluster(Collection<T> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (T t : collection) {
            if (map.get(t) == null) {
                List<T> neighbors = getNeighbors(t, collection);
                if (neighbors.size() >= this.minPts) {
                    arrayList.add(expandCluster(new Cluster<>(null), t, neighbors, collection, map));
                } else {
                    map.put(t, PointStatus.NOISE);
                }
            }
        }
        return arrayList;
    }

    public double getEps() {
        return this.eps;
    }

    public int getMinPts() {
        return this.minPts;
    }
}
