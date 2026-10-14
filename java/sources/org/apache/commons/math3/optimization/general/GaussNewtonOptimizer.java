package org.apache.commons.math3.optimization.general;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.optimization.SimpleVectorValueChecker;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class GaussNewtonOptimizer extends AbstractLeastSquaresOptimizer {
    private final boolean useLU;

    @Deprecated
    public GaussNewtonOptimizer() {
        this(true);
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer
    public PointVectorValuePair doOptimize() {
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
        int i3 = 0;
        while (!zConverged) {
            i3++;
            double[] dArrComputeObjectiveValue = computeObjectiveValue(startPoint);
            double[] dArrComputeResiduals = computeResiduals(dArrComputeObjectiveValue);
            RealMatrix realMatrixComputeWeightedJacobian = computeWeightedJacobian(startPoint);
            PointVectorValuePair pointVectorValuePair2 = new PointVectorValuePair(startPoint, dArrComputeObjectiveValue);
            double[] dArr2 = new double[length2];
            int[] iArr = new int[2];
            iArr[1] = length2;
            iArr[i] = length2;
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, iArr);
            int i4 = 0;
            while (i4 < length) {
                double[] row = realMatrixComputeWeightedJacobian.getRow(i4);
                double d2 = dArr[i4];
                double d3 = dArrComputeResiduals[i4] * d2;
                while (i < length2) {
                    dArr2[i] = dArr2[i] + (row[i] * d3);
                    i++;
                }
                int i5 = 0;
                while (i5 < length2) {
                    double[] dArr4 = dArr3[i5];
                    double d4 = row[i5] * d2;
                    int i6 = length;
                    for (int i7 = 0; i7 < length2; i7++) {
                        dArr4[i7] = dArr4[i7] + (row[i7] * d4);
                    }
                    i5++;
                    length = i6;
                }
                i4++;
                i = 0;
            }
            int i8 = length;
            try {
                BlockRealMatrix blockRealMatrix = new BlockRealMatrix(dArr3);
                double[] array = (this.useLU ? new LUDecomposition(blockRealMatrix).getSolver() : new QRDecomposition(blockRealMatrix).getSolver()).solve(new ArrayRealVector(dArr2, false)).toArray();
                for (int i9 = 0; i9 < length2; i9++) {
                    startPoint[i9] = startPoint[i9] + array[i9];
                }
                if (pointVectorValuePair != null && (zConverged = convergenceChecker.converged(i3, pointVectorValuePair, pointVectorValuePair2))) {
                    this.cost = computeCost(dArrComputeResiduals);
                    this.point = pointVectorValuePair2.getPoint();
                    return pointVectorValuePair2;
                }
                pointVectorValuePair = pointVectorValuePair2;
                length = i8;
                i = 0;
            } catch (SingularMatrixException unused) {
                throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, new Object[0]);
            }
        }
        throw new MathInternalError();
    }

    public GaussNewtonOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(true, convergenceChecker);
    }

    @Deprecated
    public GaussNewtonOptimizer(boolean z) {
        this(z, new SimpleVectorValueChecker());
    }

    public GaussNewtonOptimizer(boolean z, ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.useLU = z;
    }
}
