package jama;

import jama.a.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StreamTokenizer;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Vector;

/* JADX INFO: loaded from: classes6.dex */
public class Matrix implements Cloneable, Serializable {
    private double[][] A;
    private int m;
    private int n;

    public Matrix(int i, int i2) {
        this.m = i;
        this.n = i2;
        this.A = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
    }

    private void checkMatrixDimensions(Matrix matrix) {
        if (matrix.m != this.m || matrix.n != this.n) {
            throw new IllegalArgumentException("Matrix dimensions must agree.");
        }
    }

    public static Matrix constructWithCopy(double[][] dArr) {
        int length = dArr.length;
        int length2 = dArr[0].length;
        Matrix matrix = new Matrix(length, length2);
        double[][] array = matrix.getArray();
        for (int i = 0; i < length; i++) {
            if (dArr[i].length != length2) {
                throw new IllegalArgumentException("All rows must have the same length.");
            }
            for (int i2 = 0; i2 < length2; i2++) {
                array[i][i2] = dArr[i][i2];
            }
        }
        return matrix;
    }

    public static Matrix identity(int i, int i2) {
        Matrix matrix = new Matrix(i, i2);
        double[][] array = matrix.getArray();
        int i3 = 0;
        while (i3 < i) {
            int i4 = 0;
            while (i4 < i2) {
                array[i3][i4] = i3 == i4 ? 1.0d : 0.0d;
                i4++;
            }
            i3++;
        }
        return matrix;
    }

