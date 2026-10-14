package org.apache.commons.math3.ml.clustering;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class FuzzyKMeansClusterer<T extends Clusterable> extends Clusterer<T> {
    private static final double DEFAULT_EPSILON = 0.001d;
    private List<CentroidCluster<T>> clusters;
    private final double epsilon;
    private final double fuzziness;
    private final int k;
    private final int maxIterations;
    private double[][] membershipMatrix;
    private List<T> points;
    private final RandomGenerator random;

    public FuzzyKMeansClusterer(int i, double d2) throws NumberIsTooSmallException {
        this(i, d2, -1, new EuclideanDistance());
    }

    private double calculateMaxMembershipChange(double[][] dArr) {
        double dMax = 0.0d;
        for (int i = 0; i < this.points.size(); i++) {
            for (int i2 = 0; i2 < this.clusters.size(); i2++) {
                dMax = FastMath.max(FastMath.abs(this.membershipMatrix[i][i2] - dArr[i][i2]), dMax);
            }
        }
        return dMax;
    }

    private void initializeMembershipMatrix() {
        for (int i = 0; i < this.points.size(); i++) {
            for (int i2 = 0; i2 < this.k; i2++) {
                this.membershipMatrix[i][i2] = this.random.nextDouble();
            }
            double[][] dArr = this.membershipMatrix;
            dArr[i] = MathArrays.normalizeArray(dArr[i], 1.0d);
        }
    }

    private void saveMembershipMatrix(double[][] dArr) {
        for (int i = 0; i < this.points.size(); i++) {
            System.arraycopy(this.membershipMatrix[i], 0, dArr[i], 0, this.clusters.size());
        }
    }

    private void updateClusterCenters() {
        ArrayList arrayList = new ArrayList(this.k);
        Iterator<CentroidCluster<T>> it = this.clusters.iterator();
        int i = 0;
        while (it.hasNext()) {
            int length = it.next().getCenter().getPoint().length;
            double[] dArr = new double[length];
            double d2 = 0.0d;
            int i2 = 0;
            for (T t : this.points) {
                int i3 = i;
                double dPow = FastMath.pow(this.membershipMatrix[i2][i], this.fuzziness);
                double[] point = t.getPoint();
                for (int i4 = 0; i4 < length; i4++) {
                    dArr[i4] = dArr[i4] + (point[i4] * dPow);
                }
                d2 += dPow;
                i2++;
                i = i3;
            }
            MathArrays.scaleInPlace(1.0d / d2, dArr);
            arrayList.add(new CentroidCluster(new DoublePoint(dArr)));
            i++;
        }
        this.clusters.clear();
        this.clusters = arrayList;
    }

    private void updateMembershipMatrix() {
        double d2;
        double dPow;
        for (int i = 0; i < this.points.size(); i++) {
            T t = this.points.get(i);
            double d3 = Double.MIN_VALUE;
            int i2 = -1;
            for (int i3 = 0; i3 < this.clusters.size(); i3++) {
                double dAbs = FastMath.abs(distance(t, this.clusters.get(i3).getCenter()));
                double d4 = 0.0d;
                if (dAbs != 0.0d) {
                    Iterator<CentroidCluster<T>> it = this.clusters.iterator();
                    dPow = 0.0d;
                    while (true) {
                        if (!it.hasNext()) {
                            d2 = d4;
                            break;
                        }
                        double dAbs2 = FastMath.abs(distance(t, it.next().getCenter()));
                        if (dAbs2 == d4) {
                            d2 = d4;
                            dPow = Double.POSITIVE_INFINITY;
                            break;
                        } else {
                            dPow += FastMath.pow(dAbs / dAbs2, 2.0d / (this.fuzziness - 1.0d));
                            d4 = 0.0d;
                        }
                    }
                } else {
                    d2 = 0.0d;
                    dPow = 0.0d;
                }
                double d5 = dPow != d2 ? dPow == Double.POSITIVE_INFINITY ? d2 : 1.0d / dPow : 1.0d;
                double[][] dArr = this.membershipMatrix;
                dArr[i][i3] = d5;
                if (dArr[i][i3] > d3) {
                    d3 = dArr[i][i3];
                    i2 = i3;
                }
            }
            this.clusters.get(i2).addPoint(t);
        }
    }

    @Override // org.apache.commons.math3.ml.clustering.Clusterer
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException {
        MathUtils.checkNotNull(collection);
        int size = collection.size();
        int i = 0;
        if (size < this.k) {
            throw new NumberIsTooSmallException(Integer.valueOf(size), Integer.valueOf(this.k), false);
        }
        this.points = Collections.unmodifiableList(new ArrayList(collection));
        this.clusters = new ArrayList();
        this.membershipMatrix = (double[][]) Array.newInstance((Class<?>) double.class, size, this.k);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, size, this.k);
        if (size == 0) {
            return this.clusters;
        }
        initializeMembershipMatrix();
        int length = this.points.get(0).getPoint().length;
        for (int i2 = 0; i2 < this.k; i2++) {
            this.clusters.add(new CentroidCluster<>(new DoublePoint(new double[length])));
        }
        int i3 = this.maxIterations;
        if (i3 < 0) {
            i3 = Integer.MAX_VALUE;
        }
        do {
            saveMembershipMatrix(dArr);
            updateClusterCenters();
            updateMembershipMatrix();
            if (calculateMaxMembershipChange(dArr) <= this.epsilon) {
                break;
            }
            i++;
        } while (i < i3);
        return this.clusters;
    }

    public List<CentroidCluster<T>> getClusters() {
        return this.clusters;
    }

    public List<T> getDataPoints() {
        return this.points;
    }

    public double getEpsilon() {
        return this.epsilon;
    }

    public double getFuzziness() {
        return this.fuzziness;
    }

    public int getK() {
        return this.k;
    }

    public int getMaxIterations() {
        return this.maxIterations;
    }

    public RealMatrix getMembershipMatrix() {
        double[][] dArr = this.membershipMatrix;
        if (dArr != null) {
            return MatrixUtils.createRealMatrix(dArr);
        }
        throw new MathIllegalStateException();
    }

    public double getObjectiveFunctionValue() {
        List<T> list = this.points;
        if (list == null || this.clusters == null) {
            throw new MathIllegalStateException();
        }
        double dPow = 0.0d;
        int i = 0;
        for (T t : list) {
            Iterator<CentroidCluster<T>> it = this.clusters.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                double dDistance = distance(t, it.next().getCenter());
                dPow += dDistance * dDistance * FastMath.pow(this.membershipMatrix[i][i2], this.fuzziness);
                i2++;
            }
            i++;
        }
        return dPow;
    }

    public RandomGenerator getRandomGenerator() {
        return this.random;
    }

    public FuzzyKMeansClusterer(int i, double d2, int i2, DistanceMeasure distanceMeasure) throws NumberIsTooSmallException {
        this(i, d2, i2, distanceMeasure, DEFAULT_EPSILON, new JDKRandomGenerator());
    }

    public FuzzyKMeansClusterer(int i, double d2, int i2, DistanceMeasure distanceMeasure, double d3, RandomGenerator randomGenerator) throws NumberIsTooSmallException {
        super(distanceMeasure);
        if (d2 > 1.0d) {
            this.k = i;
            this.fuzziness = d2;
            this.maxIterations = i2;
            this.epsilon = d3;
            this.random = randomGenerator;
            this.membershipMatrix = null;
            this.points = null;
            this.clusters = null;
            return;
        }
        throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(1.0d), false);
    }
}
