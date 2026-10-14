package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
class SchurTransformer {
    private static final int MAX_ITERATIONS = 100;
    private RealMatrix cachedP;
    private RealMatrix cachedPt;
    private RealMatrix cachedT;
    private final double epsilon = Precision.EPSILON;
    private final double[][] matrixP;
    private final double[][] matrixT;

    private static class ShiftInfo {
        double exShift;
        double w;
        double x;
        double y;

        private ShiftInfo() {
        }
    }

    SchurTransformer(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        HessenbergTransformer hessenbergTransformer = new HessenbergTransformer(realMatrix);
        this.matrixT = hessenbergTransformer.getH().getData();
        this.matrixP = hessenbergTransformer.getP().getData();
        this.cachedT = null;
        this.cachedP = null;
        this.cachedPt = null;
        transform();
    }

    private void computeShift(int i, int i2, int i3, ShiftInfo shiftInfo) {
        double[][] dArr = this.matrixT;
        double d2 = dArr[i2][i2];
        shiftInfo.x = d2;
        shiftInfo.w = 0.0d;
        shiftInfo.y = 0.0d;
        if (i < i2) {
            int i4 = i2 - 1;
            shiftInfo.y = dArr[i4][i4];
            shiftInfo.w = dArr[i2][i4] * dArr[i4][i2];
        }
        if (i3 == 10) {
            shiftInfo.exShift += d2;
            for (int i5 = 0; i5 <= i2; i5++) {
                double[] dArr2 = this.matrixT[i5];
                dArr2[i5] = dArr2[i5] - shiftInfo.x;
            }
            int i6 = i2 - 1;
            double dAbs = FastMath.abs(this.matrixT[i2][i6]) + FastMath.abs(this.matrixT[i6][i2 - 2]);
            double d3 = 0.75d * dAbs;
            shiftInfo.x = d3;
            shiftInfo.y = d3;
            shiftInfo.w = (-0.4375d) * dAbs * dAbs;
        }
        if (i3 == 30) {
            double d4 = (shiftInfo.y - shiftInfo.x) / 2.0d;
            double d5 = (d4 * d4) + shiftInfo.w;
            if (d5 > 0.0d) {
                double dSqrt = FastMath.sqrt(d5);
                double d6 = shiftInfo.y;
                double d7 = shiftInfo.x;
                if (d6 < d7) {
                    dSqrt = -dSqrt;
                }
                double d8 = d7 - (shiftInfo.w / (((d6 - d7) / 2.0d) + dSqrt));
                for (int i7 = 0; i7 <= i2; i7++) {
                    double[] dArr3 = this.matrixT[i7];
                    dArr3[i7] = dArr3[i7] - d8;
                }
                shiftInfo.exShift += d8;
                shiftInfo.w = 0.964d;
                shiftInfo.y = 0.964d;
                shiftInfo.x = 0.964d;
            }
        }
    }

    private int findSmallSubDiagonalElement(int i, double d2) {
        while (i > 0) {
            int i2 = i - 1;
            double dAbs = FastMath.abs(this.matrixT[i2][i2]) + FastMath.abs(this.matrixT[i][i]);
            if (dAbs == 0.0d) {
                dAbs = d2;
            }
            if (FastMath.abs(this.matrixT[i][i2]) < this.epsilon * dAbs) {
                break;
            }
            i--;
        }
        return i;
    }

    private double getNorm() {
        double dAbs = 0.0d;
        for (int i = 0; i < this.matrixT.length; i++) {
            int iMax = FastMath.max(i - 1, 0);
            while (true) {
                double[][] dArr = this.matrixT;
                if (iMax < dArr.length) {
                    dAbs += FastMath.abs(dArr[i][iMax]);
                    iMax++;
                }
            }
        }
        return dAbs;
    }

