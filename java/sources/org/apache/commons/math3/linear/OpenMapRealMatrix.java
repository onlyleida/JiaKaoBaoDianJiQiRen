package org.apache.commons.math3.linear;

import java.io.Serializable;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.OpenIntToDoubleHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class OpenMapRealMatrix extends AbstractRealMatrix implements SparseRealMatrix, Serializable {
    private static final long serialVersionUID = -5962461716457143437L;
    private final int columns;
    private final OpenIntToDoubleHashMap entries;
    private final int rows;

    public OpenMapRealMatrix(int i, int i2) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        super(i, i2);
        long j = ((long) i) * ((long) i2);
        if (j >= 2147483647L) {
            throw new NumberIsTooLargeException(Long.valueOf(j), Integer.MAX_VALUE, false);
        }
        this.rows = i;
        this.columns = i2;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
    }

    private int computeKey(int i, int i2) {
        return (i * this.columns) + i2;
    }

    public OpenMapRealMatrix add(OpenMapRealMatrix openMapRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, openMapRealMatrix);
        OpenMapRealMatrix openMapRealMatrix2 = new OpenMapRealMatrix(this);
        OpenIntToDoubleHashMap.Iterator it = openMapRealMatrix.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int iKey = it.key() / this.columns;
            int iKey2 = it.key() - (this.columns * iKey);
            openMapRealMatrix2.setEntry(iKey, iKey2, getEntry(iKey, iKey2) + it.value());
        }
        return openMapRealMatrix2;
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public void addToEntry(int i, int i2, double d2) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i);
        MatrixUtils.checkColumnIndex(this, i2);
        int iComputeKey = computeKey(i, i2);
        double d3 = this.entries.get(iComputeKey) + d2;
        if (d3 == 0.0d) {
            this.entries.remove(iComputeKey);
        } else {
            this.entries.put(iComputeKey, d3);
        }
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
    public int getColumnDimension() {
        return this.columns;
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public double getEntry(int i, int i2) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i);
        MatrixUtils.checkColumnIndex(this, i2);
        return this.entries.get(computeKey(i, i2));
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
    public int getRowDimension() {
        return this.rows;
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public RealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException, NumberIsTooLargeException {
        try {
            return multiply((OpenMapRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            MatrixUtils.checkMultiplicationCompatible(this, realMatrix);
            int columnDimension = realMatrix.getColumnDimension();
            BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, columnDimension);
            OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
            while (it.hasNext()) {
                it.advance();
                double dValue = it.value();
                int iKey = it.key();
                int i = this.columns;
                int i2 = iKey / i;
                int i3 = iKey % i;
                for (int i4 = 0; i4 < columnDimension; i4++) {
                    blockRealMatrix.addToEntry(i2, i4, realMatrix.getEntry(i3, i4) * dValue);
                }
            }
            return blockRealMatrix;
        }
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public void multiplyEntry(int i, int i2, double d2) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i);
        MatrixUtils.checkColumnIndex(this, i2);
        int iComputeKey = computeKey(i, i2);
        double d3 = this.entries.get(iComputeKey) * d2;
        if (d3 == 0.0d) {
            this.entries.remove(iComputeKey);
        } else {
            this.entries.put(iComputeKey, d3);
        }
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public void setEntry(int i, int i2, double d2) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i);
        MatrixUtils.checkColumnIndex(this, i2);
        if (d2 == 0.0d) {
            this.entries.remove(computeKey(i, i2));
        } else {
            this.entries.put(computeKey(i, i2), d2);
        }
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public OpenMapRealMatrix copy() {
        return new OpenMapRealMatrix(this);
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public OpenMapRealMatrix createMatrix(int i, int i2) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        return new OpenMapRealMatrix(i, i2);
    }

    @Override // org.apache.commons.math3.linear.AbstractRealMatrix, org.apache.commons.math3.linear.RealMatrix
    public OpenMapRealMatrix subtract(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        try {
            return subtract((OpenMapRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            return (OpenMapRealMatrix) super.subtract(realMatrix);
        }
    }

    public OpenMapRealMatrix subtract(OpenMapRealMatrix openMapRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, openMapRealMatrix);
        OpenMapRealMatrix openMapRealMatrix2 = new OpenMapRealMatrix(this);
        OpenIntToDoubleHashMap.Iterator it = openMapRealMatrix.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int iKey = it.key() / this.columns;
            int iKey2 = it.key() - (this.columns * iKey);
            openMapRealMatrix2.setEntry(iKey, iKey2, getEntry(iKey, iKey2) - it.value());
        }
        return openMapRealMatrix2;
    }

    public OpenMapRealMatrix(OpenMapRealMatrix openMapRealMatrix) {
        this.rows = openMapRealMatrix.rows;
        this.columns = openMapRealMatrix.columns;
        this.entries = new OpenIntToDoubleHashMap(openMapRealMatrix.entries);
    }

    public OpenMapRealMatrix multiply(OpenMapRealMatrix openMapRealMatrix) throws DimensionMismatchException, NumberIsTooLargeException {
        MatrixUtils.checkMultiplicationCompatible(this, openMapRealMatrix);
        int columnDimension = openMapRealMatrix.getColumnDimension();
        OpenMapRealMatrix openMapRealMatrix2 = new OpenMapRealMatrix(this.rows, columnDimension);
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            double dValue = it.value();
            int iKey = it.key();
            int i = this.columns;
            int i2 = iKey / i;
            int i3 = iKey % i;
            for (int i4 = 0; i4 < columnDimension; i4++) {
                int iComputeKey = openMapRealMatrix.computeKey(i3, i4);
                if (openMapRealMatrix.entries.containsKey(iComputeKey)) {
                    int iComputeKey2 = openMapRealMatrix2.computeKey(i2, i4);
                    double d2 = openMapRealMatrix2.entries.get(iComputeKey2) + (openMapRealMatrix.entries.get(iComputeKey) * dValue);
                    if (d2 == 0.0d) {
                        openMapRealMatrix2.entries.remove(iComputeKey2);
                    } else {
                        openMapRealMatrix2.entries.put(iComputeKey2, d2);
                    }
                }
            }
        }
        return openMapRealMatrix2;
    }
}
