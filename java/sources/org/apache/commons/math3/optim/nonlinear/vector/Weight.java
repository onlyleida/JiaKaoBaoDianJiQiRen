package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.OptimizationData;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class Weight implements OptimizationData {
    private final RealMatrix weightMatrix;

    public Weight(double[] dArr) {
        this.weightMatrix = new DiagonalMatrix(dArr);
    }

    public RealMatrix getWeight() {
        return this.weightMatrix.copy();
    }

    public Weight(RealMatrix realMatrix) {
        if (realMatrix.getColumnDimension() == realMatrix.getRowDimension()) {
            this.weightMatrix = realMatrix.copy();
            return;
        }
        throw new NonSquareMatrixException(realMatrix.getColumnDimension(), realMatrix.getRowDimension());
    }
}