    public static Matrix random(int i, int i2) {
        Matrix matrix = new Matrix(i, i2);
        double[][] array = matrix.getArray();
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                array[i3][i4] = Math.random();
            }
        }
        return matrix;
    }

    public static Matrix read(BufferedReader bufferedReader) throws IOException {
        int i;
        StreamTokenizer streamTokenizer = new StreamTokenizer(bufferedReader);
        streamTokenizer.resetSyntax();
        streamTokenizer.wordChars(0, 255);
        streamTokenizer.whitespaceChars(0, 32);
        streamTokenizer.eolIsSignificant(true);
        Vector vector = new Vector();
        while (streamTokenizer.nextToken() == 10) {
        }
        if (streamTokenizer.ttype == -1) {
            throw new IOException("Unexpected EOF on matrix read.");
        }
        do {
            vector.addElement(Double.valueOf(streamTokenizer.sval));
        } while (streamTokenizer.nextToken() == -3);
        int size = vector.size();
        double[] dArr = new double[size];
        for (int i2 = 0; i2 < size; i2++) {
            dArr[i2] = ((Double) vector.elementAt(i2)).doubleValue();
        }
        vector.removeAllElements();
        vector.addElement(dArr);
        while (streamTokenizer.nextToken() == -3) {
            double[] dArr2 = new double[size];
            vector.addElement(dArr2);
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    throw new IOException("Row " + vector.size() + " is too long.");
                }
                i = i3 + 1;
                dArr2[i3] = Double.valueOf(streamTokenizer.sval).doubleValue();
                if (streamTokenizer.nextToken() != -3) {
                    break;
                }
                i3 = i;
            }
            if (i < size) {
                throw new IOException("Row " + vector.size() + " is too short.");
            }
        }
        double[][] dArr3 = new double[vector.size()][];
        vector.copyInto(dArr3);
        return new Matrix(dArr3);
    }

    public Matrix arrayLeftDivide(Matrix matrix) {
        checkMatrixDimensions(matrix);
        Matrix matrix2 = new Matrix(this.m, this.n);
        double[][] array = matrix2.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = matrix.A[i][i2] / this.A[i][i2];
            }
        }
        return matrix2;
    }

    public Matrix arrayLeftDivideEquals(Matrix matrix) {
        checkMatrixDimensions(matrix);
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                double[][] dArr = this.A;
                dArr[i][i2] = matrix.A[i][i2] / dArr[i][i2];
            }
        }
        return this;
    }

    public Matrix arrayRightDivide(Matrix matrix) {
        checkMatrixDimensions(matrix);
        Matrix matrix2 = new Matrix(this.m, this.n);
        double[][] array = matrix2.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = this.A[i][i2] / matrix.A[i][i2];
            }
        }
        return matrix2;
    }

    public Matrix arrayRightDivideEquals(Matrix matrix) {
        checkMatrixDimensions(matrix);
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                double[][] dArr = this.A;
                dArr[i][i2] = dArr[i][i2] / matrix.A[i][i2];
            }
        }
        return this;
    }

    public Matrix arrayTimes(Matrix matrix) {
        checkMatrixDimensions(matrix);
        Matrix matrix2 = new Matrix(this.m, this.n);
        double[][] array = matrix2.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = this.A[i][i2] * matrix.A[i][i2];
            }
        }
        return matrix2;
    }

    public Matrix arrayTimesEquals(Matrix matrix) {
        checkMatrixDimensions(matrix);
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                double[][] dArr = this.A;
                dArr[i][i2] = dArr[i][i2] * matrix.A[i][i2];
            }
        }
        return this;
    }

    public CholeskyDecomposition chol() {
        return new CholeskyDecomposition(this);
    }

    public Object clone() {
        return copy();
    }

    public double cond() {
        return new SingularValueDecomposition(this).cond();
    }

    public Matrix copy() {
        Matrix matrix = new Matrix(this.m, this.n);
        double[][] array = matrix.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = this.A[i][i2];
            }
        }
        return matrix;
    }

    public double det() {
        return new LUDecomposition(this).det();
    }

    public EigenvalueDecomposition eig() {
        return new EigenvalueDecomposition(this);
    }

    public Matrix gemm(Matrix matrix, Matrix matrix2, double d2, double d3) {
        int i = matrix.n;
        Matrix matrix3 = new Matrix(this.m, i);
        if (matrix2 == null) {
            if (matrix.m != this.n) {
                throw new IllegalArgumentException("Matrix inner dimensions must agree.");
            }
            while (true) {
                i--;
                if (i < 0) {
                    return matrix3;
                }
                int i2 = this.m;
                while (true) {
                    i2--;
                    if (i2 >= 0) {
                        int i3 = this.n;
                        double d4 = 0.0d;
                        while (true) {
                            i3--;
                            if (i3 >= 0) {
                                d4 += this.A[i2][i3] * matrix.A[i3][i];
                            }
                        }
                        matrix3.A[i2][i] = d4 * d2;
                    }
                }
            }
        } else {
            if (matrix.m != this.n) {
                throw new IllegalArgumentException("Matrix inner dimensions must agree.");
            }
            if (matrix2.m != this.m || matrix2.n != i) {
                throw new IllegalArgumentException("Incompatible result matrix.");
            }
            while (true) {
                i--;
                if (i < 0) {
                    return matrix3;
                }
                int i4 = this.m;
                while (true) {
                    i4--;
                    if (i4 >= 0) {
                        int i5 = this.n;
                        double d5 = 0.0d;
                        while (true) {
                            i5--;
                            if (i5 >= 0) {
                                d5 += this.A[i4][i5] * matrix.A[i5][i];
                            }
                        }
                        matrix3.A[i4][i] = (d5 * d2) + (d3 * matrix2.A[i4][i]);
                    }
                }
            }
        }
    }

    public double get(int i, int i2) {
        return this.A[i][i2];
    }

    public double[][] getArray() {
        return this.A;
    }

    public double[][] getArrayCopy() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, this.m, this.n);
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                dArr[i][i2] = this.A[i][i2];
            }
        }
        return dArr;
    }

    public int getColumnDimension() {
        return this.n;
    }

    public double[] getColumnPackedCopy() {
        double[] dArr = new double[this.m * this.n];
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                dArr[(this.m * i2) + i] = this.A[i][i2];
            }
        }
        return dArr;
    }

    public Matrix getMatrix(int i, int i2, int i3, int i4) {
        Matrix matrix = new Matrix((i2 - i) + 1, (i4 - i3) + 1);
        double[][] array = matrix.getArray();
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = i3; i6 <= i4; i6++) {
                try {
                    array[i5 - i][i6 - i3] = this.A[i5][i6];
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Submatrix indices");
                }
            }
        }
        return matrix;
    }

    public int getRowDimension() {
        return this.m;
    }

    public double[] getRowPackedCopy() {
        double[] dArr = new double[this.m * this.n];
        for (int i = 0; i < this.m; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.n;
                if (i2 < i3) {
                    dArr[(i3 * i) + i2] = this.A[i][i2];
                    i2++;
                }
            }
        }
        return dArr;
    }

    public Matrix inverse() {
        int i = this.m;
        return solve(identity(i, i));
    }

    public LUDecomposition lu() {
        return new LUDecomposition(this);
    }

    public Matrix minus(Matrix matrix) {
        checkMatrixDimensions(matrix);
        Matrix matrix2 = new Matrix(this.m, this.n);
        double[][] array = matrix2.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = this.A[i][i2] - matrix.A[i][i2];
            }
        }
        return matrix2;
    }

    public Matrix minusEquals(Matrix matrix) {
        checkMatrixDimensions(matrix);
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                double[][] dArr = this.A;
                dArr[i][i2] = dArr[i][i2] - matrix.A[i][i2];
            }
        }
        return this;
    }

    public double norm1() {
        double dMax = 0.0d;
        for (int i = 0; i < this.n; i++) {
            double dAbs = 0.0d;
            for (int i2 = 0; i2 < this.m; i2++) {
                dAbs += Math.abs(this.A[i2][i]);
            }
            dMax = Math.max(dMax, dAbs);
        }
        return dMax;
    }

    public double norm2() {
        return new SingularValueDecomposition(this).norm2();
    }

    public double normF() {
        double dA = 0.0d;
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                dA = a.a(dA, this.A[i][i2]);
            }
        }
        return dA;
    }

    public double normInf() {
        double dMax = 0.0d;
        for (int i = 0; i < this.m; i++) {
            double dAbs = 0.0d;
            for (int i2 = 0; i2 < this.n; i2++) {
                dAbs += Math.abs(this.A[i][i2]);
            }
            dMax = Math.max(dMax, dAbs);
        }
        return dMax;
    }

    public Matrix plus(Matrix matrix) {
        checkMatrixDimensions(matrix);
        Matrix matrix2 = new Matrix(this.m, this.n);
        double[][] array = matrix2.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = this.A[i][i2] + matrix.A[i][i2];
            }
        }
        return matrix2;
    }

    public Matrix plusEquals(Matrix matrix) {
        checkMatrixDimensions(matrix);
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                double[][] dArr = this.A;
                dArr[i][i2] = dArr[i][i2] + matrix.A[i][i2];
            }
        }
        return this;
    }

    public void print(int i, int i2) {
        print(new PrintWriter((OutputStream) System.out, true), i, i2);
    }

    public QRDecomposition qr() {
        return new QRDecomposition(this);
    }

    public int rank() {
        return new SingularValueDecomposition(this).rank();
    }

    public void set(int i, int i2, double d2) {
        this.A[i][i2] = d2;
    }

    public void setMatrix(int i, int i2, int i3, int i4, Matrix matrix) {
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = i3; i6 <= i4; i6++) {
                try {
                    this.A[i5][i6] = matrix.get(i5 - i, i6 - i3);
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Submatrix indices");
                }
            }
        }
    }

    public Matrix solve(Matrix matrix) {
        return this.m == this.n ? new LUDecomposition(this).solve(matrix) : new QRDecomposition(this).solve(matrix);
    }

    public Matrix solveTranspose(Matrix matrix) {
        return transpose().solve(matrix.transpose());
    }

    public SingularValueDecomposition svd() {
        return new SingularValueDecomposition(this);
    }

    public Matrix times(double d2) {
        Matrix matrix = new Matrix(this.m, this.n);
        double[][] array = matrix.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = this.A[i][i2] * d2;
            }
        }
        return matrix;
    }

    public Matrix timesEquals(double d2) {
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                double[][] dArr = this.A;
                dArr[i][i2] = dArr[i][i2] * d2;
            }
        }
        return this;
    }

    public String toString(int i, int i2) {
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
        decimalFormat.setMinimumIntegerDigits(1);
        decimalFormat.setMaximumFractionDigits(i2);
        decimalFormat.setMinimumFractionDigits(i2);
        decimalFormat.setGroupingUsed(false);
        int i3 = i + 2;
        String str = "";
        for (int i4 = 0; i4 < this.m; i4++) {
            for (int i5 = 0; i5 < this.n; i5++) {
                String str2 = decimalFormat.format(this.A[i4][i5]);
                int iMax = Math.max(1, i3 - str.length());
                str = str + str2;
                for (int i6 = 0; i6 < iMax; i6++) {
                    str = str + " ";
                }
            }
            str = str + "\n";
        }
        return str;
    }

    public double trace() {
        double d2 = 0.0d;
        for (int i = 0; i < Math.min(this.m, this.n); i++) {
            d2 += this.A[i][i];
        }
        return d2;
    }

    public Matrix transpose() {
        Matrix matrix = new Matrix(this.n, this.m);
        double[][] array = matrix.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i2][i] = this.A[i][i2];
            }
        }
        return matrix;
    }

    public Matrix uminus() {
        Matrix matrix = new Matrix(this.m, this.n);
        double[][] array = matrix.getArray();
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                array[i][i2] = -this.A[i][i2];
            }
        }
        return matrix;
    }

    public void print(PrintWriter printWriter, int i, int i2) {
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
        decimalFormat.setMinimumIntegerDigits(1);
        decimalFormat.setMaximumFractionDigits(i2);
        decimalFormat.setMinimumFractionDigits(i2);
        decimalFormat.setGroupingUsed(false);
        print(printWriter, decimalFormat, i + 2);
    }

    public void setMatrix(int[] iArr, int[] iArr2, Matrix matrix) {
        for (int i = 0; i < iArr.length; i++) {
            try {
                for (int i2 = 0; i2 < iArr2.length; i2++) {
                    this.A[iArr[i]][iArr2[i2]] = matrix.get(i, i2);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Submatrix indices");
            }
        }
    }

    public Matrix identity() {
        Matrix matrix = new Matrix(this.m, this.n);
        double[][] array = matrix.getArray();
        int i = 0;
        while (i < this.m) {
            int i2 = 0;
            while (i2 < this.n) {
                array[i][i2] = i == i2 ? 1.0d : 0.0d;
                i2++;
            }
            i++;
        }
        return matrix;
    }

    public Matrix(int i, int i2, double d2) {
        this.m = i;
        this.n = i2;
        this.A = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                this.A[i3][i4] = d2;
            }
        }
    }

    public Matrix getMatrix(int[] iArr, int[] iArr2) {
        Matrix matrix = new Matrix(iArr.length, iArr2.length);
        double[][] array = matrix.getArray();
        for (int i = 0; i < iArr.length; i++) {
            try {
                for (int i2 = 0; i2 < iArr2.length; i2++) {
                    array[i][i2] = this.A[iArr[i]][iArr2[i2]];
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Submatrix indices");
            }
        }
        return matrix;
    }

    public Matrix times(Matrix matrix) {
        if (matrix.m == this.n) {
            Matrix matrix2 = new Matrix(this.m, matrix.n);
            double[][] array = matrix2.getArray();
            double[] dArr = new double[this.n];
            for (int i = 0; i < matrix.n; i++) {
                for (int i2 = 0; i2 < this.n; i2++) {
                    dArr[i2] = matrix.A[i2][i];
                }
                for (int i3 = 0; i3 < this.m; i3++) {
                    double[] dArr2 = this.A[i3];
                    double d2 = 0.0d;
                    for (int i4 = 0; i4 < this.n; i4++) {
                        d2 += dArr2[i4] * dArr[i4];
                    }
                    array[i3][i] = d2;
                }
            }
            return matrix2;
        }
        throw new IllegalArgumentException("Matrix inner dimensions must agree.");
    }

    public void setMatrix(int[] iArr, int i, int i2, Matrix matrix) {
        for (int i3 = 0; i3 < iArr.length; i3++) {
            try {
                for (int i4 = i; i4 <= i2; i4++) {
                    this.A[iArr[i3]][i4] = matrix.get(i3, i4 - i);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Submatrix indices");
            }
        }
    }

    public static Matrix identity(int i, int i2, double d2) {
        Matrix matrix = new Matrix(i, i2);
        double[][] array = matrix.getArray();
        int i3 = 0;
        while (i3 < i) {
            int i4 = 0;
            while (i4 < i2) {
                array[i3][i4] = i3 == i4 ? d2 : 0.0d;
                i4++;
            }
            i3++;
        }
        return matrix;
    }

    public void print(NumberFormat numberFormat, int i) {
        print(new PrintWriter((OutputStream) System.out, true), numberFormat, i);
    }

    public Matrix(double[][] dArr) {
        this.m = dArr.length;
        this.n = dArr[0].length;
        for (int i = 0; i < this.m; i++) {
            if (dArr[i].length != this.n) {
                throw new IllegalArgumentException("All rows must have the same length.");
            }
        }
        this.A = dArr;
    }

    public void print(PrintWriter printWriter, NumberFormat numberFormat, int i) {
        printWriter.println();
        for (int i2 = 0; i2 < this.m; i2++) {
            for (int i3 = 0; i3 < this.n; i3++) {
                String str = numberFormat.format(this.A[i2][i3]);
                int iMax = Math.max(1, i - str.length());
                for (int i4 = 0; i4 < iMax; i4++) {
                    printWriter.print(' ');
                }
                printWriter.print(str);
            }
            printWriter.println();
        }
        printWriter.println();
    }

    public void setMatrix(int i, int i2, int[] iArr, Matrix matrix) {
        for (int i3 = i; i3 <= i2; i3++) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                try {
                    this.A[i3][iArr[i4]] = matrix.get(i3 - i, i4);
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Submatrix indices");
                }
            }
        }
    }

    public Matrix getMatrix(int i, int i2, int[] iArr) {
        Matrix matrix = new Matrix((i2 - i) + 1, iArr.length);
        double[][] array = matrix.getArray();
        for (int i3 = i; i3 <= i2; i3++) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                try {
                    array[i3 - i][i4] = this.A[i3][iArr[i4]];
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Submatrix indices");
                }
            }
        }
        return matrix;
    }

    public String toString() {
        String str = "";
        for (int i = 0; i < this.m; i++) {
            for (int i2 = 0; i2 < this.n; i2++) {
                str = str + String.valueOf(this.A[i][i2]) + "\t";
            }
            str = str + "\n";
        }
        return str;
    }

    public Matrix getMatrix(int[] iArr, int i, int i2) {
        Matrix matrix = new Matrix(iArr.length, (i2 - i) + 1);
        double[][] array = matrix.getArray();
        for (int i3 = 0; i3 < iArr.length; i3++) {
            try {
                for (int i4 = i; i4 <= i2; i4++) {
                    array[i3][i4 - i] = this.A[iArr[i3]][i4];
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Submatrix indices");
            }
        }
        return matrix;
    }

    public Matrix(double[][] dArr, int i, int i2) {
        this.A = dArr;
        this.m = i;
        this.n = i2;
    }

    public Matrix(double[] dArr, int i) {
        this.m = i;
        int length = i != 0 ? dArr.length / i : 0;
        this.n = length;
        if (i * length == dArr.length) {
            this.A = (double[][]) Array.newInstance((Class<?>) double.class, i, length);
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.n; i3++) {
                    this.A[i2][i3] = dArr[(i3 * i) + i2];
                }
            }
            return;
        }
        throw new IllegalArgumentException("Array length must be a multiple of m.");
    }
}
