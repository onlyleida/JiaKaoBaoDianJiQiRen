package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class CholeskyDecomposition {
    public static final double DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD = 1.0E-10d;
    public static final double DEFAULT_RELATIVE_SYMMETRY_THRESHOLD = 1.0E-15d;
    private RealMatrix cachedL;
    private RealMatrix cachedLT;
    private double[][] lTData;

    private static class Solver implements DecompositionSolver {
        private final double[][] lTData;

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.lTData.length));
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            return true;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            int length = this.lTData.length;
            if (realVector.getDimension() != length) {
                throw new DimensionMismatchException(realVector.getDimension(), length);
            }
            double[] array = realVector.toArray();
            int i = 0;
            while (i < length) {
                double[] dArr = this.lTData[i];
                array[i] = array[i] / dArr[i];
                double d2 = array[i];
                i++;
                for (int i2 = i; i2 < length; i2++) {
                    array[i2] = array[i2] - (dArr[i2] * d2);
                }
            }
            for (int i3 = length - 1; i3 >= 0; i3--) {
                array[i3] = array[i3] / this.lTData[i3][i3];
                double d3 = array[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    array[i4] = array[i4] - (this.lTData[i4][i3] * d3);
                }
            }
            return new ArrayRealVector(array, false);
        }

        private Solver(double[][] dArr) {
            this.lTData = dArr;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            int length = this.lTData.length;
            if (realMatrix.getRowDimension() == length) {
                int columnDimension = realMatrix.getColumnDimension();
                double[][] data = realMatrix.getData();
                int i = 0;
                while (i < length) {
                    double[] dArr = this.lTData[i];
                    double d2 = dArr[i];
                    double[] dArr2 = data[i];
                    for (int i2 = 0; i2 < columnDimension; i2++) {
                        dArr2[i2] = dArr2[i2] / d2;
                    }
                    i++;
                    for (int i3 = i; i3 < length; i3++) {
                        double[] dArr3 = data[i3];
                        double d3 = dArr[i3];
                        for (int i4 = 0; i4 < columnDimension; i4++) {
                            dArr3[i4] = dArr3[i4] - (dArr2[i4] * d3);
                        }
                    }
                }
                for (int i5 = length - 1; i5 >= 0; i5--) {
                    double d4 = this.lTData[i5][i5];
                    double[] dArr4 = data[i5];
                    for (int i6 = 0; i6 < columnDimension; i6++) {
                        dArr4[i6] = dArr4[i6] / d4;
                    }
                    for (int i7 = 0; i7 < i5; i7++) {
                        double[] dArr5 = data[i7];
                        double d5 = this.lTData[i7][i5];
                        for (int i8 = 0; i8 < columnDimension; i8++) {
                            dArr5[i8] = dArr5[i8] - (dArr4[i8] * d5);
                        }
                    }
                }
                return new Array2DRowRealMatrix(data);
            }
            throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
        }
    }

    public CholeskyDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 1.0E-15d, 1.0E-10d);
    }

    public double getDeterminant() {
        double d2 = 1.0d;
        int i = 0;
        while (true) {
            double[][] dArr = this.lTData;
            if (i >= dArr.length) {
                return d2;
            }
            double d3 = dArr[i][i];
            d2 *= d3 * d3;
            i++;
        }
    }

    public RealMatrix getL() {
        if (this.cachedL == null) {
            this.cachedL = getLT().transpose();
        }
        return this.cachedL;
    }

    public RealMatrix getLT() {
        if (this.cachedLT == null) {
            this.cachedLT = MatrixUtils.createRealMatrix(this.lTData);
        }
        return this.cachedLT;
    }

    public DecompositionSolver getSolver() {
        return new Solver(this.lTData);
    }

    public CholeskyDecomposition(RealMatrix realMatrix, double d2, double d3) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        this.lTData = realMatrix.getData();
        this.cachedL = null;
        this.cachedLT = null;
        int i = 0;
        while (i < rowDimension) {
            double[] dArr = this.lTData[i];
            int i2 = i + 1;
            int i3 = i2;
            while (i3 < rowDimension) {
                double[] dArr2 = this.lTData[i3];
                double d4 = dArr[i3];
                double d5 = dArr2[i];
                int i4 = i;
                if (FastMath.abs(d4 - d5) > FastMath.max(FastMath.abs(d4), FastMath.abs(d5)) * d2) {
                    throw new NonSymmetricMatrixException(i4, i3, d2);
                }
                dArr2[i4] = 0.0d;
                i3++;
                i = i4;
            }
            i = i2;
        }
        for (int i5 = 0; i5 < rowDimension; i5++) {
            double[] dArr3 = this.lTData[i5];
            if (dArr3[i5] <= d3) {
                throw new NonPositiveDefiniteMatrixException(dArr3[i5], i5, d3);
            }
            dArr3[i5] = FastMath.sqrt(dArr3[i5]);
            double d6 = 1.0d / dArr3[i5];
            for (int i6 = rowDimension - 1; i6 > i5; i6--) {
                dArr3[i6] = dArr3[i6] * d6;
                double[] dArr4 = this.lTData[i6];
                for (int i7 = i6; i7 < rowDimension; i7++) {
                    dArr4[i7] = dArr4[i7] - (dArr3[i6] * dArr3[i7]);
                }
            }
        }
    }
}
