package org.apache.commons.math3.stat.regression;

import java.util.Arrays;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class MillerUpdatingRegression implements UpdatingMultipleLinearRegression {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double[] f16204d;
    private final double epsilon;
    private boolean hasIntercept;
    private final boolean[] lindep;
    private long nobs;
    private final int nvars;
    private final double[] r;
    private final double[] rhs;
    private final double[] rss;
    private boolean rss_set;
    private double sserr;
    private double sumsqy;
    private double sumy;
    private final double[] tol;
    private boolean tol_set;
    private final int[] vorder;
    private final double[] work_sing;
    private final double[] work_tolset;
    private final double[] x_sing;

    private MillerUpdatingRegression() {
        this(-1, false, Double.NaN);
    }

    private double[] cov(int i) {
        double d2;
        if (this.nobs <= i) {
            return null;
        }
        double d3 = 0.0d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            d2 = 1.0d;
            if (i3 >= i) {
                break;
            }
            if (!this.lindep[i3]) {
                d3 += 1.0d;
            }
            i3++;
        }
        int i4 = i - 1;
        double d4 = this.rss[i4] / (this.nobs - d3);
        double[] dArr = new double[(i * i4) / 2];
        inverse(dArr, i);
        double[] dArr2 = new double[((i + 1) * i) / 2];
        Arrays.fill(dArr2, Double.NaN);
        int i5 = 0;
        while (i2 < i) {
            if (!this.lindep[i2]) {
                int i6 = i2;
                int i7 = i5;
                while (i6 < i) {
                    if (this.lindep[i6]) {
                        i7 += (i - i6) - 1;
                    } else {
                        int i8 = (i5 + i6) - i2;
                        double d5 = i2 == i6 ? d2 / this.f16204d[i6] : dArr[i8 - 1] / this.f16204d[i6];
                        int i9 = i6 + 1;
                        for (int i10 = i9; i10 < i; i10++) {
                            if (!this.lindep[i10]) {
                                d5 += (dArr[i8] * dArr[i7]) / this.f16204d[i10];
                            }
                            i8++;
                            i7++;
                        }
                        dArr2[((i9 * i6) / 2) + i2] = d5 * d4;
                    }
                    i6++;
                    d2 = 1.0d;
                }
            }
            i5 += (i - i2) - 1;
            i2++;
            d2 = 1.0d;
        }
        return dArr2;
    }

    private void include(double[] dArr, double d2, double d3) {
        double dSmartAdd;
        this.rss_set = false;
        this.sumy = smartAdd(d3, this.sumy);
        this.sumsqy = smartAdd(this.sumsqy, d3 * d3);
        double d4 = d3;
        int i = 0;
        double d5 = d2;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            double d6 = 0.0d;
            if (d5 == 0.0d) {
                return;
            }
            double d7 = dArr[i2];
            if (d7 == 0.0d) {
                i += (this.nvars - i2) - 1;
            } else {
                double d8 = this.f16204d[i2];
                double d9 = d5 * d7;
                if (d8 != 0.0d) {
                    double d10 = d9 * d7;
                    dSmartAdd = smartAdd(d8, d10);
                    if (FastMath.abs(d10 / d8) > Precision.EPSILON) {
                        d5 = (d5 * d8) / dSmartAdd;
                    }
                    d6 = d5;
                } else {
                    dSmartAdd = d9 * d7;
                }
                this.f16204d[i2] = dSmartAdd;
                int i3 = i2 + 1;
                while (i3 < this.nvars) {
                    double d11 = d6;
                    double d12 = dArr[i3];
                    double d13 = d4;
                    dArr[i3] = smartAdd(d12, (-d7) * this.r[i]);
                    if (d8 != 0.0d) {
                        double[] dArr2 = this.r;
                        dArr2[i] = smartAdd(dArr2[i] * d8, d12 * d9) / dSmartAdd;
                    } else {
                        this.r[i] = d12 / d7;
                    }
                    i++;
                    i3++;
                    d6 = d11;
                    d4 = d13;
                }
                double d14 = d4;
                double d15 = d6;
                double dSmartAdd2 = smartAdd(d14, (-d7) * this.rhs[i2]);
                if (d8 != 0.0d) {
                    double[] dArr3 = this.rhs;
                    dArr3[i2] = smartAdd(d8 * dArr3[i2], d14 * d9) / dSmartAdd;
                } else {
                    this.rhs[i2] = d14 / d7;
                }
                d4 = dSmartAdd2;
                d5 = d15;
            }
        }
        this.sserr = smartAdd(this.sserr, d5 * d4 * d4);
    }

    private void inverse(double[] dArr, int i) {
        int i2 = i - 1;
        int i3 = ((i * i2) / 2) - 1;
        Arrays.fill(dArr, Double.NaN);
        while (i2 > 0) {
            if (this.lindep[i2]) {
                i3 -= i - i2;
            } else {
                int i4 = this.nvars;
                int i5 = ((i2 - 1) * ((i4 + i4) - i2)) / 2;
                for (int i6 = i; i6 > i2; i6--) {
                    double d2 = 0.0d;
                    int i7 = i3;
                    int i8 = i5;
                    for (int i9 = i2; i9 < i6 - 1; i9++) {
                        i7 += (i - i9) - 1;
                        if (!this.lindep[i9]) {
                            d2 += (-this.r[i8]) * dArr[i7];
                        }
                        i8++;
                    }
                    dArr[i3] = d2 - this.r[i8];
                    i3--;
                }
            }
            i2--;
        }
    }

    private double[] regcf(int i) throws ModelSpecificationException {
        if (i < 1) {
            throw new ModelSpecificationException(LocalizedFormats.NO_REGRESSORS, new Object[0]);
        }
        if (i > this.nvars) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(i), Integer.valueOf(this.nvars));
        }
        if (!this.tol_set) {
            tolset();
        }
        double[] dArr = new double[i];
        boolean z = false;
        for (int i2 = i - 1; i2 > -1; i2--) {
            if (FastMath.sqrt(this.f16204d[i2]) < this.tol[i2]) {
                dArr[i2] = 0.0d;
                this.f16204d[i2] = 0.0d;
                z = true;
            } else {
                dArr[i2] = this.rhs[i2];
                int i3 = this.nvars;
                int i4 = ((((i3 + i3) - i2) - 1) * i2) / 2;
                for (int i5 = i2 + 1; i5 < i; i5++) {
                    dArr[i2] = smartAdd(dArr[i2], (-this.r[i4]) * dArr[i5]);
                    i4++;
                }
            }
        }
        if (z) {
            for (int i6 = 0; i6 < i; i6++) {
                if (this.lindep[i6]) {
                    dArr[i6] = Double.NaN;
                }
            }
        }
        return dArr;
    }

    private int reorderRegressors(int[] iArr, int i) {
        if (iArr.length < 1 || iArr.length > (this.nvars + 1) - i) {
            return -1;
        }
        int i2 = i;
        int i3 = i2;
        while (i2 < this.nvars) {
            int i4 = this.vorder[i2];
            for (int i5 : iArr) {
                if (i4 == i5 && i2 > i3) {
                    vmove(i2, i3);
                    i3++;
                    if (i3 < iArr.length + i) {
                        break;
                    }
                    return 0;
                }
            }
            i2++;
        }
        return 0;
    }

    private void singcheck() {
        for (int i = 0; i < this.nvars; i++) {
            this.work_sing[i] = FastMath.sqrt(this.f16204d[i]);
        }
        for (int i2 = 0; i2 < this.nvars; i2++) {
            double d2 = this.tol[i2];
            int i3 = i2 - 1;
            int i4 = i3;
            for (int i5 = 0; i5 < i3; i5++) {
                if (FastMath.abs(this.r[i4]) * this.work_sing[i5] < d2) {
                    this.r[i4] = 0.0d;
                }
                i4 += (this.nvars - i5) - 2;
            }
            boolean[] zArr = this.lindep;
            zArr[i2] = false;
            if (this.work_sing[i2] < d2) {
                zArr[i2] = true;
                if (i2 < this.nvars - 1) {
                    Arrays.fill(this.x_sing, 0.0d);
                    int i6 = this.nvars;
                    int i7 = ((((i6 + i6) - i2) - 1) * i2) / 2;
                    int i8 = i2 + 1;
                    while (i8 < this.nvars) {
                        double[] dArr = this.x_sing;
                        double[] dArr2 = this.r;
                        dArr[i8] = dArr2[i7];
                        dArr2[i7] = 0.0d;
                        i8++;
                        i7++;
                    }
                    double[] dArr3 = this.rhs;
                    double d3 = dArr3[i2];
                    double[] dArr4 = this.f16204d;
                    double d4 = dArr4[i2];
                    dArr4[i2] = 0.0d;
                    dArr3[i2] = 0.0d;
                    include(this.x_sing, d4, d3);
                } else {
                    double d5 = this.sserr;
                    double d6 = this.f16204d[i2];
                    double[] dArr5 = this.rhs;
                    this.sserr = d5 + (d6 * dArr5[i2] * dArr5[i2]);
                }
            }
        }
    }

    private double smartAdd(double d2, double d3) {
        double dAbs = FastMath.abs(d2);
        double dAbs2 = FastMath.abs(d3);
        if (dAbs > dAbs2) {
            return dAbs2 > dAbs * Precision.EPSILON ? d2 + d3 : d2;
        }
        return dAbs > dAbs2 * Precision.EPSILON ? d2 + d3 : d3;
    }

    private void ss() {
        double d2 = this.sserr;
        double[] dArr = this.rss;
        int i = this.nvars;
        dArr[i - 1] = d2;
        for (int i2 = i - 1; i2 > 0; i2--) {
            double d3 = this.f16204d[i2];
            double[] dArr2 = this.rhs;
            d2 += d3 * dArr2[i2] * dArr2[i2];
            this.rss[i2 - 1] = d2;
        }
        this.rss_set = true;
    }

    private void tolset() {
        double d2 = this.epsilon;
        for (int i = 0; i < this.nvars; i++) {
            this.work_tolset[i] = FastMath.sqrt(this.f16204d[i]);
        }
        this.tol[0] = this.work_tolset[0] * d2;
        for (int i2 = 1; i2 < this.nvars; i2++) {
            int i3 = i2 - 1;
            double dAbs = this.work_tolset[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                dAbs += FastMath.abs(this.r[i3]) * this.work_tolset[i4];
                i3 += (this.nvars - i4) - 2;
            }
            this.tol[i2] = dAbs * d2;
        }
        this.tol_set = true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f4 A[LOOP:3: B:43:0x00f0->B:45:0x00f4, LOOP_END] */
    private void vmove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        double d2;
        double d3;
        int i7;
        int i8 = i;
        if (i8 == i2) {
            return;
        }
        if (!this.rss_set) {
            ss();
        }
        if (i8 < i2) {
            i4 = i2 - i8;
            i3 = 1;
        } else {
            i3 = -1;
            i4 = i8 - i2;
            i8--;
        }
        int i9 = 0;
        boolean z = false;
        while (i9 < i4) {
            int i10 = this.nvars;
            int i11 = ((((i10 + i10) - i8) - 1) * i8) / 2;
            int i12 = ((i10 + i11) - i8) - 1;
            int i13 = i8 + 1;
            double[] dArr = this.f16204d;
            double d4 = dArr[i8];
            double d5 = dArr[i13];
            int i14 = i3;
            double d6 = this.epsilon;
            if (d4 > d6 || d5 > d6) {
                double d7 = this.r[i11];
                if (FastMath.abs(d7) * FastMath.sqrt(d4) < this.tol[i13]) {
                    d7 = 0.0d;
                }
                if (d4 >= this.epsilon) {
                    double dAbs = FastMath.abs(d7);
                    boolean z2 = z;
                    i5 = i12;
                    double d8 = this.epsilon;
                    if (dAbs >= d8) {
                        if (d5 < d8) {
                            this.f16204d[i8] = d4 * d7 * d7;
                            this.r[i11] = 1.0d / d7;
                            for (int i15 = i11 + 1; i15 < ((this.nvars + i11) - i8) - 1; i15++) {
                                double[] dArr2 = this.r;
                                dArr2[i15] = dArr2[i15] / d7;
                            }
                            double[] dArr3 = this.rhs;
                            dArr3[i8] = dArr3[i8] / d7;
                            i6 = i5;
                        } else {
                            z = z2;
                            i6 = i5;
                        }
                        if (!z) {
                            double d9 = d4 * d7;
                            double d10 = d5 + (d9 * d7);
                            d2 = d5 / d10;
                            d3 = d9 / d10;
                            double[] dArr4 = this.f16204d;
                            dArr4[i8] = d10;
                            dArr4[i13] = d4 * d2;
                            this.r[i11] = d3;
                            for (i7 = i8 + 2; i7 < this.nvars; i7++) {
                                i11++;
                                double[] dArr5 = this.r;
                                double d11 = dArr5[i11];
                                dArr5[i11] = (dArr5[i6] * d2) + (d3 * d11);
                                dArr5[i6] = d11 - (dArr5[i6] * d7);
                                i6++;
                            }
                            double[] dArr6 = this.rhs;
                            double d12 = dArr6[i8];
                            dArr6[i8] = (d2 * dArr6[i13]) + (d3 * d12);
                            dArr6[i13] = d12 - (d7 * dArr6[i13]);
                        }
                    }
                    z = true;
                    if (!z) {
                        double d13 = d4 * d7;
                        double d14 = d5 + (d13 * d7);
                        d2 = d5 / d14;
                        d3 = d13 / d14;
                        double[] dArr7 = this.f16204d;
                        dArr7[i8] = d14;
                        dArr7[i13] = d4 * d2;
                        this.r[i11] = d3;
                        while (i7 < this.nvars) {
                            i11++;
                            double[] dArr8 = this.r;
                            double d15 = dArr8[i11];
                            dArr8[i11] = (dArr8[i6] * d2) + (d3 * d15);
                            dArr8[i6] = d15 - (dArr8[i6] * d7);
                            i6++;
                        }
                        double[] dArr9 = this.rhs;
                        double d16 = dArr9[i8];
                        dArr9[i8] = (d2 * dArr9[i13]) + (d3 * d16);
                        dArr9[i13] = d16 - (d7 * dArr9[i13]);
                    }
                } else {
                    i5 = i12;
                }
                double[] dArr10 = this.f16204d;
                dArr10[i8] = d5;
                dArr10[i13] = d4;
                this.r[i11] = 0.0d;
                i6 = i5;
                for (int i16 = i8 + 2; i16 < this.nvars; i16++) {
                    i11++;
                    double[] dArr11 = this.r;
                    double d17 = dArr11[i11];
                    dArr11[i11] = dArr11[i6];
                    dArr11[i6] = d17;
                    i6++;
                }
                double[] dArr12 = this.rhs;
                d7 = dArr12[i8];
                dArr12[i8] = dArr12[i13];
                dArr12[i13] = d7;
                z = true;
                if (!z) {
                    double d18 = d4 * d7;
                    double d19 = d5 + (d18 * d7);
                    d2 = d5 / d19;
                    d3 = d18 / d19;
                    double[] dArr13 = this.f16204d;
                    dArr13[i8] = d19;
                    dArr13[i13] = d4 * d2;
                    this.r[i11] = d3;
                    while (i7 < this.nvars) {
                        i11++;
                        double[] dArr14 = this.r;
                        double d110 = dArr14[i11];
                        dArr14[i11] = (dArr14[i6] * d2) + (d3 * d110);
                        dArr14[i6] = d110 - (dArr14[i6] * d7);
                        i6++;
                    }
                    double[] dArr15 = this.rhs;
                    double d111 = dArr15[i8];
                    dArr15[i8] = (d2 * dArr15[i13]) + (d3 * d111);
                    dArr15[i13] = d111 - (d7 * dArr15[i13]);
                }
            }
            if (i8 > 0) {
                int i17 = i8;
                for (int i18 = 0; i18 < i8; i18++) {
                    double[] dArr16 = this.r;
                    double d20 = dArr16[i17];
                    int i19 = i17 - 1;
                    dArr16[i17] = dArr16[i19];
                    dArr16[i19] = d20;
                    i17 += (this.nvars - i18) - 2;
                }
            }
            int[] iArr = this.vorder;
            int i20 = iArr[i8];
            iArr[i8] = iArr[i13];
            iArr[i13] = i20;
            double[] dArr17 = this.tol;
            double d21 = dArr17[i8];
            dArr17[i8] = dArr17[i13];
            dArr17[i13] = d21;
            double[] dArr18 = this.rss;
            double d22 = dArr18[i13];
            double d23 = this.f16204d[i13];
            double[] dArr19 = this.rhs;
            dArr18[i8] = d22 + (d23 * dArr19[i13] * dArr19[i13]);
            i8 += i14;
            i9++;
            i3 = i14;
        }
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void addObservation(double[] dArr, double d2) throws ModelSpecificationException {
        boolean z = this.hasIntercept;
        if ((!z && dArr.length != this.nvars) || (z && dArr.length + 1 != this.nvars)) {
            throw new ModelSpecificationException(LocalizedFormats.INVALID_REGRESSION_OBSERVATION, Integer.valueOf(dArr.length), Integer.valueOf(this.nvars));
        }
        if (z) {
            double[] dArr2 = new double[dArr.length + 1];
            System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
            dArr2[0] = 1.0d;
            include(dArr2, 1.0d, d2);
        } else {
            include(MathArrays.copyOf(dArr, dArr.length), 1.0d, d2);
        }
        this.nobs++;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void addObservations(double[][] dArr, double[] dArr2) throws ModelSpecificationException {
        if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
            LocalizedFormats localizedFormats = LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(dArr == null ? 0 : dArr.length);
            objArr[1] = Integer.valueOf(dArr2 != null ? dArr2.length : 0);
            throw new ModelSpecificationException(localizedFormats, objArr);
        }
        if (dArr.length == 0) {
            throw new ModelSpecificationException(LocalizedFormats.NO_DATA, new Object[0]);
        }
        if (dArr[0].length + 1 > dArr.length) {
            throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
        }
        for (int i = 0; i < dArr.length; i++) {
            addObservation(dArr[i], dArr2[i]);
        }
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void clear() {
        Arrays.fill(this.f16204d, 0.0d);
        Arrays.fill(this.rhs, 0.0d);
        Arrays.fill(this.r, 0.0d);
        Arrays.fill(this.tol, 0.0d);
        Arrays.fill(this.rss, 0.0d);
        Arrays.fill(this.work_tolset, 0.0d);
        Arrays.fill(this.work_sing, 0.0d);
        Arrays.fill(this.x_sing, 0.0d);
        Arrays.fill(this.lindep, false);
        for (int i = 0; i < this.nvars; i++) {
            this.vorder[i] = i;
        }
        this.nobs = 0L;
        this.sserr = 0.0d;
        this.sumy = 0.0d;
        this.sumsqy = 0.0d;
        this.rss_set = false;
        this.tol_set = false;
    }

    public double getDiagonalOfHatMatrix(double[] dArr) {
        double[] dArr2 = dArr;
        int i = this.nvars;
        double[] dArr3 = new double[i];
        if (dArr2.length > i) {
            return Double.NaN;
        }
        if (this.hasIntercept) {
            double[] dArr4 = new double[dArr2.length + 1];
            dArr4[0] = 1.0d;
            System.arraycopy(dArr2, 0, dArr4, 1, dArr2.length);
            dArr2 = dArr4;
        }
        double dSmartAdd = 0.0d;
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            if (FastMath.sqrt(this.f16204d[i2]) < this.tol[i2]) {
                dArr3[i2] = 0.0d;
            } else {
                int i3 = i2 - 1;
                double dSmartAdd2 = dArr2[i2];
                for (int i4 = 0; i4 < i2; i4++) {
                    dSmartAdd2 = smartAdd(dSmartAdd2, (-dArr3[i4]) * this.r[i3]);
                    i3 += (this.nvars - i4) - 2;
                }
                dArr3[i2] = dSmartAdd2;
                dSmartAdd = smartAdd(dSmartAdd, (dSmartAdd2 * dSmartAdd2) / this.f16204d[i2]);
            }
        }
        return dSmartAdd;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public long getN() {
        return this.nobs;
    }

    public int[] getOrderOfRegressors() {
        return MathArrays.copyOf(this.vorder);
    }

    public double[] getPartialCorrelations(int i) {
        int i2;
        int i3 = this.nvars;
        double[] dArr = new double[(((i3 - i) + 1) * (i3 - i)) / 2];
        int i4 = -i;
        int i5 = i + 1;
        int i6 = -i5;
        double[] dArr2 = new double[i3 - i];
        double[] dArr3 = new double[(i3 - i) - 1];
        int i7 = ((i3 - i) * ((i3 - i) - 1)) / 2;
        if (i < -1 || i >= i3) {
            return null;
        }
        int i8 = (i3 - 1) - i;
        int length = this.r.length - ((i8 * (i8 + 1)) / 2);
        double[] dArr4 = this.f16204d;
        double d2 = 0.0d;
        if (dArr4[i] > 0.0d) {
            dArr2[i + i4] = 1.0d / FastMath.sqrt(dArr4[i]);
        }
        while (i5 < this.nvars) {
            int i9 = ((length + i5) - 1) - i;
            double d3 = this.f16204d[i5];
            for (int i10 = i; i10 < i5; i10++) {
                double d4 = this.f16204d[i10];
                double[] dArr5 = this.r;
                d3 += d4 * dArr5[i9] * dArr5[i9];
                i9 += (this.nvars - i10) - 2;
            }
            if (d3 > 0.0d) {
                dArr2[i5 + i4] = 1.0d / FastMath.sqrt(d3);
            } else {
                dArr2[i5 + i4] = 0.0d;
            }
            i5++;
        }
        double dSqrt = this.sserr;
        for (int i11 = i; i11 < this.nvars; i11++) {
            double d5 = this.f16204d[i11];
            double[] dArr6 = this.rhs;
            dSqrt += d5 * dArr6[i11] * dArr6[i11];
        }
        if (dSqrt > 0.0d) {
            dSqrt = 1.0d / FastMath.sqrt(dSqrt);
        }
        int i12 = i;
        while (i12 < this.nvars) {
            Arrays.fill(dArr3, d2);
            int i13 = ((length + i12) - i) - 1;
            int i14 = i;
            double d6 = d2;
            while (i14 < i12) {
                int i15 = i13 + 1;
                int i16 = i12 + 1;
                while (true) {
                    i2 = this.nvars;
                    if (i16 < i2) {
                        int i17 = i16 + i6;
                        double d7 = dArr3[i17];
                        int i18 = length;
                        double d8 = this.f16204d[i14];
                        double[] dArr7 = this.r;
                        dArr3[i17] = d7 + (d8 * dArr7[i13] * dArr7[i15]);
                        i15++;
                        i16++;
                        length = i18;
                    }
                }
                d6 += this.f16204d[i14] * this.r[i13] * this.rhs[i14];
                i13 += (i2 - i14) - 2;
                i14++;
                length = length;
            }
            int i19 = length;
            int i20 = i13 + 1;
            int i21 = i12 + 1;
            for (int i22 = i21; i22 < this.nvars; i22++) {
                int i23 = i22 + i6;
                dArr3[i23] = dArr3[i23] + (this.f16204d[i12] * this.r[i20]);
                i20++;
                dArr[(((((i22 - 1) - i) * (i22 - i)) / 2) + i12) - i] = dArr3[i23] * dArr2[i12 + i4] * dArr2[i22 + i4];
            }
            double d9 = d6 + (this.f16204d[i12] * this.rhs[i12]);
            int i24 = i12 + i4;
            dArr[i24 + i7] = d9 * dArr2[i24] * dSqrt;
            i12 = i21;
            length = i19;
            d2 = 0.0d;
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public boolean hasIntercept() {
        return this.hasIntercept;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public RegressionResults regress() throws ModelSpecificationException {
        return regress(this.nvars);
    }

    public MillerUpdatingRegression(int i, boolean z, double d2) throws ModelSpecificationException {
        this.nobs = 0L;
        this.sserr = 0.0d;
        this.rss_set = false;
        this.tol_set = false;
        this.sumy = 0.0d;
        this.sumsqy = 0.0d;
        if (i < 1) {
            throw new ModelSpecificationException(LocalizedFormats.NO_REGRESSORS, new Object[0]);
        }
        if (z) {
            this.nvars = i + 1;
        } else {
            this.nvars = i;
        }
        this.hasIntercept = z;
        this.nobs = 0L;
        int i2 = this.nvars;
        this.f16204d = new double[i2];
        this.rhs = new double[i2];
        this.r = new double[((i2 - 1) * i2) / 2];
        this.tol = new double[i2];
        this.rss = new double[i2];
        this.vorder = new int[i2];
        this.x_sing = new double[i2];
        this.work_sing = new double[i2];
        this.work_tolset = new double[i2];
        this.lindep = new boolean[i2];
        for (int i3 = 0; i3 < this.nvars; i3++) {
            this.vorder[i3] = i3;
        }
        if (d2 > 0.0d) {
            this.epsilon = d2;
        } else {
            this.epsilon = -d2;
        }
    }

    public RegressionResults regress(int i) throws ModelSpecificationException {
        boolean z;
        if (this.nobs <= i) {
            throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Long.valueOf(this.nobs), Integer.valueOf(i));
        }
        if (i > this.nvars) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(i), Integer.valueOf(this.nvars));
        }
        tolset();
        singcheck();
        double[] dArrRegcf = regcf(i);
        ss();
        double[] dArrCov = cov(i);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            boolean[] zArr = this.lindep;
            if (i2 >= zArr.length) {
                break;
            }
            if (!zArr[i2]) {
                i3++;
            }
            i2++;
        }
        int i4 = 0;
        while (true) {
            if (i4 >= i) {
                z = false;
                break;
            }
            if (this.vorder[i4] != i4) {
                z = true;
                break;
            }
            i4++;
        }
        if (!z) {
            return new RegressionResults(dArrRegcf, new double[][]{dArrCov}, true, this.nobs, i3, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
        }
        double[] dArr = new double[dArrRegcf.length];
        double[] dArr2 = new double[dArrCov.length];
        int[] iArr = new int[dArrRegcf.length];
        for (int i5 = 0; i5 < this.nvars; i5++) {
            for (int i6 = 0; i6 < i; i6++) {
                if (this.vorder[i6] == i5) {
                    dArr[i5] = dArrRegcf[i6];
                    iArr[i5] = i6;
                }
            }
        }
        int i7 = 0;
        for (int i8 = 0; i8 < dArrRegcf.length; i8++) {
            int i9 = iArr[i8];
            int i10 = 0;
            while (i10 <= i8) {
                int i11 = iArr[i10];
                dArr2[i7] = dArrCov[i9 > i11 ? (((i9 + 1) * i9) / 2) + i11 : ((i11 * (i11 + 1)) / 2) + i9];
                i10++;
                i7++;
            }
        }
        return new RegressionResults(dArr, new double[][]{dArr2}, true, this.nobs, i3, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
    }

    public MillerUpdatingRegression(int i, boolean z) throws ModelSpecificationException {
        this(i, z, Precision.EPSILON);
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public RegressionResults regress(int[] iArr) throws ModelSpecificationException {
        boolean z;
        int i;
        int[] iArr2 = iArr;
        int length = iArr2.length;
        int i2 = this.nvars;
        if (length > i2) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(iArr2.length), Integer.valueOf(this.nvars));
        }
        if (this.nobs > i2) {
            Arrays.sort(iArr);
            int i3 = 0;
            for (int i4 = 0; i4 < iArr2.length; i4++) {
                if (i4 < this.nvars) {
                    if (i4 > 0 && iArr2[i4] == iArr2[i4 - 1]) {
                        iArr2[i4] = -1;
                        i3++;
                    }
                } else {
                    throw new ModelSpecificationException(LocalizedFormats.INDEX_LARGER_THAN_MAX, Integer.valueOf(i4), Integer.valueOf(this.nvars));
                }
            }
            if (i3 > 0) {
                int[] iArr3 = new int[iArr2.length - i3];
                int i5 = 0;
                for (int i6 = 0; i6 < iArr2.length; i6++) {
                    if (iArr2[i6] > -1) {
                        iArr3[i5] = iArr2[i6];
                        i5++;
                    }
                }
                iArr2 = iArr3;
            }
            reorderRegressors(iArr2, 0);
            tolset();
            singcheck();
            double[] dArrRegcf = regcf(iArr2.length);
            ss();
            double[] dArrCov = cov(iArr2.length);
            int i7 = 0;
            int i8 = 0;
            while (true) {
                boolean[] zArr = this.lindep;
                if (i7 >= zArr.length) {
                    break;
                }
                if (!zArr[i7]) {
                    i8++;
                }
                i7++;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= this.nvars) {
                    z = false;
                    break;
                }
                if (this.vorder[i9] != iArr2[i9]) {
                    z = true;
                    break;
                }
                i9++;
            }
            if (!z) {
                return new RegressionResults(dArrRegcf, new double[][]{dArrCov}, true, this.nobs, i8, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
            }
            double[] dArr = new double[dArrRegcf.length];
            int[] iArr4 = new int[dArrRegcf.length];
            for (int i10 = 0; i10 < iArr2.length; i10++) {
                int i11 = 0;
                while (true) {
                    int[] iArr5 = this.vorder;
                    if (i11 < iArr5.length) {
                        if (iArr5[i11] == iArr2[i10]) {
                            dArr[i10] = dArrRegcf[i11];
                            iArr4[i10] = i11;
                        }
                        i11++;
                    }
                }
            }
            double[] dArr2 = new double[dArrCov.length];
            int i12 = 0;
            for (int i13 = 0; i13 < dArrRegcf.length; i13++) {
                int i14 = iArr4[i13];
                int i15 = 0;
                while (i15 <= i13) {
                    int i16 = iArr4[i15];
                    if (i14 > i16) {
                        i = (((i14 + 1) * i14) / 2) + i16;
                    } else {
                        i = ((i16 * (i16 + 1)) / 2) + i14;
                    }
                    dArr2[i12] = dArrCov[i];
                    i15++;
                    i12++;
                }
            }
            return new RegressionResults(dArr, new double[][]{dArr2}, true, this.nobs, i8, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
        }
        throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Long.valueOf(this.nobs), Integer.valueOf(this.nvars));
    }
}