    private int initQRStep(int i, int i2, ShiftInfo shiftInfo, double[] dArr) {
        int i3 = i2 - 2;
        while (i3 >= i) {
            double[][] dArr2 = this.matrixT;
            double d2 = dArr2[i3][i3];
            double d3 = shiftInfo.x - d2;
            double d4 = shiftInfo.y - d2;
            int i4 = i3;
            int i5 = i4 + 1;
            dArr[0] = (((d3 * d4) - shiftInfo.w) / dArr2[i5][i4]) + dArr2[i4][i5];
            dArr[1] = ((dArr2[i5][i5] - d2) - d3) - d4;
            dArr[2] = dArr2[i4 + 2][i5];
            if (i4 == i) {
                return i4;
            }
            int i6 = i4 - 1;
            if (FastMath.abs(dArr2[i4][i6]) * (FastMath.abs(dArr[1]) + FastMath.abs(dArr[2])) < this.epsilon * FastMath.abs(dArr[0]) * (FastMath.abs(this.matrixT[i6][i6]) + FastMath.abs(d2) + FastMath.abs(this.matrixT[i5][i5]))) {
                return i4;
            }
            i3 = i4 - 1;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0087  */
    /* JADX WARN: Code duplicated, block: B:22:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x008e  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:26:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:30:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:37:0x0125  */
    /* JADX WARN: Code duplicated, block: B:39:0x013c  */
    /* JADX WARN: Code duplicated, block: B:43:0x016d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0187  */
    /* JADX WARN: Code duplicated, block: B:48:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x019b A[SYNTHETIC] */
    private void performDoubleQRStep(int i, int i2, int i3, ShiftInfo shiftInfo, double[] dArr) {
        double d2;
        double dSqrt;
        int i4;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        int i5;
        double d8;
        int i6;
        int length;
        int i7;
        double[][] dArr2;
        double[][] dArr3;
        double d9;
        double[][] dArr4;
        double d10;
        int length2 = this.matrixT.length;
        double d11 = dArr[0];
        double d12 = dArr[1];
        double d13 = dArr[2];
        int i8 = i2;
        while (true) {
            int i9 = i3 - 1;
            if (i8 > i9) {
                break;
            }
            boolean z = i8 != i9;
            if (i8 != i2) {
                double[][] dArr5 = this.matrixT;
                int i10 = i8 - 1;
                double d14 = dArr5[i8][i10];
                double d15 = dArr5[i8 + 1][i10];
                double d16 = z ? dArr5[i8 + 2][i10] : 0.0d;
                double dAbs = FastMath.abs(d14) + FastMath.abs(d15) + FastMath.abs(d16);
                shiftInfo.x = dAbs;
                double d17 = d16;
                if (Precision.equals(dAbs, 0.0d, this.epsilon)) {
                    i4 = length2;
                    d11 = d14;
                    d12 = d15;
                    d13 = d17;
                } else {
                    double d18 = shiftInfo.x;
                    double d19 = d14 / d18;
                    d12 = d15 / d18;
                    d13 = d17 / d18;
                    d11 = d19;
                    d2 = d13;
                    dSqrt = FastMath.sqrt((d11 * d11) + (d12 * d12) + (d13 * d13));
                    if (d11 < 0.0d) {
                        dSqrt = -dSqrt;
                    }
                    if (dSqrt != 0.0d) {
                        if (i8 != i2) {
                            d4 = d12;
                            d3 = d11;
                            this.matrixT[i8][i8 - 1] = (-dSqrt) * shiftInfo.x;
                        } else {
                            d3 = d11;
                            d4 = d12;
                            if (i != i2) {
                                double[][] dArr6 = this.matrixT;
                                int i11 = i8 - 1;
                                dArr6[i8][i11] = -dArr6[i8][i11];
                            }
                            d11 = d3 + dSqrt;
                            shiftInfo.x = d11 / dSqrt;
                            shiftInfo.y = d4 / dSqrt;
                            d5 = d2 / dSqrt;
                            d6 = d4 / d11;
                            d7 = d2 / d11;
                            i5 = i8;
                            while (i5 < length2) {
                                dArr4 = this.matrixT;
                                int i12 = i8 + 1;
                                d10 = dArr4[i8][i5] + (dArr4[i12][i5] * d6);
                                if (z) {
                                    int i13 = i8 + 2;
                                    d10 += dArr4[i13][i5] * d7;
                                    double[] dArr7 = dArr4[i13];
                                    dArr7[i5] = dArr7[i5] - (d10 * d5);
                                }
                                double[] dArr8 = dArr4[i8];
                                dArr8[i5] = dArr8[i5] - (shiftInfo.x * d10);
                                double[] dArr9 = dArr4[i12];
                                dArr9[i5] = dArr9[i5] - (shiftInfo.y * d10);
                                i5++;
                                length2 = length2;
                                d11 = d10;
                                d6 = d6;
                            }
                            d8 = d6;
                            i4 = length2;
                            i6 = 0;
                            while (i6 <= FastMath.min(i3, i8 + 3)) {
                                double d20 = shiftInfo.x;
                                dArr3 = this.matrixT;
                                int i14 = i8 + 1;
                                d9 = (d20 * dArr3[i6][i8]) + (shiftInfo.y * dArr3[i6][i14]);
                                if (z) {
                                    int i15 = i8 + 2;
                                    d9 += dArr3[i6][i15] * d5;
                                    double[] dArr10 = dArr3[i6];
                                    dArr10[i15] = dArr10[i15] - (d9 * d7);
                                }
                                double[] dArr11 = dArr3[i6];
                                dArr11[i8] = dArr11[i8] - d9;
                                double[] dArr12 = dArr3[i6];
                                dArr12[i14] = dArr12[i14] - (d9 * d8);
                                i6++;
                                d11 = d9;
                            }
                            length = this.matrixT.length - 1;
                            for (i7 = 0; i7 <= length; i7++) {
                                double d21 = shiftInfo.x;
                                dArr2 = this.matrixP;
                                int i16 = i8 + 1;
                                d11 = (d21 * dArr2[i7][i8]) + (shiftInfo.y * dArr2[i7][i16]);
                                if (z) {
                                    int i17 = i8 + 2;
                                    d11 += dArr2[i7][i17] * d5;
                                    double[] dArr13 = dArr2[i7];
                                    dArr13[i17] = dArr13[i17] - (d11 * d7);
                                }
                                double[] dArr14 = dArr2[i7];
                                dArr14[i8] = dArr14[i8] - d11;
                                double[] dArr15 = dArr2[i7];
                                dArr15[i16] = dArr15[i16] - (d11 * d8);
                            }
                            d13 = d7;
                            d12 = d8;
                        }
                        d11 = d3 + dSqrt;
                        shiftInfo.x = d11 / dSqrt;
                        shiftInfo.y = d4 / dSqrt;
                        d5 = d2 / dSqrt;
                        d6 = d4 / d11;
                        d7 = d2 / d11;
                        i5 = i8;
                        while (i5 < length2) {
                            dArr4 = this.matrixT;
                            int i18 = i8 + 1;
                            d10 = dArr4[i8][i5] + (dArr4[i18][i5] * d6);
                            if (z) {
                                int i19 = i8 + 2;
                                d10 += dArr4[i19][i5] * d7;
                                double[] dArr16 = dArr4[i19];
                                dArr16[i5] = dArr16[i5] - (d10 * d5);
                            }
                            double[] dArr17 = dArr4[i8];
                            dArr17[i5] = dArr17[i5] - (shiftInfo.x * d10);
                            double[] dArr18 = dArr4[i18];
                            dArr18[i5] = dArr18[i5] - (shiftInfo.y * d10);
                            i5++;
                            length2 = length2;
                            d11 = d10;
                            d6 = d6;
                        }
                        d8 = d6;
                        i4 = length2;
                        i6 = 0;
                        while (i6 <= FastMath.min(i3, i8 + 3)) {
                            double d22 = shiftInfo.x;
                            dArr3 = this.matrixT;
                            int i110 = i8 + 1;
                            d9 = (d22 * dArr3[i6][i8]) + (shiftInfo.y * dArr3[i6][i110]);
                            if (z) {
                                int i111 = i8 + 2;
                                d9 += dArr3[i6][i111] * d5;
                                double[] dArr19 = dArr3[i6];
                                dArr19[i111] = dArr19[i111] - (d9 * d7);
                            }
                            double[] dArr110 = dArr3[i6];
                            dArr110[i8] = dArr110[i8] - d9;
                            double[] dArr111 = dArr3[i6];
                            dArr111[i110] = dArr111[i110] - (d9 * d8);
                            i6++;
                            d11 = d9;
                        }
                        length = this.matrixT.length - 1;
                        while (i7 <= length) {
                            double d23 = shiftInfo.x;
                            dArr2 = this.matrixP;
                            int i112 = i8 + 1;
                            d11 = (d23 * dArr2[i7][i8]) + (shiftInfo.y * dArr2[i7][i112]);
                            if (z) {
                                int i113 = i8 + 2;
                                d11 += dArr2[i7][i113] * d5;
                                double[] dArr112 = dArr2[i7];
                                dArr112[i113] = dArr112[i113] - (d11 * d7);
                            }
                            double[] dArr113 = dArr2[i7];
                            dArr113[i8] = dArr113[i8] - d11;
                            double[] dArr114 = dArr2[i7];
                            dArr114[i112] = dArr114[i112] - (d11 * d8);
                        }
                        d13 = d7;
                        d12 = d8;
                    } else {
                        i4 = length2;
                        d13 = d2;
                    }
                }
            } else {
                d2 = d13;
                dSqrt = FastMath.sqrt((d11 * d11) + (d12 * d12) + (d13 * d13));
                if (d11 < 0.0d) {
                    dSqrt = -dSqrt;
                }
                if (dSqrt != 0.0d) {
                    if (i8 != i2) {
                        d4 = d12;
                        d3 = d11;
                        this.matrixT[i8][i8 - 1] = (-dSqrt) * shiftInfo.x;
                    } else {
                        d3 = d11;
                        d4 = d12;
                        if (i != i2) {
                            double[][] dArr20 = this.matrixT;
                            int i114 = i8 - 1;
                            dArr20[i8][i114] = -dArr20[i8][i114];
                        }
                        d11 = d3 + dSqrt;
                        shiftInfo.x = d11 / dSqrt;
                        shiftInfo.y = d4 / dSqrt;
                        d5 = d2 / dSqrt;
                        d6 = d4 / d11;
                        d7 = d2 / d11;
                        i5 = i8;
                        while (i5 < length2) {
                            dArr4 = this.matrixT;
                            int i115 = i8 + 1;
                            d10 = dArr4[i8][i5] + (dArr4[i115][i5] * d6);
                            if (z) {
                                int i116 = i8 + 2;
                                d10 += dArr4[i116][i5] * d7;
                                double[] dArr115 = dArr4[i116];
                                dArr115[i5] = dArr115[i5] - (d10 * d5);
                            }
                            double[] dArr116 = dArr4[i8];
                            dArr116[i5] = dArr116[i5] - (shiftInfo.x * d10);
                            double[] dArr117 = dArr4[i115];
                            dArr117[i5] = dArr117[i5] - (shiftInfo.y * d10);
                            i5++;
                            length2 = length2;
                            d11 = d10;
                            d6 = d6;
                        }
                        d8 = d6;
                        i4 = length2;
                        i6 = 0;
                        while (i6 <= FastMath.min(i3, i8 + 3)) {
                            double d24 = shiftInfo.x;
                            dArr3 = this.matrixT;
                            int i117 = i8 + 1;
                            d9 = (d24 * dArr3[i6][i8]) + (shiftInfo.y * dArr3[i6][i117]);
                            if (z) {
                                int i118 = i8 + 2;
                                d9 += dArr3[i6][i118] * d5;
                                double[] dArr118 = dArr3[i6];
                                dArr118[i118] = dArr118[i118] - (d9 * d7);
                            }
                            double[] dArr119 = dArr3[i6];
                            dArr119[i8] = dArr119[i8] - d9;
                            double[] dArr1110 = dArr3[i6];
                            dArr1110[i117] = dArr1110[i117] - (d9 * d8);
                            i6++;
                            d11 = d9;
                        }
                        length = this.matrixT.length - 1;
                        while (i7 <= length) {
                            double d25 = shiftInfo.x;
                            dArr2 = this.matrixP;
                            int i119 = i8 + 1;
                            d11 = (d25 * dArr2[i7][i8]) + (shiftInfo.y * dArr2[i7][i119]);
                            if (z) {
                                int i1110 = i8 + 2;
                                d11 += dArr2[i7][i1110] * d5;
                                double[] dArr1111 = dArr2[i7];
                                dArr1111[i1110] = dArr1111[i1110] - (d11 * d7);
                            }
                            double[] dArr1112 = dArr2[i7];
                            dArr1112[i8] = dArr1112[i8] - d11;
                            double[] dArr1113 = dArr2[i7];
                            dArr1113[i119] = dArr1113[i119] - (d11 * d8);
                        }
                        d13 = d7;
                        d12 = d8;
                    }
                    d11 = d3 + dSqrt;
                    shiftInfo.x = d11 / dSqrt;
                    shiftInfo.y = d4 / dSqrt;
                    d5 = d2 / dSqrt;
                    d6 = d4 / d11;
                    d7 = d2 / d11;
                    i5 = i8;
                    while (i5 < length2) {
                        dArr4 = this.matrixT;
                        int i1111 = i8 + 1;
                        d10 = dArr4[i8][i5] + (dArr4[i1111][i5] * d6);
                        if (z) {
                            int i1112 = i8 + 2;
                            d10 += dArr4[i1112][i5] * d7;
                            double[] dArr1114 = dArr4[i1112];
                            dArr1114[i5] = dArr1114[i5] - (d10 * d5);
                        }
                        double[] dArr1115 = dArr4[i8];
                        dArr1115[i5] = dArr1115[i5] - (shiftInfo.x * d10);
                        double[] dArr1116 = dArr4[i1111];
                        dArr1116[i5] = dArr1116[i5] - (shiftInfo.y * d10);
                        i5++;
                        length2 = length2;
                        d11 = d10;
                        d6 = d6;
                    }
                    d8 = d6;
                    i4 = length2;
                    i6 = 0;
                    while (i6 <= FastMath.min(i3, i8 + 3)) {
                        double d26 = shiftInfo.x;
                        dArr3 = this.matrixT;
                        int i1113 = i8 + 1;
                        d9 = (d26 * dArr3[i6][i8]) + (shiftInfo.y * dArr3[i6][i1113]);
                        if (z) {
                            int i1114 = i8 + 2;
                            d9 += dArr3[i6][i1114] * d5;
                            double[] dArr1117 = dArr3[i6];
                            dArr1117[i1114] = dArr1117[i1114] - (d9 * d7);
                        }
                        double[] dArr1118 = dArr3[i6];
                        dArr1118[i8] = dArr1118[i8] - d9;
                        double[] dArr1119 = dArr3[i6];
                        dArr1119[i1113] = dArr1119[i1113] - (d9 * d8);
                        i6++;
                        d11 = d9;
                    }
                    length = this.matrixT.length - 1;
                    while (i7 <= length) {
                        double d27 = shiftInfo.x;
                        dArr2 = this.matrixP;
                        int i1115 = i8 + 1;
                        d11 = (d27 * dArr2[i7][i8]) + (shiftInfo.y * dArr2[i7][i1115]);
                        if (z) {
                            int i1116 = i8 + 2;
                            d11 += dArr2[i7][i1116] * d5;
                            double[] dArr11110 = dArr2[i7];
                            dArr11110[i1116] = dArr11110[i1116] - (d11 * d7);
                        }
                        double[] dArr11111 = dArr2[i7];
                        dArr11111[i8] = dArr11111[i8] - d11;
                        double[] dArr11112 = dArr2[i7];
                        dArr11112[i1115] = dArr11112[i1115] - (d11 * d8);
                    }
                    d13 = d7;
                    d12 = d8;
                } else {
                    i4 = length2;
                    d13 = d2;
                }
            }
            i8++;
            length2 = i4;
        }
        int i20 = i2 + 2;
        for (int i21 = i20; i21 <= i3; i21++) {
            double[][] dArr21 = this.matrixT;
            dArr21[i21][i21 - 2] = 0.0d;
            if (i21 > i20) {
                dArr21[i21][i21 - 3] = 0.0d;
            }
        }
    }

    private void transform() {
        int length = this.matrixT.length;
        double norm = getNorm();
        ShiftInfo shiftInfo = new ShiftInfo();
        int i = length - 1;
        int i2 = i;
        int i3 = 0;
        while (i2 >= 0) {
            int iFindSmallSubDiagonalElement = findSmallSubDiagonalElement(i2, norm);
            if (iFindSmallSubDiagonalElement == i2) {
                double[] dArr = this.matrixT[i2];
                dArr[i2] = dArr[i2] + shiftInfo.exShift;
                i2--;
            } else {
                int i4 = i2 - 1;
                if (iFindSmallSubDiagonalElement == i4) {
                    double[][] dArr2 = this.matrixT;
                    double d2 = (dArr2[i4][i4] - dArr2[i2][i2]) / 2.0d;
                    double d3 = (d2 * d2) + (dArr2[i2][i4] * dArr2[i4][i2]);
                    double[] dArr3 = dArr2[i2];
                    double d4 = dArr3[i2];
                    double d5 = shiftInfo.exShift;
                    dArr3[i2] = d4 + d5;
                    double[] dArr4 = dArr2[i4];
                    dArr4[i4] = dArr4[i4] + d5;
                    if (d3 >= 0.0d) {
                        double dSqrt = FastMath.sqrt(FastMath.abs(d3));
                        double d6 = d2 >= 0.0d ? d2 + dSqrt : d2 - dSqrt;
                        double d7 = this.matrixT[i2][i4];
                        double dAbs = FastMath.abs(d7) + FastMath.abs(d6);
                        double d8 = d7 / dAbs;
                        double d9 = d6 / dAbs;
                        double dSqrt2 = FastMath.sqrt((d8 * d8) + (d9 * d9));
                        double d10 = d8 / dSqrt2;
                        double d11 = d9 / dSqrt2;
                        for (int i5 = i4; i5 < length; i5++) {
                            double[][] dArr5 = this.matrixT;
                            double d12 = dArr5[i4][i5];
                            dArr5[i4][i5] = (d11 * d12) + (dArr5[i2][i5] * d10);
                            dArr5[i2][i5] = (dArr5[i2][i5] * d11) - (d12 * d10);
                        }
                        for (int i6 = 0; i6 <= i2; i6++) {
                            double[][] dArr6 = this.matrixT;
                            double d13 = dArr6[i6][i4];
                            dArr6[i6][i4] = (d11 * d13) + (dArr6[i6][i2] * d10);
                            dArr6[i6][i2] = (dArr6[i6][i2] * d11) - (d13 * d10);
                        }
                        for (int i7 = 0; i7 <= i; i7++) {
                            double[][] dArr7 = this.matrixP;
                            double d14 = dArr7[i7][i4];
                            dArr7[i7][i4] = (d11 * d14) + (dArr7[i7][i2] * d10);
                            dArr7[i7][i2] = (dArr7[i7][i2] * d11) - (d14 * d10);
                        }
                    }
                    i2 -= 2;
                } else {
                    norm = norm;
                    computeShift(iFindSmallSubDiagonalElement, i2, i3, shiftInfo);
                    int i8 = i3 + 1;
                    if (i8 > 100) {
                        throw new MaxCountExceededException(LocalizedFormats.CONVERGENCE_FAILED, 100, new Object[0]);
                    }
                    double[] dArr8 = new double[3];
                    performDoubleQRStep(iFindSmallSubDiagonalElement, initQRStep(iFindSmallSubDiagonalElement, i2, shiftInfo, dArr8), i2, shiftInfo, dArr8);
                    i3 = i8;
                }
                norm = norm;
            }
            i3 = 0;
            norm = norm;
        }
    }

    public RealMatrix getP() {
        if (this.cachedP == null) {
            this.cachedP = MatrixUtils.createRealMatrix(this.matrixP);
        }
        return this.cachedP;
    }

    public RealMatrix getPT() {
        if (this.cachedPt == null) {
            this.cachedPt = getP().transpose();
        }
        return this.cachedPt;
    }

    public RealMatrix getT() {
        if (this.cachedT == null) {
            this.cachedT = MatrixUtils.createRealMatrix(this.matrixT);
        }
        return this.cachedT;
    }
}
