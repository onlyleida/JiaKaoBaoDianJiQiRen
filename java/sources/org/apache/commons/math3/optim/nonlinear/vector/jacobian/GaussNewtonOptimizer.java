package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class GaussNewtonOptimizer extends AbstractLeastSquaresOptimizer {
    private final boolean useLU;

    public GaussNewtonOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(true, convergenceChecker);
    }

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    public GaussNewtonOptimizer(boolean z, ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.useLU = z;
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair doOptimize() {
        checkParameters();
        ConvergenceChecker<PointVectorValuePair> convergenceChecker = getConvergenceChecker();
        if (convergenceChecker == null) {
            throw new NullArgumentException();
        }
        int length = getTarget().length;
        RealMatrix weight = getWeight();
        double[] dArr = new double[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            dArr[i2] = weight.getEntry(i2, i2);
        }
        double[] startPoint = getStartPoint();
        int length2 = startPoint.length;
        PointVectorValuePair pointVectorValuePair = null;
        boolean zConverged = false;
        while (!zConverged) {
            incrementIterationCount();
            double[] dArrComputeObjectiveValue = computeObjectiveValue(startPoint);
            double[] dArrComputeResiduals = computeResiduals(dArrComputeObjectiveValue);
            RealMatrix realMatrixComputeWeightedJacobian = computeWeightedJacobian(startPoint);
            PointVectorValuePair pointVectorValuePair2 = new PointVectorValuePair(startPoint, dArrComputeObjectiveValue);
            double[] dArr2 = new double[length2];
            int[] iArr = new int[2];
            iArr[1] = length2;
            iArr[i] = length2;
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, iArr);
            int i3 = 0;
            while (i3 < length) {
                double[] row = realMatrixComputeWeightedJacobian.getRow(i3);
                double d2 = dArr[i3];
                double d3 = dArrComputeResiduals[i3] * d2;
                while (i < length2) {
                    dArr2[i] = dArr2[i] + (row[i] * d3);
                    i++;
                }
                int i4 = 0;
                while (i4 < length2) {
                    double[] dArr4 = dArr3[i4];
                    double d4 = row[i4] * d2;
                    int i5 = length;
                    for (int i6 = 0; i6 < length2; i6++) {
                        dArr4[i6] = dArr4[i6] + (row[i6] * d4);
                    }
                    i4++;
                    length = i5;
                }
                i3++;
                i = 0;
            }
            int i7 = length;
            if (pointVectorValuePair != null && (zConverged = convergenceChecker.converged(getIterations(), pointVectorValuePair, pointVectorValuePair2))) {
                setCost(computeCost(dArrComputeResiduals));
                return pointVectorValuePair2;
            }
            try {
                BlockRealMatrix blockRealMatrix = new BlockRealMatrix(dArr3);
                double[] array = (this.useLU ? new LUDecomposition(blockRealMatrix).getSolver() : new QRDecomposition(blockRealMatrix).getSolver()).solve(new ArrayRealVector(dArr2, false)).toArray();
                for (int i8 = 0; i8 < length2; i8++) {
                    startPoint[i8] = startPoint[i8] + array[i8];
                }
                pointVectorValuePair = pointVectorValuePair2;
                length = i7;
                i = 0;
            } catch (SingularMatrixException unused) {
                throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, new Object[0]);
            }
        }
        throw new MathInternalError();
    }
}
