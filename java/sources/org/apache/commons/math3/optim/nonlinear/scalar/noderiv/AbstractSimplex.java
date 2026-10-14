package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractSimplex implements OptimizationData {
    private final int dimension;
    private PointValuePair[] simplex;
    private double[][] startConfiguration;

    protected AbstractSimplex(int i) {
        this(i, 1.0d);
    }

    private static double[] createHypercubeSteps(int i, double d2) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = d2;
        }
        return dArr;
    }

    public void build(double[] dArr) {
        int i = this.dimension;
        if (i != dArr.length) {
            throw new DimensionMismatchException(this.dimension, dArr.length);
        }
        PointValuePair[] pointValuePairArr = new PointValuePair[i + 1];
        this.simplex = pointValuePairArr;
        pointValuePairArr[0] = new PointValuePair(dArr, Double.NaN);
        int i2 = 0;
        while (true) {
            int i3 = this.dimension;
            if (i2 >= i3) {
                return;
            }
            double[] dArr2 = this.startConfiguration[i2];
            double[] dArr3 = new double[i3];
            for (int i4 = 0; i4 < this.dimension; i4++) {
                dArr3[i4] = dArr[i4] + dArr2[i4];
            }
            i2++;
            this.simplex[i2] = new PointValuePair(dArr3, Double.NaN);
        }
    }

    public void evaluate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        int i = 0;
        while (true) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i >= pointValuePairArr.length) {
                Arrays.sort(pointValuePairArr, comparator);
                return;
            }
            PointValuePair pointValuePair = pointValuePairArr[i];
            double[] pointRef = pointValuePair.getPointRef();
            if (Double.isNaN(pointValuePair.getValue().doubleValue())) {
                this.simplex[i] = new PointValuePair(pointRef, multivariateFunction.value(pointRef), false);
            }
            i++;
        }
    }

    public int getDimension() {
        return this.dimension;
    }

    public PointValuePair getPoint(int i) {
        if (i >= 0) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i < pointValuePairArr.length) {
                return pointValuePairArr[i];
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.simplex.length - 1));
    }

    public PointValuePair[] getPoints() {
        PointValuePair[] pointValuePairArr = this.simplex;
        PointValuePair[] pointValuePairArr2 = new PointValuePair[pointValuePairArr.length];
        System.arraycopy(pointValuePairArr, 0, pointValuePairArr2, 0, pointValuePairArr.length);
        return pointValuePairArr2;
    }

    public int getSize() {
        return this.simplex.length;
    }

    public abstract void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator);

    protected void replaceWorstPoint(PointValuePair pointValuePair, Comparator<PointValuePair> comparator) {
        int i = 0;
        while (true) {
            int i2 = this.dimension;
            if (i >= i2) {
                this.simplex[i2] = pointValuePair;
                return;
            }
            if (comparator.compare(this.simplex[i], pointValuePair) > 0) {
                PointValuePair[] pointValuePairArr = this.simplex;
                PointValuePair pointValuePair2 = pointValuePairArr[i];
                pointValuePairArr[i] = pointValuePair;
                pointValuePair = pointValuePair2;
            }
            i++;
        }
    }

    protected void setPoint(int i, PointValuePair pointValuePair) {
        if (i >= 0) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i < pointValuePairArr.length) {
                pointValuePairArr[i] = pointValuePair;
                return;
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.simplex.length - 1));
    }

    protected void setPoints(PointValuePair[] pointValuePairArr) {
        if (pointValuePairArr.length != this.simplex.length) {
            throw new DimensionMismatchException(pointValuePairArr.length, this.simplex.length);
        }
        this.simplex = pointValuePairArr;
    }

    protected AbstractSimplex(int i, double d2) {
        this(createHypercubeSteps(i, d2));
    }

    protected AbstractSimplex(double[] dArr) {
        int i;
        if (dArr != null) {
            if (dArr.length != 0) {
                int length = dArr.length;
                this.dimension = length;
                this.startConfiguration = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
                int i2 = 0;
                while (i2 < this.dimension) {
                    double[] dArr2 = this.startConfiguration[i2];
                    int i3 = 0;
                    while (true) {
                        i = i2 + 1;
                        if (i3 < i) {
                            if (dArr[i3] != 0.0d) {
                                i3++;
                                System.arraycopy(dArr, 0, dArr2, 0, i3);
                            } else {
                                throw new ZeroException(LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX, new Object[0]);
                            }
                        }
                    }
                    i2 = i;
                }
                return;
            }
            throw new ZeroException();
        }
        throw new NullArgumentException();
    }

    protected AbstractSimplex(double[][] dArr) {
        boolean z;
        if (dArr.length > 0) {
            int length = dArr.length - 1;
            this.dimension = length;
            this.startConfiguration = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
            double[] dArr2 = dArr[0];
            for (int i = 0; i < dArr.length; i++) {
                double[] dArr3 = dArr[i];
                if (dArr3.length != this.dimension) {
                    throw new DimensionMismatchException(dArr3.length, this.dimension);
                }
                for (int i2 = 0; i2 < i; i2++) {
                    double[] dArr4 = dArr[i2];
                    int i3 = 0;
                    while (true) {
                        if (i3 >= this.dimension) {
                            z = true;
                            break;
                        } else {
                            if (dArr3[i3] != dArr4[i3]) {
                                z = false;
                                break;
                            }
                            i3++;
                        }
                    }
                    if (z) {
                        throw new MathIllegalArgumentException(LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX, Integer.valueOf(i), Integer.valueOf(i2));
                    }
                }
                if (i > 0) {
                    double[] dArr5 = this.startConfiguration[i - 1];
                    for (int i4 = 0; i4 < this.dimension; i4++) {
                        dArr5[i4] = dArr3[i4] - dArr2[i4];
                    }
                }
            }
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SIMPLEX_NEED_ONE_POINT, Integer.valueOf(dArr.length));
    }
}
