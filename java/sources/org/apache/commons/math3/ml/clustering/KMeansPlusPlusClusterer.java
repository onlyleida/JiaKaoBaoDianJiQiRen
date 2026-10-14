package org.apache.commons.math3.ml.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class KMeansPlusPlusClusterer<T extends Clusterable> extends Clusterer<T> {
    private final EmptyClusterStrategy emptyStrategy;
    private final int k;
    private final int maxIterations;
    private final RandomGenerator random;

    /* JADX INFO: renamed from: org.apache.commons.math3.ml.clustering.KMeansPlusPlusClusterer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy;

        static {
            int[] iArr = new int[EmptyClusterStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy = iArr;
            try {
                iArr[EmptyClusterStrategy.LARGEST_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[EmptyClusterStrategy.LARGEST_POINTS_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[EmptyClusterStrategy.FARTHEST_POINT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum EmptyClusterStrategy {
        LARGEST_VARIANCE,
        LARGEST_POINTS_NUMBER,
        FARTHEST_POINT,
        ERROR
    }

    public KMeansPlusPlusClusterer(int i) {
        this(i, -1);
    }

    private int assignPointsToClusters(List<CentroidCluster<T>> list, Collection<T> collection, int[] iArr) {
        int i = 0;
        int i2 = 0;
        for (T t : collection) {
            int nearestCluster = getNearestCluster(list, t);
            if (nearestCluster != iArr[i2]) {
                i++;
            }
            list.get(nearestCluster).addPoint(t);
            iArr[i2] = nearestCluster;
            i2++;
        }
        return i;
    }

    private Clusterable centroidOf(Collection<T> collection, int i) {
        int i2;
        double[] dArr = new double[i];
        Iterator<T> it = collection.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            double[] point = it.next().getPoint();
            while (i2 < i) {
                dArr[i2] = dArr[i2] + point[i2];
                i2++;
            }
        }
        while (i2 < i) {
            dArr[i2] = dArr[i2] / ((double) collection.size());
            i2++;
        }
        return new DoublePoint(dArr);
    }

    private List<CentroidCluster<T>> chooseInitialCenters(Collection<T> collection) {
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(collection));
        int size = listUnmodifiableList.size();
        boolean[] zArr = new boolean[size];
        ArrayList arrayList = new ArrayList();
        int iNextInt = this.random.nextInt(size);
        Clusterable clusterable = (Clusterable) listUnmodifiableList.get(iNextInt);
        arrayList.add(new CentroidCluster(clusterable));
        zArr[iNextInt] = true;
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            if (i != iNextInt) {
                double dDistance = distance(clusterable, (Clusterable) listUnmodifiableList.get(i));
                dArr[i] = dDistance * dDistance;
            }
        }
        while (arrayList.size() < this.k) {
            double d2 = 0.0d;
            double d3 = 0.0d;
            for (int i2 = 0; i2 < size; i2++) {
                if (!zArr[i2]) {
                    d3 += dArr[i2];
                }
            }
            double dNextDouble = this.random.nextDouble() * d3;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i3 = -1;
                    break;
                }
                if (!zArr[i3]) {
                    d2 += dArr[i3];
                    if (d2 >= dNextDouble) {
                        break;
                    }
                }
                i3++;
            }
            if (i3 == -1) {
                for (int i4 = size - 1; i4 >= 0; i4--) {
                    if (!zArr[i4]) {
                        i3 = i4;
                        break;
                    }
                }
            }
            if (i3 < 0) {
                break;
            }
            Clusterable clusterable2 = (Clusterable) listUnmodifiableList.get(i3);
            arrayList.add(new CentroidCluster(clusterable2));
            zArr[i3] = true;
            if (arrayList.size() < this.k) {
                for (int i5 = 0; i5 < size; i5++) {
                    if (!zArr[i5]) {
                        double dDistance2 = distance(clusterable2, (Clusterable) listUnmodifiableList.get(i5));
                        double d4 = dDistance2 * dDistance2;
                        if (d4 < dArr[i5]) {
                            dArr[i5] = d4;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private T getFarthestPoint(Collection<CentroidCluster<T>> collection) throws ConvergenceException {
        Iterator<CentroidCluster<T>> it = collection.iterator();
        double d2 = Double.NEGATIVE_INFINITY;
        CentroidCluster<T> centroidCluster = null;
        int i = -1;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CentroidCluster<T> next = it.next();
            Clusterable center = next.getCenter();
            List<T> points = next.getPoints();
            for (int i2 = 0; i2 < points.size(); i2++) {
                double dDistance = distance(points.get(i2), center);
                if (dDistance > d2) {
                    centroidCluster = next;
                    i = i2;
                    d2 = dDistance;
                }
            }
        }
        if (centroidCluster != null) {
            return centroidCluster.getPoints().remove(i);
        }
        throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
    }

    private int getNearestCluster(Collection<CentroidCluster<T>> collection, T t) {
        Iterator<CentroidCluster<T>> it = collection.iterator();
        int i = 0;
        double d2 = Double.MAX_VALUE;
        int i2 = 0;
        while (it.hasNext()) {
            double dDistance = distance(t, it.next().getCenter());
            if (dDistance < d2) {
                i = i2;
                d2 = dDistance;
            }
            i2++;
        }
        return i;
    }

    private T getPointFromLargestNumberCluster(Collection<? extends Cluster<T>> collection) throws ConvergenceException {
        Cluster<T> cluster = null;
        int i = 0;
        for (Cluster<T> cluster2 : collection) {
            int size = cluster2.getPoints().size();
            if (size > i) {
                cluster = cluster2;
                i = size;
            }
        }
        if (cluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = cluster.getPoints();
        return points.remove(this.random.nextInt(points.size()));
    }

    private T getPointFromLargestVarianceCluster(Collection<CentroidCluster<T>> collection) throws ConvergenceException {
        double d2 = Double.NEGATIVE_INFINITY;
        CentroidCluster<T> centroidCluster = null;
        for (CentroidCluster<T> centroidCluster2 : collection) {
            if (!centroidCluster2.getPoints().isEmpty()) {
                Clusterable center = centroidCluster2.getCenter();
                Variance variance = new Variance();
                Iterator<T> it = centroidCluster2.getPoints().iterator();
                while (it.hasNext()) {
                    variance.increment(distance(it.next(), center));
                }
                double result = variance.getResult();
                if (result > d2) {
                    centroidCluster = centroidCluster2;
                    d2 = result;
                }
            }
        }
        if (centroidCluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = centroidCluster.getPoints();
        return points.remove(this.random.nextInt(points.size()));
    }

    @Override // org.apache.commons.math3.ml.clustering.Clusterer
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws ConvergenceException, MathIllegalArgumentException {
        Clusterable clusterableCentroidOf;
        MathUtils.checkNotNull(collection);
        if (collection.size() < this.k) {
            throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), Integer.valueOf(this.k), false);
        }
        List<CentroidCluster<T>> listChooseInitialCenters = chooseInitialCenters(collection);
        int[] iArr = new int[collection.size()];
        assignPointsToClusters(listChooseInitialCenters, collection, iArr);
        int i = this.maxIterations;
        if (i < 0) {
            i = Integer.MAX_VALUE;
        }
        int i2 = 0;
        while (i2 < i) {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (CentroidCluster<T> centroidCluster : listChooseInitialCenters) {
                boolean z2 = true;
                if (centroidCluster.getPoints().isEmpty()) {
                    int i3 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[this.emptyStrategy.ordinal()];
                    if (i3 == 1) {
                        clusterableCentroidOf = getPointFromLargestVarianceCluster(listChooseInitialCenters);
                    } else if (i3 == 2) {
                        clusterableCentroidOf = getPointFromLargestNumberCluster(listChooseInitialCenters);
                    } else {
                        if (i3 != 3) {
                            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
                        }
                        clusterableCentroidOf = getFarthestPoint(listChooseInitialCenters);
                    }
                } else {
                    z2 = z;
                    clusterableCentroidOf = centroidOf(centroidCluster.getPoints(), centroidCluster.getCenter().getPoint().length);
                }
                arrayList.add(new CentroidCluster<>(clusterableCentroidOf));
                z = z2;
            }
            if (assignPointsToClusters(arrayList, collection, iArr) == 0 && !z) {
                return arrayList;
            }
            i2++;
            listChooseInitialCenters = arrayList;
        }
        return listChooseInitialCenters;
    }

    public EmptyClusterStrategy getEmptyClusterStrategy() {
        return this.emptyStrategy;
    }

    public int getK() {
        return this.k;
    }

    public int getMaxIterations() {
        return this.maxIterations;
    }

    public RandomGenerator getRandomGenerator() {
        return this.random;
    }

    public KMeansPlusPlusClusterer(int i, int i2) {
        this(i, i2, new EuclideanDistance());
    }

    public KMeansPlusPlusClusterer(int i, int i2, DistanceMeasure distanceMeasure) {
        this(i, i2, distanceMeasure, new JDKRandomGenerator());
    }

    public KMeansPlusPlusClusterer(int i, int i2, DistanceMeasure distanceMeasure, RandomGenerator randomGenerator) {
        this(i, i2, distanceMeasure, randomGenerator, EmptyClusterStrategy.LARGEST_VARIANCE);
    }

    public KMeansPlusPlusClusterer(int i, int i2, DistanceMeasure distanceMeasure, RandomGenerator randomGenerator, EmptyClusterStrategy emptyClusterStrategy) {
        super(distanceMeasure);
        this.k = i;
        this.maxIterations = i2;
        this.random = randomGenerator;
        this.emptyStrategy = emptyClusterStrategy;
    }
}
