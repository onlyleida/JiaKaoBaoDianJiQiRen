package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractEvaluation implements LeastSquaresProblem.Evaluation {
    private final int observationSize;

    AbstractEvaluation(int i) {
        this.observationSize = i;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public double getCost() {
        RealVector arrayRealVector = new ArrayRealVector(getResiduals());
        return FastMath.sqrt(arrayRealVector.dotProduct(arrayRealVector));
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealMatrix getCovariances(double d2) {
        RealMatrix jacobian = getJacobian();
        return new QRDecomposition(jacobian.transpose().multiply(jacobian), d2).getSolver().getInverse();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public double getRMS() {
        double cost = getCost();
        return FastMath.sqrt((cost * cost) / ((double) this.observationSize));
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getSigma(double d2) {
        RealMatrix covariances = getCovariances(d2);
        int columnDimension = covariances.getColumnDimension();
        ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            arrayRealVector.setEntry(i, FastMath.sqrt(covariances.getEntry(i, i)));
        }
        return arrayRealVector;
    }
}
