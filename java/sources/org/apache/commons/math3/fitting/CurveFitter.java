package org.apache.commons.math3.fitting;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.optim.InitialGuess;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.nonlinear.vector.ModelFunction;
import org.apache.commons.math3.optim.nonlinear.vector.ModelFunctionJacobian;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.optim.nonlinear.vector.Target;
import org.apache.commons.math3.optim.nonlinear.vector.Weight;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class CurveFitter<T extends ParametricUnivariateFunction> {
    private final List<WeightedObservedPoint> observations = new ArrayList();
    private final MultivariateVectorOptimizer optimizer;

    private class TheoreticalValuesFunction {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ParametricUnivariateFunction f16181f;

        TheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f16181f = parametricUnivariateFunction;
        }

        public ModelFunction getModelFunction() {
            return new ModelFunction(new MultivariateVectorFunction() { // from class: org.apache.commons.math3.fitting.CurveFitter.TheoreticalValuesFunction.1
                @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
                public double[] value(double[] dArr) {
                    double[] dArr2 = new double[CurveFitter.this.observations.size()];
                    Iterator it = CurveFitter.this.observations.iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        dArr2[i] = TheoreticalValuesFunction.this.f16181f.value(((WeightedObservedPoint) it.next()).getX(), dArr);
                        i++;
                    }
                    return dArr2;
                }
            });
        }

        public ModelFunctionJacobian getModelFunctionJacobian() {
            return new ModelFunctionJacobian(new MultivariateMatrixFunction() { // from class: org.apache.commons.math3.fitting.CurveFitter.TheoreticalValuesFunction.2
                @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
                public double[][] value(double[] dArr) {
                    double[][] dArr2 = new double[CurveFitter.this.observations.size()][];
                    Iterator it = CurveFitter.this.observations.iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        dArr2[i] = TheoreticalValuesFunction.this.f16181f.gradient(((WeightedObservedPoint) it.next()).getX(), dArr);
                        i++;
                    }
                    return dArr2;
                }
            });
        }
    }

    public CurveFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        this.optimizer = multivariateVectorOptimizer;
    }

    public void addObservedPoint(double d2, double d3) {
        addObservedPoint(1.0d, d2, d3);
    }

    public void clearObservations() {
        this.observations.clear();
    }

    public double[] fit(T t, double[] dArr) {
        return fit(Integer.MAX_VALUE, t, dArr);
    }

    public WeightedObservedPoint[] getObservations() {
        List<WeightedObservedPoint> list = this.observations;
        return (WeightedObservedPoint[]) list.toArray(new WeightedObservedPoint[list.size()]);
    }

    public void addObservedPoint(double d2, double d3, double d4) {
        this.observations.add(new WeightedObservedPoint(d2, d3, d4));
    }

    public double[] fit(int i, T t, double[] dArr) {
        double[] dArr2 = new double[this.observations.size()];
        double[] dArr3 = new double[this.observations.size()];
        int i2 = 0;
        for (WeightedObservedPoint weightedObservedPoint : this.observations) {
            dArr2[i2] = weightedObservedPoint.getY();
            dArr3[i2] = weightedObservedPoint.getWeight();
            i2++;
        }
        TheoreticalValuesFunction theoreticalValuesFunction = new TheoreticalValuesFunction(t);
        return this.optimizer.optimize(new MaxEval(i), theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian(), new Target(dArr2), new Weight(dArr3), new InitialGuess(dArr)).getPointRef();
    }

    public void addObservedPoint(WeightedObservedPoint weightedObservedPoint) {
        this.observations.add(weightedObservedPoint);
    }
}
