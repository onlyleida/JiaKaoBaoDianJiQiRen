package org.apache.commons.math3.analysis.differentiation;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class DSCompiler {
    private static AtomicReference<DSCompiler[][]> compilers = new AtomicReference<>(null);
    private final int[][][] compIndirection;
    private final int[][] derivativesIndirection;
    private final int[] lowerIndirection;
    private final int[][][] multIndirection;
    private final int order;
    private final int parameters;
    private final int[][] sizes;

    private DSCompiler(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2) throws NumberIsTooLargeException {
        this.parameters = i;
        this.order = i2;
        int[][] iArrCompileSizes = compileSizes(i, i2, dSCompiler);
        this.sizes = iArrCompileSizes;
        int[][] iArrCompileDerivativesIndirection = compileDerivativesIndirection(i, i2, dSCompiler, dSCompiler2);
        this.derivativesIndirection = iArrCompileDerivativesIndirection;
        int[] iArrCompileLowerIndirection = compileLowerIndirection(i, i2, dSCompiler, dSCompiler2);
        this.lowerIndirection = iArrCompileLowerIndirection;
        this.multIndirection = compileMultiplicationIndirection(i, i2, dSCompiler, dSCompiler2, iArrCompileLowerIndirection);
        this.compIndirection = compileCompositionIndirection(i, i2, dSCompiler, dSCompiler2, iArrCompileSizes, iArrCompileDerivativesIndirection);
    }

    private static int[][][] compileCompositionIndirection(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2, int[][] iArr, int[][] iArr2) throws NumberIsTooLargeException {
        DSCompiler dSCompiler3 = dSCompiler2;
        char c = 0;
        int i3 = 1;
        if (i == 0 || i2 == 0) {
            return new int[][][]{new int[][]{new int[]{1, 0}}};
        }
        int[][][] iArr3 = dSCompiler.compIndirection;
        int length = iArr3.length;
        int length2 = dSCompiler3.compIndirection.length;
        int[][][] iArr4 = new int[length + length2][][];
        System.arraycopy(iArr3, 0, iArr4, 0, length);
        int i4 = 0;
        while (i4 < length2) {
            ArrayList arrayList = new ArrayList();
            int[][] iArr5 = dSCompiler3.compIndirection[i4];
            int length3 = iArr5.length;
            int i5 = 0;
            while (i5 < length3) {
                int[] iArr6 = iArr5[i5];
                int length4 = iArr6.length + i3;
                int[] iArr7 = new int[length4];
                iArr7[c] = iArr6[c];
                iArr7[1] = iArr6[1] + 1;
                int[] iArr8 = new int[i];
                int i6 = i - 1;
                iArr8[i6] = 1;
                int i7 = i5;
                iArr7[iArr6.length] = getPartialDerivativeIndex(i, i2, iArr, iArr8);
                int i8 = length3;
                int i9 = 2;
                while (i9 < iArr6.length) {
                    int i10 = i9;
                    iArr7[i10] = convertIndex(iArr6[i9], i, dSCompiler3.derivativesIndirection, i, i2, iArr);
                    i9 = i10 + 1;
                    iArr6 = iArr6;
                    arrayList = arrayList;
                    iArr5 = iArr5;
                    length2 = length2;
                    i4 = i4;
                    iArr4 = iArr4;
                    i7 = i7;
                }
                int i11 = i7;
                int[][] iArr9 = iArr5;
                int i12 = i4;
                int i13 = length2;
                int[][][] iArr10 = iArr4;
                int[] iArr11 = iArr6;
                ArrayList arrayList2 = arrayList;
                Arrays.sort(iArr7, 2, length4);
                arrayList2.add(iArr7);
                int i14 = 2;
                while (i14 < iArr11.length) {
                    int length5 = iArr11.length;
                    int[] iArr12 = new int[length5];
                    iArr12[0] = iArr11[0];
                    iArr12[1] = iArr11[1];
                    int i15 = 2;
                    while (i15 < iArr11.length) {
                        int i16 = iArr11[i15];
                        int[][] iArr13 = dSCompiler3.derivativesIndirection;
                        int i17 = i15;
                        int[] iArr14 = iArr11;
                        int[] iArr15 = iArr12;
                        iArr15[i17] = convertIndex(i16, i, iArr13, i, i2, iArr);
                        if (i17 == i14) {
                            System.arraycopy(iArr2[iArr15[i17]], 0, iArr8, 0, i);
                            iArr8[i6] = iArr8[i6] + 1;
                            iArr15[i17] = getPartialDerivativeIndex(i, i2, iArr, iArr8);
                        }
                        i15 = i17 + 1;
                        dSCompiler3 = dSCompiler2;
                        iArr12 = iArr15;
                        iArr11 = iArr14;
                    }
                    int[] iArr16 = iArr11;
                    int[] iArr17 = iArr12;
                    Arrays.sort(iArr17, 2, length5);
                    arrayList2.add(iArr17);
                    i14++;
                    dSCompiler3 = dSCompiler2;
                    iArr11 = iArr16;
                }
                i5 = i11 + 1;
                dSCompiler3 = dSCompiler2;
                arrayList = arrayList2;
                length3 = i8;
                iArr5 = iArr9;
                length2 = i13;
                i4 = i12;
                c = 0;
                i3 = 1;
                iArr4 = iArr10;
            }
            int i18 = i4;
            int i19 = length2;
            int[][][] iArr18 = iArr4;
            ArrayList arrayList3 = arrayList;
            ArrayList arrayList4 = new ArrayList(arrayList3.size());
            for (int i20 = 0; i20 < arrayList3.size(); i20++) {
                int[] iArr19 = (int[]) arrayList3.get(i20);
                if (iArr19[0] > 0) {
                    for (int i21 = i20 + 1; i21 < arrayList3.size(); i21++) {
                        int[] iArr20 = (int[]) arrayList3.get(i21);
                        boolean z = iArr19.length == iArr20.length;
                        for (int i22 = 1; z && i22 < iArr19.length; i22++) {
                            z &= iArr19[i22] == iArr20[i22];
                        }
                        if (z) {
                            iArr19[0] = iArr19[0] + iArr20[0];
                            iArr20[0] = 0;
                        }
                    }
                    arrayList4.add(iArr19);
                }
            }
            iArr18[length + i18] = (int[][]) arrayList4.toArray(new int[arrayList4.size()][]);
            i4 = i18 + 1;
            iArr4 = iArr18;
            dSCompiler3 = dSCompiler2;
            length2 = i19;
            c = 0;
            i3 = 1;
        }
        return iArr4;
    }

    private static int[][] compileDerivativesIndirection(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2) {
        if (i == 0 || i2 == 0) {
            return (int[][]) Array.newInstance((Class<?>) int.class, 1, i);
        }
        int length = dSCompiler.derivativesIndirection.length;
        int length2 = dSCompiler2.derivativesIndirection.length;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, length + length2, i);
        for (int i3 = 0; i3 < length; i3++) {
            System.arraycopy(dSCompiler.derivativesIndirection[i3], 0, iArr[i3], 0, i - 1);
        }
        for (int i4 = 0; i4 < length2; i4++) {
            int i5 = length + i4;
            System.arraycopy(dSCompiler2.derivativesIndirection[i4], 0, iArr[i5], 0, i);
            int[] iArr2 = iArr[i5];
            int i6 = i - 1;
            iArr2[i6] = iArr2[i6] + 1;
        }
        return iArr;
    }

    private static int[] compileLowerIndirection(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2) {
        if (i == 0 || i2 <= 1) {
            return new int[]{0};
        }
        int[] iArr = dSCompiler.lowerIndirection;
        int length = iArr.length;
        int length2 = dSCompiler2.lowerIndirection.length;
        int[] iArr2 = new int[length + length2];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        for (int i3 = 0; i3 < length2; i3++) {
            iArr2[length + i3] = dSCompiler.getSize() + dSCompiler2.lowerIndirection[i3];
        }
        return iArr2;
    }

    private static int[][][] compileMultiplicationIndirection(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2, int[] iArr) {
        int i3 = 3;
        if (i == 0 || i2 == 0) {
            return new int[][][]{new int[][]{new int[]{1, 0, 0}}};
        }
        int[][][] iArr2 = dSCompiler.multIndirection;
        int length = iArr2.length;
        int length2 = dSCompiler2.multIndirection.length;
        int[][][] iArr3 = new int[length + length2][][];
        System.arraycopy(iArr2, 0, iArr3, 0, length);
        int i4 = 0;
        while (i4 < length2) {
            int[][] iArr4 = dSCompiler2.multIndirection[i4];
            ArrayList arrayList = new ArrayList(iArr4.length * 2);
            for (int i5 = 0; i5 < iArr4.length; i5++) {
                int[] iArr5 = new int[i3];
                iArr5[0] = iArr4[i5][0];
                iArr5[1] = iArr[iArr4[i5][1]];
                iArr5[2] = iArr4[i5][2] + length;
                arrayList.add(iArr5);
                int[] iArr6 = new int[i3];
                iArr6[0] = iArr4[i5][0];
                iArr6[1] = iArr4[i5][1] + length;
                iArr6[2] = iArr[iArr4[i5][2]];
                arrayList.add(iArr6);
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                int[] iArr7 = (int[]) arrayList.get(i6);
                if (iArr7[0] > 0) {
                    for (int i7 = i6 + 1; i7 < arrayList.size(); i7++) {
                        int[] iArr8 = (int[]) arrayList.get(i7);
                        if (iArr7[1] == iArr8[1] && iArr7[2] == iArr8[2]) {
                            iArr7[0] = iArr7[0] + iArr8[0];
                            iArr8[0] = 0;
                        }
                    }
                    arrayList2.add(iArr7);
                }
            }
            iArr3[length + i4] = (int[][]) arrayList2.toArray(new int[arrayList2.size()][]);
            i4++;
            i3 = 3;
        }
        return iArr3;
    }

    private static int[][] compileSizes(int i, int i2, DSCompiler dSCompiler) {
        int i3 = 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i + 1, i2 + 1);
        if (i == 0) {
            Arrays.fill(iArr[0], 1);
        } else {
            System.arraycopy(dSCompiler.sizes, 0, iArr, 0, i);
            iArr[i][0] = 1;
            while (i3 < i2) {
                int i4 = i3 + 1;
                iArr[i][i4] = iArr[i][i3] + iArr[i - 1][i4];
                i3 = i4;
            }
        }
        return iArr;
    }

    private static int convertIndex(int i, int i2, int[][] iArr, int i3, int i4, int[][] iArr2) throws NumberIsTooLargeException {
        int[] iArr3 = new int[i3];
        System.arraycopy(iArr[i], 0, iArr3, 0, FastMath.min(i2, i3));
        return getPartialDerivativeIndex(i3, i4, iArr2, iArr3);
    }

    public static DSCompiler getCompiler(int i, int i2) throws NumberIsTooLargeException {
        DSCompiler[][] dSCompilerArr = compilers.get();
        if (dSCompilerArr != null && dSCompilerArr.length > i && dSCompilerArr[i].length > i2 && dSCompilerArr[i][i2] != null) {
            return dSCompilerArr[i][i2];
        }
        DSCompiler[][] dSCompilerArr2 = (DSCompiler[][]) Array.newInstance((Class<?>) DSCompiler.class, FastMath.max(i, dSCompilerArr == null ? 0 : dSCompilerArr.length) + 1, FastMath.max(i2, dSCompilerArr == null ? 0 : dSCompilerArr[0].length) + 1);
        if (dSCompilerArr != null) {
            for (int i3 = 0; i3 < dSCompilerArr.length; i3++) {
                System.arraycopy(dSCompilerArr[i3], 0, dSCompilerArr2[i3], 0, dSCompilerArr[i3].length);
            }
        }
        for (int i4 = 0; i4 <= i + i2; i4++) {
            int iMax = FastMath.max(0, i4 - i);
            while (iMax <= FastMath.min(i2, i4)) {
                int i5 = i4 - iMax;
                if (dSCompilerArr2[i5][iMax] == null) {
                    dSCompilerArr2[i5][iMax] = new DSCompiler(i5, iMax, i5 == 0 ? null : dSCompilerArr2[i5 - 1][iMax], iMax != 0 ? dSCompilerArr2[i5][iMax - 1] : null);
                }
                iMax++;
            }
        }
        compilers.compareAndSet(dSCompilerArr, dSCompilerArr2);
        return dSCompilerArr2[i][i2];
    }

    public void acos(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        int i3;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.order + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.acos(d3);
        int i4 = dSCompiler.order;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = -1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (1.0d - d4);
            double dSqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * dSqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= dSCompiler.order) {
                int i7 = i6 - 1;
                dArr4[i7] = ((double) i7) * dArr4[i6 - 2];
                double d6 = 0.0d;
                while (i7 >= 0) {
                    d6 = (d6 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        int i8 = i7 - 1;
                        i3 = i6;
                        d2 = d4;
                        dArr4[i7 - 2] = (((double) i8) * dArr4[i8]) + (((double) ((i3 * 2) - i7)) * dArr4[i7 - 3]);
                    } else {
                        d2 = d4;
                        i3 = i6;
                        if (i7 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i7 -= 2;
                        i5 = 2;
                        i6 = i3;
                        d4 = d2;
                    }
                    i7 -= 2;
                    i5 = 2;
                    i6 = i3;
                    d4 = d2;
                }
                double d7 = d4;
                int i9 = i6;
                if ((i9 & 1) == 0) {
                    d6 *= d3;
                }
                dSqrt *= d5;
                dArr3[i9] = d6 * dSqrt;
                i6 = i9 + 1;
                d4 = d7;
                i5 = 2;
                dSCompiler = this;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void acosh(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        int i3;
        double[] dArr3 = new double[this.order + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.acosh(d3);
        int i4 = this.order;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (d4 - 1.0d);
            double dSqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * dSqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= this.order) {
                int i7 = i6 - 1;
                dArr4[i7] = ((double) (1 - i6)) * dArr4[i6 - 2];
                int i8 = i7;
                double d6 = 0.0d;
                while (i8 >= 0) {
                    d6 = (d6 * d4) + dArr4[i8];
                    if (i8 > i5) {
                        i3 = i6;
                        d2 = d4;
                        dArr4[i8 - 2] = (((double) (1 - i8)) * dArr4[i8 - 1]) + (((double) (i8 - (i3 * 2))) * dArr4[i8 - 3]);
                    } else {
                        d2 = d4;
                        i3 = i6;
                        if (i8 == 2) {
                            dArr4[0] = -dArr4[1];
                        }
                        i8 -= 2;
                        i6 = i3;
                        d4 = d2;
                        i5 = 2;
                    }
                    i8 -= 2;
                    i6 = i3;
                    d4 = d2;
                    i5 = 2;
                }
                double d7 = d4;
                int i9 = i6;
                if ((i9 & 1) == 0) {
                    d6 *= d3;
                }
                dSqrt *= d5;
                dArr3[i9] = d6 * dSqrt;
                i6 = i9 + 1;
                d4 = d7;
                i5 = 2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void add(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = dArr[i + i4] + dArr2[i2 + i4];
        }
    }

    public void asin(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        int i3;
        double[] dArr3 = new double[this.order + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.asin(d3);
        int i4 = this.order;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (1.0d - d4);
            double dSqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * dSqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= this.order) {
                int i7 = i6 - 1;
                dArr4[i7] = ((double) i7) * dArr4[i6 - 2];
                double d6 = 0.0d;
                while (i7 >= 0) {
                    d6 = (d6 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        int i8 = i7 - 1;
                        i3 = i6;
                        d2 = d4;
                        dArr4[i7 - 2] = (((double) i8) * dArr4[i8]) + (((double) ((i3 * 2) - i7)) * dArr4[i7 - 3]);
                    } else {
                        d2 = d4;
                        i3 = i6;
                        if (i7 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i7 -= 2;
                        i6 = i3;
                        d4 = d2;
                        i5 = 2;
                    }
                    i7 -= 2;
                    i6 = i3;
                    d4 = d2;
                    i5 = 2;
                }
                double d7 = d4;
                int i9 = i6;
                if ((i9 & 1) == 0) {
                    d6 *= d3;
                }
                dSqrt *= d5;
                dArr3[i9] = d6 * dSqrt;
                i6 = i9 + 1;
                d4 = d7;
                i5 = 2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void asinh(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        int i3;
        double[] dArr3 = new double[this.order + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.asinh(d3);
        int i4 = this.order;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (d4 + 1.0d);
            double dSqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * dSqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= this.order) {
                int i7 = i6 - 1;
                dArr4[i7] = ((double) (1 - i6)) * dArr4[i6 - 2];
                int i8 = i7;
                double d6 = 0.0d;
                while (i8 >= 0) {
                    d6 = (d6 * d4) + dArr4[i8];
                    if (i8 > i5) {
                        int i9 = i8 - 1;
                        i3 = i6;
                        d2 = d4;
                        dArr4[i8 - 2] = (((double) i9) * dArr4[i9]) + (((double) (i8 - (i3 * 2))) * dArr4[i8 - 3]);
                    } else {
                        d2 = d4;
                        i3 = i6;
                        if (i8 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i8 -= 2;
                        i6 = i3;
                        d4 = d2;
                        i5 = 2;
                    }
                    i8 -= 2;
                    i6 = i3;
                    d4 = d2;
                    i5 = 2;
                }
                double d7 = d4;
                int i10 = i6;
                if ((i10 & 1) == 0) {
                    d6 *= d3;
                }
                dSqrt *= d5;
                dArr3[i10] = d6 * dSqrt;
                i6 = i10 + 1;
                d4 = d7;
                i5 = 2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void atan(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        int i3;
        double[] dArr3 = new double[this.order + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.atan(d3);
        int i4 = this.order;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (d4 + 1.0d);
            dArr3[1] = dArr4[0] * d5;
            int i5 = 2;
            double d6 = d5;
            int i6 = 2;
            while (i6 <= this.order) {
                int i7 = i6 - 1;
                dArr4[i7] = ((double) (-i6)) * dArr4[i6 - 2];
                int i8 = i7;
                double d7 = 0.0d;
                while (i8 >= 0) {
                    d7 = (d7 * d4) + dArr4[i8];
                    if (i8 > i5) {
                        int i9 = i8 - 1;
                        i3 = i6;
                        d2 = d4;
                        dArr4[i8 - 2] = (((double) i9) * dArr4[i9]) + (((double) (i9 - (i3 * 2))) * dArr4[i8 - 3]);
                    } else {
                        d2 = d4;
                        i3 = i6;
                        if (i8 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i8 -= 2;
                        i6 = i3;
                        d4 = d2;
                        i5 = 2;
                    }
                    i8 -= 2;
                    i6 = i3;
                    d4 = d2;
                    i5 = 2;
                }
                double d8 = d4;
                int i10 = i6;
                if ((i10 & 1) == 0) {
                    d7 *= d3;
                }
                d6 *= d5;
                dArr3[i10] = d7 * d6;
                i6 = i10 + 1;
                d4 = d8;
                i5 = 2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void atan2(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double[] dArr4 = new double[getSize()];
        multiply(dArr2, i2, dArr2, i2, dArr4, 0);
        int size = getSize();
        double[] dArr5 = new double[size];
        multiply(dArr, i, dArr, i, dArr5, 0);
        add(dArr4, 0, dArr5, 0, dArr5, 0);
        rootN(dArr5, 0, 2, dArr4, 0);
        if (dArr2[i2] >= 0.0d) {
            add(dArr4, 0, dArr2, i2, dArr5, 0);
            divide(dArr, i, dArr5, 0, dArr4, 0);
            atan(dArr4, 0, dArr5, 0);
            for (int i4 = 0; i4 < size; i4++) {
                dArr3[i3 + i4] = dArr5[i4] * 2.0d;
            }
        } else {
            subtract(dArr4, 0, dArr2, i2, dArr5, 0);
            divide(dArr, i, dArr5, 0, dArr4, 0);
            atan(dArr4, 0, dArr5, 0);
            dArr3[i3] = (dArr5[0] <= 0.0d ? -3.141592653589793d : 3.141592653589793d) - (dArr5[0] * 2.0d);
            for (int i5 = 1; i5 < size; i5++) {
                dArr3[i3 + i5] = dArr5[i5] * (-2.0d);
            }
        }
        dArr3[i3] = FastMath.atan2(dArr[i], dArr2[i2]);
    }

    public void atanh(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        double d3;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.order + 1];
        double d4 = dArr[i];
        dArr3[0] = FastMath.atanh(d4);
        int i3 = dSCompiler.order;
        if (i3 > 0) {
            double[] dArr4 = new double[i3];
            dArr4[0] = 1.0d;
            double d5 = d4 * d4;
            double d6 = 1.0d / (1.0d - d5);
            dArr3[1] = dArr4[0] * d6;
            int i4 = 2;
            double d7 = d6;
            int i5 = 2;
            while (i5 <= dSCompiler.order) {
                double d8 = 0.0d;
                int i6 = i5 - 1;
                dArr4[i6] = ((double) i5) * dArr4[i5 - 2];
                int i7 = i6;
                while (i7 >= 0) {
                    d8 = (d8 * d5) + dArr4[i7];
                    if (i7 > i4) {
                        int i8 = i7 - 1;
                        d3 = d5;
                        d2 = d6;
                        dArr4[i7 - 2] = (((double) i8) * dArr4[i8]) + (((double) (((i5 * 2) - i7) + 1)) * dArr4[i7 - 3]);
                    } else {
                        d2 = d6;
                        d3 = d5;
                        if (i7 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i7 -= 2;
                        i4 = 2;
                        d5 = d3;
                        d6 = d2;
                    }
                    i7 -= 2;
                    i4 = 2;
                    d5 = d3;
                    d6 = d2;
                }
                double d9 = d6;
                double d10 = d5;
                if ((i5 & 1) == 0) {
                    d8 *= d4;
                }
                d7 *= d9;
                dArr3[i5] = d8 * d7;
                i5++;
                i4 = 2;
                dSCompiler = this;
                d5 = d10;
                d6 = d9;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void checkCompatibility(DSCompiler dSCompiler) throws DimensionMismatchException {
        if (this.parameters != dSCompiler.parameters) {
            throw new DimensionMismatchException(this.parameters, dSCompiler.parameters);
        }
        if (this.order != dSCompiler.order) {
            throw new DimensionMismatchException(this.order, dSCompiler.order);
        }
    }

    public void compose(double[] dArr, int i, double[] dArr2, double[] dArr3, int i2) {
        int i3 = 0;
        while (true) {
            int[][][] iArr = this.compIndirection;
            if (i3 >= iArr.length) {
                return;
            }
            double d2 = 0.0d;
            for (int[] iArr2 : iArr[i3]) {
                double d3 = ((double) iArr2[0]) * dArr2[iArr2[1]];
                for (int i4 = 2; i4 < iArr2.length; i4++) {
                    d3 *= dArr[iArr2[i4] + i];
                }
                d2 += d3;
            }
            dArr3[i2 + i3] = d2;
            i3++;
        }
    }

    public void cos(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.cos(dArr[i]);
        if (this.order > 0) {
            dArr3[1] = -FastMath.sin(dArr[i]);
            for (int i3 = 2; i3 <= this.order; i3++) {
                dArr3[i3] = -dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void cosh(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.cosh(dArr[i]);
        if (this.order > 0) {
            dArr3[1] = FastMath.sinh(dArr[i]);
            for (int i3 = 2; i3 <= this.order; i3++) {
                dArr3[i3] = dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void divide(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double[] dArr4 = new double[getSize()];
        pow(dArr2, i, -1, dArr4, 0);
        multiply(dArr, i, dArr4, 0, dArr3, i3);
    }

    public void exp(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        Arrays.fill(dArr3, FastMath.exp(dArr[i]));
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void expm1(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.expm1(dArr[i]);
        Arrays.fill(dArr3, 1, this.order + 1, FastMath.exp(dArr[i]));
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public int getFreeParameters() {
        return this.parameters;
    }

    public int getOrder() {
        return this.order;
    }

    public int getPartialDerivativeIndex(int... iArr) throws DimensionMismatchException, NumberIsTooLargeException {
        if (iArr.length == getFreeParameters()) {
            return getPartialDerivativeIndex(this.parameters, this.order, this.sizes, iArr);
        }
        throw new DimensionMismatchException(iArr.length, getFreeParameters());
    }

    public int[] getPartialDerivativeOrders(int i) {
        return this.derivativesIndirection[i];
    }

    public int getSize() {
        return this.sizes[this.parameters][this.order];
    }

    public void linearCombination(double d2, double[] dArr, int i, double d3, double[] dArr2, int i2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = MathArrays.linearCombination(d2, dArr[i + i4], d3, dArr2[i2 + i4]);
        }
    }

    public void log(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.log(dArr[i]);
        if (this.order > 0) {
            double d2 = 1.0d / dArr[i];
            double d3 = d2;
            for (int i3 = 1; i3 <= this.order; i3++) {
                dArr3[i3] = d3;
                d3 *= ((double) (-i3)) * d2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void log10(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.log10(dArr[i]);
        if (this.order > 0) {
            double d2 = 1.0d / dArr[i];
            double dLog = d2 / FastMath.log(10.0d);
            for (int i3 = 1; i3 <= this.order; i3++) {
                dArr3[i3] = dLog;
                dLog *= ((double) (-i3)) * d2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void log1p(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.log1p(dArr[i]);
        if (this.order > 0) {
            double d2 = 1.0d / (dArr[i] + 1.0d);
            double d3 = d2;
            for (int i3 = 1; i3 <= this.order; i3++) {
                dArr3[i3] = d3;
                d3 *= ((double) (-i3)) * d2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void multiply(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        int i4 = 0;
        while (true) {
            int[][][] iArr = this.multIndirection;
            if (i4 >= iArr.length) {
                return;
            }
            int[][] iArr2 = iArr[i4];
            double d2 = 0.0d;
            for (int i5 = 0; i5 < iArr2.length; i5++) {
                d2 += ((double) iArr2[i5][0]) * dArr[iArr2[i5][1] + i] * dArr2[iArr2[i5][2] + i2];
            }
            dArr3[i3 + i4] = d2;
            i4++;
        }
    }

    public void pow(double d2, double[] dArr, int i, double[] dArr2, int i2) {
        int i3 = 1;
        int i4 = this.order + 1;
        double[] dArr3 = new double[i4];
        if (d2 != 0.0d) {
            dArr3[0] = FastMath.pow(d2, dArr[i]);
            double dLog = FastMath.log(d2);
            while (i3 < i4) {
                dArr3[i3] = dArr3[i3 - 1] * dLog;
                i3++;
            }
        } else if (dArr[i] == 0.0d) {
            dArr3[0] = 1.0d;
            double d3 = Double.POSITIVE_INFINITY;
            while (i3 < i4) {
                d3 = -d3;
                dArr3[i3] = d3;
                i3++;
            }
        } else if (dArr[i] < 0.0d) {
            Arrays.fill(dArr3, Double.NaN);
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void remainder(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double dIEEEremainder = FastMath.IEEEremainder(dArr[i], dArr2[i2]);
        double dRint = FastMath.rint((dArr[i] - dIEEEremainder) / dArr2[i2]);
        dArr3[i3] = dIEEEremainder;
        for (int i4 = 1; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = dArr[i + i4] - (dArr2[i2 + i4] * dRint);
        }
    }

    public void rootN(double[] dArr, int i, int i2, double[] dArr2, int i3) {
        double d2;
        double dPow;
        double d3;
        double[] dArr3 = new double[this.order + 1];
        if (i2 == 2) {
            dArr3[0] = FastMath.sqrt(dArr[i]);
            d3 = 0.5d / dArr3[0];
        } else {
            if (i2 == 3) {
                dArr3[0] = FastMath.cbrt(dArr[i]);
                d2 = dArr3[0] * 3.0d;
                dPow = dArr3[0];
            } else {
                d2 = i2;
                dArr3[0] = FastMath.pow(dArr[i], 1.0d / d2);
                dPow = FastMath.pow(dArr3[0], i2 - 1);
            }
            d3 = 1.0d / (d2 * dPow);
        }
        double d4 = 1.0d / ((double) i2);
        double d5 = 1.0d / dArr[i];
        for (int i4 = 1; i4 <= this.order; i4++) {
            dArr3[i4] = d3;
            d3 *= (d4 - ((double) i4)) * d5;
        }
        compose(dArr, i, dArr3, dArr2, i3);
    }

    public void sin(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.sin(dArr[i]);
        if (this.order > 0) {
            dArr3[1] = FastMath.cos(dArr[i]);
            for (int i3 = 2; i3 <= this.order; i3++) {
                dArr3[i3] = -dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void sinh(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.order + 1];
        dArr3[0] = FastMath.sinh(dArr[i]);
        if (this.order > 0) {
            dArr3[1] = FastMath.cosh(dArr[i]);
            for (int i3 = 2; i3 <= this.order; i3++) {
                dArr3[i3] = dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void subtract(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = dArr[i + i4] - dArr2[i2 + i4];
        }
    }

    public void tan(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        double d3;
        double[] dArr3 = new double[this.order + 1];
        double dTan = FastMath.tan(dArr[i]);
        dArr3[0] = dTan;
        int i3 = this.order;
        if (i3 > 0) {
            int i4 = 2;
            double[] dArr4 = new double[i3 + 2];
            dArr4[1] = 1.0d;
            double d4 = dTan * dTan;
            int i5 = 1;
            while (i5 <= this.order) {
                double d5 = 0.0d;
                int i6 = i5 + 1;
                dArr4[i6] = ((double) i5) * dArr4[i5];
                int i7 = i6;
                while (i7 >= 0) {
                    double d6 = (d5 * d4) + dArr4[i7];
                    if (i7 > i4) {
                        int i8 = i7 - 1;
                        d2 = d4;
                        double d7 = ((double) i8) * dArr4[i8];
                        int i9 = i7 - 3;
                        d3 = d6;
                        dArr4[i7 - 2] = d7 + (((double) i9) * dArr4[i9]);
                    } else {
                        d2 = d4;
                        d3 = d6;
                        if (i7 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i7 -= 2;
                        d4 = d2;
                        d5 = d3;
                        i4 = 2;
                    }
                    i7 -= 2;
                    d4 = d2;
                    d5 = d3;
                    i4 = 2;
                }
                double d8 = d4;
                if ((i5 & 1) == 0) {
                    d5 *= dTan;
                }
                dArr3[i5] = d5;
                i5 = i6;
                d4 = d8;
                i4 = 2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void tanh(double[] dArr, int i, double[] dArr2, int i2) {
        double d2;
        double d3;
        double[] dArr3 = new double[this.order + 1];
        double dTanh = FastMath.tanh(dArr[i]);
        dArr3[0] = dTanh;
        int i3 = this.order;
        if (i3 > 0) {
            int i4 = 2;
            double[] dArr4 = new double[i3 + 2];
            dArr4[1] = 1.0d;
            double d4 = dTanh * dTanh;
            int i5 = 1;
            while (i5 <= this.order) {
                double d5 = 0.0d;
                int i6 = i5 + 1;
                dArr4[i6] = ((double) (-i5)) * dArr4[i5];
                int i7 = i6;
                while (i7 >= 0) {
                    double d6 = (d5 * d4) + dArr4[i7];
                    if (i7 > i4) {
                        int i8 = i7 - 1;
                        d2 = d4;
                        double d7 = ((double) i8) * dArr4[i8];
                        int i9 = i7 - 3;
                        d3 = d6;
                        dArr4[i7 - 2] = d7 - (((double) i9) * dArr4[i9]);
                    } else {
                        d2 = d4;
                        d3 = d6;
                        if (i7 == 2) {
                            dArr4[0] = dArr4[1];
                        }
                        i7 -= 2;
                        d4 = d2;
                        d5 = d3;
                        i4 = 2;
                    }
                    i7 -= 2;
                    d4 = d2;
                    d5 = d3;
                    i4 = 2;
                }
                double d8 = d4;
                if ((i5 & 1) == 0) {
                    d5 *= dTanh;
                }
                dArr3[i5] = d5;
                i5 = i6;
                d4 = d8;
                i4 = 2;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public double taylor(double[] dArr, int i, double... dArr2) throws MathArithmeticException {
        double d2 = 0.0d;
        for (int size = getSize() - 1; size >= 0; size--) {
            int[] partialDerivativeOrders = getPartialDerivativeOrders(size);
            double dPow = dArr[i + size];
            for (int i2 = 0; i2 < partialDerivativeOrders.length; i2++) {
                if (partialDerivativeOrders[i2] > 0) {
                    try {
                        dPow *= FastMath.pow(dArr2[i2], partialDerivativeOrders[i2]) / CombinatoricsUtils.factorial(partialDerivativeOrders[i2]);
                    } catch (NotPositiveException e2) {
                        throw new MathInternalError(e2);
                    }
                }
            }
            d2 += dPow;
        }
        return d2;
    }

    public void linearCombination(double d2, double[] dArr, int i, double d3, double[] dArr2, int i2, double d4, double[] dArr3, int i3, double[] dArr4, int i4) {
        for (int i5 = 0; i5 < getSize(); i5++) {
            dArr4[i4 + i5] = MathArrays.linearCombination(d2, dArr[i + i5], d3, dArr2[i2 + i5], d4, dArr3[i3 + i5]);
        }
    }

    private static int getPartialDerivativeIndex(int i, int i2, int[][] iArr, int... iArr2) throws NumberIsTooLargeException {
        int i3 = 0;
        int i4 = i2;
        int i5 = 0;
        for (int i6 = i - 1; i6 >= 0; i6--) {
            int i7 = iArr2[i6];
            i5 += i7;
            if (i5 > i2) {
                throw new NumberIsTooLargeException(Integer.valueOf(i5), Integer.valueOf(i2), true);
            }
            while (true) {
                int i8 = i7 - 1;
                if (i7 > 0) {
                    i3 += iArr[i6][i4];
                    i7 = i8;
                    i4--;
                }
            }
        }
        return i3;
    }

    public void linearCombination(double d2, double[] dArr, int i, double d3, double[] dArr2, int i2, double d4, double[] dArr3, int i3, double d5, double[] dArr4, int i4, double[] dArr5, int i5) {
        for (int i6 = 0; i6 < getSize(); i6++) {
            dArr5[i5 + i6] = MathArrays.linearCombination(d2, dArr[i + i6], d3, dArr2[i2 + i6], d4, dArr3[i3 + i6], d5, dArr4[i4 + i6]);
        }
    }

    public void pow(double[] dArr, int i, double d2, double[] dArr2, int i2) {
        int i3 = this.order;
        double[] dArr3 = new double[i3 + 1];
        double dPow = FastMath.pow(dArr[i], d2 - ((double) i3));
        for (int i4 = this.order; i4 > 0; i4--) {
            dArr3[i4] = dPow;
            dPow *= dArr[i];
        }
        dArr3[0] = dPow;
        double d3 = d2;
        for (int i5 = 1; i5 <= this.order; i5++) {
            dArr3[i5] = dArr3[i5] * d3;
            d3 *= d2 - ((double) i5);
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void pow(double[] dArr, int i, int i2, double[] dArr2, int i3) {
        if (i2 == 0) {
            dArr2[i3] = 1.0d;
            Arrays.fill(dArr2, i3 + 1, i3 + getSize(), 0.0d);
            return;
        }
        int i4 = this.order;
        double[] dArr3 = new double[i4 + 1];
        if (i2 > 0) {
            int iMin = FastMath.min(i4, i2);
            double dPow = FastMath.pow(dArr[i], i2 - iMin);
            while (iMin > 0) {
                dArr3[iMin] = dPow;
                dPow *= dArr[i];
                iMin--;
            }
            dArr3[0] = dPow;
        } else {
            double d2 = 1.0d / dArr[i];
            double dPow2 = FastMath.pow(d2, -i2);
            for (int i5 = 0; i5 <= this.order; i5++) {
                dArr3[i5] = dPow2;
                dPow2 *= d2;
            }
        }
        double d3 = i2;
        for (int i6 = 1; i6 <= this.order; i6++) {
            dArr3[i6] = dArr3[i6] * d3;
            d3 *= (double) (i2 - i6);
        }
        compose(dArr, i, dArr3, dArr2, i3);
    }

    public void pow(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double[] dArr4 = new double[getSize()];
        log(dArr, i, dArr4, 0);
        double[] dArr5 = new double[getSize()];
        multiply(dArr4, 0, dArr2, i2, dArr5, 0);
        exp(dArr5, 0, dArr3, i3);
    }
}
