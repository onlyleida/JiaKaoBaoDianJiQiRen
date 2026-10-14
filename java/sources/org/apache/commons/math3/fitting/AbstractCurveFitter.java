package org.apache.commons.math3.fitting;

import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.fitting.leastsquares.LevenbergMarquardtOptimizer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractCurveFitter {

    protected static class TheoreticalValuesFunction {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ParametricUnivariateFunction f16180f;
        private final double[] points;

        public TheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction, Collection<WeightedObservedPoint> collection) {
            this.f16180f = parametricUnivariateFunction;
            this.points = new double[collection.size()];
            Iterator<WeightedObservedPoint> it = collection.iterator();
            int i = 0;
            while (it.hasNext()) {
                this.points[i] = it.next().getX();
                i++;
            }
        }

        public MultivariateVectorFunction getModelFunction() {
            return new MultivariateVectorFunction() { // from class: org.apache.commons.math3.fitting.AbstractCurveFitter.TheoreticalValuesFunction.1
                @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
                public double[] value(double[] dArr) {
                    int length = TheoreticalValuesFunction.this.points.length;
                    double[] dArr2 = new double[length];
                    for (int i = 0; i < length; i++) {
                        dArr2[i] = TheoreticalValuesFunction.this.f16180f.value(TheoreticalValuesFunction.this.points[i], dArr);
                    }
                    return dArr2;
                }
            };
        }

        public MultivariateMatrixFunction getModelFunctionJacobian() {
            return new MultivariateMatrixFunction() { // from class: org.apache.commons.math3.fitting.AbstractCurveFitter.TheoreticalValuesFunction.2
                @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
                public double[][] value(double[] dArr) {
                    int length = TheoreticalValuesFunction.this.points.length;
                    double[][] dArr2 = new double[length][];
                    for (int i = 0; i < length; i++) {
                        dArr2[i] = TheoreticalValuesFunction.this.f16180f.gradient(TheoreticalValuesFunction.this.points[i], dArr);
                    }
                    return dArr2;
                }
            };
        }
    }

    public double[] fit(Collection<WeightedObservedPoint> collection) {
        return getOptimizer().optimize(getProblem(collection)).getPoint().toArray();
    }

    protected LeastSquaresOptimizer getOptimizer() {
        return new LevenbergMarquardtOptimizer();
    }

    protected abstract LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection);
}
