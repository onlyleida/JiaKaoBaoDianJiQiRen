package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optim.PointValuePair;

/* JADX INFO: loaded from: classes6.dex */
public class MultiDirectionalSimplex extends AbstractSimplex {
    private static final double DEFAULT_GAMMA = 0.5d;
    private static final double DEFAULT_KHI = 2.0d;
    private final double gamma;
    private final double khi;

    public MultiDirectionalSimplex(int i) {
        this(i, 1.0d);
    }

    private PointValuePair evaluateNewSimplex(MultivariateFunction multivariateFunction, PointValuePair[] pointValuePairArr, double d2, Comparator<PointValuePair> comparator) {
        double[] pointRef = pointValuePairArr[0].getPointRef();
        setPoint(0, pointValuePairArr[0]);
        int dimension = getDimension();
        for (int i = 1; i < getSize(); i++) {
            double[] pointRef2 = pointValuePairArr[i].getPointRef();
            double[] dArr = new double[dimension];
            for (int i2 = 0; i2 < dimension; i2++) {
                dArr[i2] = pointRef[i2] + ((pointRef[i2] - pointRef2[i2]) * d2);
            }
            setPoint(i, new PointValuePair(dArr, Double.NaN, false));
        }
        evaluate(multivariateFunction, comparator);
        return getPoint(0);
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.noderiv.AbstractSimplex
    public void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        PointValuePair[] points = getPoints();
        PointValuePair pointValuePair = points[0];
        PointValuePair pointValuePairEvaluateNewSimplex = evaluateNewSimplex(multivariateFunction, points, 1.0d, comparator);
        if (comparator.compare(pointValuePairEvaluateNewSimplex, pointValuePair) >= 0) {
            evaluateNewSimplex(multivariateFunction, points, this.gamma, comparator);
            return;
        }
        PointValuePair[] points2 = getPoints();
        if (comparator.compare(pointValuePairEvaluateNewSimplex, evaluateNewSimplex(multivariateFunction, points, this.khi, comparator)) <= 0) {
            setPoints(points2);
        }
    }

    public MultiDirectionalSimplex(int i, double d2) {
        this(i, d2, DEFAULT_KHI, DEFAULT_GAMMA);
    }

    public MultiDirectionalSimplex(int i, double d2, double d3) {
        this(i, 1.0d, d2, d3);
    }

    public MultiDirectionalSimplex(int i, double d2, double d3, double d4) {
        super(i, d2);
        this.khi = d3;
        this.gamma = d4;
    }

    public MultiDirectionalSimplex(double[] dArr) {
        this(dArr, DEFAULT_KHI, DEFAULT_GAMMA);
    }

    public MultiDirectionalSimplex(double[] dArr, double d2, double d3) {
        super(dArr);
        this.khi = d2;
        this.gamma = d3;
    }

    public MultiDirectionalSimplex(double[][] dArr) {
        this(dArr, DEFAULT_KHI, DEFAULT_GAMMA);
    }

    public MultiDirectionalSimplex(double[][] dArr, double d2, double d3) {
        super(dArr);
        this.khi = d2;
        this.gamma = d3;
    }
}
