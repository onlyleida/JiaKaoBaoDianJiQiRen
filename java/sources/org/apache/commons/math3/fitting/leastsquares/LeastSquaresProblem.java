package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.OptimizationProblem;

/* JADX INFO: loaded from: classes6.dex */
public interface LeastSquaresProblem extends OptimizationProblem<Evaluation> {

    public interface Evaluation {
        double getCost();

        RealMatrix getCovariances(double d2);

        RealMatrix getJacobian();

        RealVector getPoint();

        double getRMS();

        RealVector getResiduals();

        RealVector getSigma(double d2);
    }

    Evaluation evaluate(RealVector realVector);

    int getObservationSize();

    int getParameterSize();

    RealVector getStart();
}
