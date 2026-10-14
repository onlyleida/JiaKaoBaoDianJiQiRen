package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer;
import org.apache.commons.math3.optim.nonlinear.vector.Weight;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class AbstractLeastSquaresOptimizer extends JacobianMultivariateVectorOptimizer {
    private double cost;
    private RealMatrix weightMatrixSqrt;

    protected AbstractLeastSquaresOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    private RealMatrix squareRoot(RealMatrix realMatrix) {
        if (!(realMatrix instanceof DiagonalMatrix)) {
            return new EigenDecomposition(realMatrix).getSquareRoot();
        }
        int rowDimension = realMatrix.getRowDimension();
        DiagonalMatrix diagonalMatrix = new DiagonalMatrix(rowDimension);
        for (int i = 0; i < rowDimension; i++) {
            diagonalMatrix.setEntry(i, i, FastMath.sqrt(realMatrix.getEntry(i, i)));
        }
        return diagonalMatrix;
    }

    protected double computeCost(double[] dArr) {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        return FastMath.sqrt(arrayRealVector.dotProduct(getWeight().operate(arrayRealVector)));
    }

    public double[][] computeCovariances(double[] dArr, double d2) {
        RealMatrix realMatrixComputeWeightedJacobian = computeWeightedJacobian(dArr);
        return new QRDecomposition(realMatrixComputeWeightedJacobian.transpose().multiply(realMatrixComputeWeightedJacobian), d2).getSolver().getInverse().getData();
    }

    protected double[] computeResiduals(double[] dArr) {
        double[] target = getTarget();
        if (dArr.length != target.length) {
            throw new DimensionMismatchException(target.length, dArr.length);
        }
        double[] dArr2 = new double[target.length];
        for (int i = 0; i < target.length; i++) {
            dArr2[i] = target[i] - dArr[i];
        }
        return dArr2;
    }

    public double[] computeSigma(double[] dArr, double d2) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        double[][] dArrComputeCovariances = computeCovariances(dArr, d2);
        for (int i = 0; i < length; i++) {
            dArr2[i] = FastMath.sqrt(dArrComputeCovariances[i][i]);
        }
        return dArr2;
    }

    protected RealMatrix computeWeightedJacobian(double[] dArr) {
        return this.weightMatrixSqrt.multiply(MatrixUtils.createRealMatrix(computeJacobian(dArr)));
    }

    public double getChiSquare() {
        double d2 = this.cost;
        return d2 * d2;
    }

    public double getRMS() {
        return FastMath.sqrt(getChiSquare() / ((double) getTargetSize()));
    }

    public RealMatrix getWeightSquareRoot() {
        return this.weightMatrixSqrt.copy();
    }

    @Override // org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer, org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Weight) {
                this.weightMatrixSqrt = squareRoot(((Weight) optimizationData).getWeight());
                return;
            }
        }
    }

    protected void setCost(double d2) {
        this.cost = d2;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer, org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return super.optimize(optimizationDataArr);
    }
}
