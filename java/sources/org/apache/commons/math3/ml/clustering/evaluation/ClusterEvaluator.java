package org.apache.commons.math3.ml.clustering.evaluation;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.ml.clustering.CentroidCluster;
import org.apache.commons.math3.ml.clustering.Cluster;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.clustering.DoublePoint;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ClusterEvaluator<T extends Clusterable> {
    private final DistanceMeasure measure;

    public ClusterEvaluator() {
        this(new EuclideanDistance());
    }

    protected Clusterable centroidOf(Cluster<T> cluster) {
        List<T> points = cluster.getPoints();
        if (points.isEmpty()) {
            return null;
        }
        if (cluster instanceof CentroidCluster) {
            return ((CentroidCluster) cluster).getCenter();
        }
        int length = points.get(0).getPoint().length;
        double[] dArr = new double[length];
        Iterator<T> it = points.iterator();
        while (it.hasNext()) {
            double[] point = it.next().getPoint();
            for (int i = 0; i < length; i++) {
                dArr[i] = dArr[i] + point[i];
            }
        }
        for (int i2 = 0; i2 < length; i2++) {
            dArr[i2] = dArr[i2] / ((double) points.size());
        }
        return new DoublePoint(dArr);
    }

    protected double distance(Clusterable clusterable, Clusterable clusterable2) {
        return this.measure.compute(clusterable.getPoint(), clusterable2.getPoint());
    }

    public boolean isBetterScore(double d2, double d3) {
        return d2 < d3;
    }

    public abstract double score(List<? extends Cluster<T>> list);

    public ClusterEvaluator(DistanceMeasure distanceMeasure) {
        this.measure = distanceMeasure;
    }
}
