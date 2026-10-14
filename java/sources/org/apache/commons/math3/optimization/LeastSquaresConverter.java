package org.apache.commons.math3.optimization;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.RealMatrix;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class LeastSquaresConverter implements MultivariateFunction {
    private final MultivariateVectorFunction function;
    private final double[] observations;
    private final RealMatrix scale;
    private final double[] weights;

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr) {
        this.function = multivariateVectorFunction;
        this.observations = (double[]) dArr.clone();
        this.weights = null;
        this.scale = null;
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        double[] dArrValue = this.function.value(dArr);
        if (dArrValue.length != this.observations.length) {
            throw new DimensionMismatchException(dArrValue.length, this.observations.length);
        }
        int i = 0;
        for (int i2 = 0; i2 < dArrValue.length; i2++) {
            dArrValue[i2] = dArrValue[i2] - this.observations[i2];
        }
        double d2 = 0.0d;
        if (this.weights != null) {
            while (i < dArrValue.length) {
                double d3 = dArrValue[i];
                d2 += this.weights[i] * d3 * d3;
                i++;
            }
        } else {
            RealMatrix realMatrix = this.scale;
            if (realMatrix != null) {
                double[] dArrOperate = realMatrix.operate(dArrValue);
                int length = dArrOperate.length;
                while (i < length) {
                    double d4 = dArrOperate[i];
                    d2 += d4 * d4;
                    i++;
                }
            } else {
                int length2 = dArrValue.length;
                while (i < length2) {
                    double d5 = dArrValue[i];
                    d2 += d5 * d5;
                    i++;
                }
            }
        }
        return d2;
    }

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr, double[] dArr2) {
        if (dArr.length == dArr2.length) {
            this.function = multivariateVectorFunction;
            this.observations = (double[]) dArr.clone();
            this.weights = (double[]) dArr2.clone();
            this.scale = null;
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr, RealMatrix realMatrix) {
        if (dArr.length == realMatrix.getColumnDimension()) {
            this.function = multivariateVectorFunction;
            this.observations = (double[]) dArr.clone();
            this.weights = null;
            this.scale = realMatrix.copy();
            return;
        }
        throw new DimensionMismatchException(dArr.length, realMatrix.getColumnDimension());
    }
}
