package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class GraggBulirschStoerIntegrator extends AdaptiveStepsizeIntegrator {
    private static final String METHOD_NAME = "Gragg-Bulirsch-Stoer";
    private double[][] coeff;
    private int[] costPerStep;
    private double[] costPerTimeUnit;
    private int maxChecks;
    private int maxIter;
    private int maxOrder;
    private int mudif;
    private double[] optimalStep;
    private double orderControl1;
    private double orderControl2;
    private boolean performTest;
    private int[] sequence;
    private double stabilityReduction;
    private double stepControl1;
    private double stepControl2;
    private double stepControl3;
    private double stepControl4;
    private boolean useInterpolationError;

    public GraggBulirschStoerIntegrator(double d2, double d3, double d4, double d5) {
        super(METHOD_NAME, d2, d3, d4, d5);
        setStabilityCheck(true, -1, -1, -1.0d);
        setControlFactors(-1.0d, -1.0d, -1.0d, -1.0d);
        setOrderControl(-1, -1.0d, -1.0d);
        setInterpolationControl(true, -1);
    }

    private void extrapolate(int i, int i2, double[][] dArr, double[] dArr2) {
        int i3 = 1;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            for (int i4 = 0; i4 < dArr2.length; i4++) {
                int i5 = i2 - i3;
                int i6 = i5 - 1;
                dArr[i6][i4] = dArr[i5][i4] + (this.coeff[i2 + i][i3 - 1] * (dArr[i5][i4] - dArr[i6][i4]));
            }
            i3++;
        }
        for (int i7 = 0; i7 < dArr2.length; i7++) {
            dArr2[i7] = dArr[0][i7] + (this.coeff[i2 + i][i2 - 1] * (dArr[0][i7] - dArr2[i7]));
        }
    }

    private void initializeArrays() {
        int i = this.maxOrder / 2;
        int[] iArr = this.sequence;
        if (iArr == null || iArr.length != i) {
            this.sequence = new int[i];
            this.costPerStep = new int[i];
            this.coeff = new double[i][];
            this.costPerTimeUnit = new double[i];
            this.optimalStep = new double[i];
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.sequence[i2] = (i2 * 4) + 2;
        }
        this.costPerStep[0] = this.sequence[0] + 1;
        for (int i3 = 1; i3 < i; i3++) {
            int[] iArr2 = this.costPerStep;
            iArr2[i3] = iArr2[i3 - 1] + this.sequence[i3];
        }
        int i4 = 0;
        while (i4 < i) {
            this.coeff[i4] = i4 > 0 ? new double[i4] : null;
            for (int i5 = 0; i5 < i4; i5++) {
                int[] iArr3 = this.sequence;
                double d2 = ((double) iArr3[i4]) / ((double) iArr3[(i4 - i5) - 1]);
                this.coeff[i4][i5] = 1.0d / ((d2 * d2) - 1.0d);
            }
            i4++;
        }
    }

    private void rescale(double[] dArr, double[] dArr2, double[] dArr3) {
        int i = 0;
        if (this.vecAbsoluteTolerance == null) {
            while (i < dArr3.length) {
                dArr3[i] = this.scalAbsoluteTolerance + (this.scalRelativeTolerance * FastMath.max(FastMath.abs(dArr[i]), FastMath.abs(dArr2[i])));
                i++;
            }
            return;
        }
        while (i < dArr3.length) {
            dArr3[i] = this.vecAbsoluteTolerance[i] + (this.vecRelativeTolerance[i] * FastMath.max(FastMath.abs(dArr[i]), FastMath.abs(dArr2[i])));
            i++;
        }
    }

    private boolean tryStep(double d2, double[] dArr, double d3, int i, double[] dArr2, double[][] dArr3, double[] dArr4, double[] dArr5, double[] dArr6) throws MaxCountExceededException, DimensionMismatchException {
        GraggBulirschStoerIntegrator graggBulirschStoerIntegrator = this;
        int i2 = i;
        int i3 = graggBulirschStoerIntegrator.sequence[i2];
        double d4 = d3 / ((double) i3);
        double d5 = 2.0d * d4;
        double d6 = d2 + d4;
        int i4 = 0;
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr6[i5] = dArr[i5];
            dArr5[i5] = dArr[i5] + (dArr3[0][i5] * d4);
        }
        graggBulirschStoerIntegrator.computeDerivatives(d6, dArr5, dArr3[1]);
        int i6 = 1;
        while (i6 < i3) {
            if (i6 * 2 == i3) {
                System.arraycopy(dArr5, i4, dArr4, i4, dArr.length);
            }
            d6 += d4;
            for (int i7 = 0; i7 < dArr.length; i7++) {
                double d7 = dArr5[i7];
                dArr5[i7] = dArr6[i7] + (dArr3[i6][i7] * d5);
                dArr6[i7] = d7;
            }
            int i8 = i6 + 1;
            graggBulirschStoerIntegrator.computeDerivatives(d6, dArr5, dArr3[i8]);
            if (graggBulirschStoerIntegrator.performTest && i6 <= graggBulirschStoerIntegrator.maxChecks && i2 < graggBulirschStoerIntegrator.maxIter) {
                double d8 = 0.0d;
                for (int i9 = 0; i9 < dArr2.length; i9++) {
                    double d9 = dArr3[0][i9] / dArr2[i9];
                    d8 += d9 * d9;
                }
                double d10 = 0.0d;
                for (int i10 = 0; i10 < dArr2.length; i10++) {
                    double d11 = (dArr3[i8][i10] - dArr3[0][i10]) / dArr2[i10];
                    d10 += d11 * d11;
                }
                if (d10 > FastMath.max(1.0E-15d, d8) * 4.0d) {
                    return false;
                }
            }
            graggBulirschStoerIntegrator = this;
            i2 = i;
            i6 = i8;
            d5 = d5;
            i4 = 0;
        }
        for (int i11 = 0; i11 < dArr.length; i11++) {
            dArr5[i11] = (dArr6[i11] + dArr5[i11] + (dArr3[i3][i11] * d4)) * 0.5d;
        }
        return true;
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator, org.apache.commons.math3.ode.ODEIntegrator
    public void addEventHandler(EventHandler eventHandler, double d2, double d3, int i, UnivariateSolver univariateSolver) {
        super.addEventHandler(eventHandler, d2, d3, i, univariateSolver);
        initializeArrays();
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator, org.apache.commons.math3.ode.ODEIntegrator
    public void addStepHandler(StepHandler stepHandler) {
        super.addStepHandler(stepHandler);
        initializeArrays();
    }

    /* JADX WARN: Code duplicated, block: B:188:0x051c  */
    /* JADX WARN: Code duplicated, block: B:190:0x0546  */
    /* JADX WARN: Code duplicated, block: B:193:0x0551  */
    /* JADX WARN: Code duplicated, block: B:195:0x0555  */
    /* JADX WARN: Code duplicated, block: B:197:0x0559  */
    /* JADX WARN: Code duplicated, block: B:199:0x056b  */
    /* JADX WARN: Code duplicated, block: B:200:0x0571  */
    /* JADX WARN: Code duplicated, block: B:202:0x0581  */
    /* JADX WARN: Code duplicated, block: B:203:0x058e  */
    /* JADX WARN: Code duplicated, block: B:204:0x0590  */
    /* JADX WARN: Code duplicated, block: B:206:0x059b  */
    /* JADX WARN: Code duplicated, block: B:208:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:209:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:212:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:214:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:215:0x05e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:216:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:217:0x05ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:218:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:220:0x0601  */
    /* JADX WARN: Code duplicated, block: B:221:0x061a  */
    /* JADX WARN: Code duplicated, block: B:224:0x063b  */
    /* JADX WARN: Code duplicated, block: B:227:0x0650  */
    /* JADX WARN: Code duplicated, block: B:229:0x0653  */
    /* JADX WARN: Code duplicated, block: B:230:0x0658  */
    /* JADX WARN: Code duplicated, block: B:235:0x066c A[LOOP:3: B:25:0x013c->B:235:0x066c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:239:0x065e A[SYNTHETIC] */
    @Override // org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        int[] iArr;
        boolean z;
        double[] dArr;
        double d3;
        int i;
        double[] dArr2;
        boolean z2;
        double[][] dArr3;
        double[][] dArr4;
        double[] dArr5;
        double dAbs;
        double[] dArr6;
        boolean z3;
        double[] dArr7;
        boolean z4;
        double d4;
        double dMin;
        double[] dArr8;
        int i2;
        int iMin;
        int i3;
        int i4;
        double[] dArr9;
        double[] dArr10;
        int i5;
        double[] dArr11;
        int i6;
        double dFilterStep;
        double[] dArr12;
        double dMin2;
        int i7;
        int i8;
        int i9;
        double[] dArr13;
        sanityChecks(expandableStatefulODE, d2);
        setEquations(expandableStatefulODE);
        int i10 = 1;
        boolean z5 = d2 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr14 = (double[]) completeState.clone();
        double[] dArr15 = new double[dArr14.length];
        double[] dArr16 = new double[dArr14.length];
        double[] dArr17 = new double[dArr14.length];
        double[] dArr18 = new double[dArr14.length];
        int[] iArr2 = this.sequence;
        double[][] dArr19 = new double[iArr2.length - 1][];
        double[][] dArr20 = new double[iArr2.length - 1][];
        int i11 = 0;
        while (true) {
            iArr = this.sequence;
            if (i11 >= iArr.length - 1) {
                break;
            }
            dArr19[i11] = new double[dArr14.length];
            dArr20[i11] = new double[dArr14.length];
            i11++;
        }
        double[][][] dArr21 = new double[iArr.length][][];
        int i12 = 0;
        while (true) {
            int[] iArr3 = this.sequence;
            if (i12 >= iArr3.length) {
                break;
            }
            dArr21[i12] = new double[iArr3[i12] + i10][];
            dArr21[i12][0] = dArr15;
            int i13 = 0;
            while (i13 < this.sequence[i12]) {
                i13++;
                dArr21[i12][i13] = new double[completeState.length];
            }
            i12++;
            i10 = 1;
        }
        if (dArr14 != completeState) {
            System.arraycopy(completeState, 0, dArr14, 0, completeState.length);
        }
        double[] dArr22 = new double[completeState.length];
        double[][] dArr23 = (double[][]) Array.newInstance((Class<?>) double.class, (this.sequence.length * 2) + 1, completeState.length);
        double[] dArr24 = new double[this.mainSetDimension];
        rescale(dArr14, dArr14, dArr24);
        double[] dArr25 = this.vecRelativeTolerance;
        int iMax = FastMath.max(1, FastMath.min(this.sequence.length - 2, (int) FastMath.floor(0.5d - (FastMath.log10(FastMath.max(1.0E-10d, dArr25 == null ? this.scalRelativeTolerance : dArr25[0])) * 0.6d))));
        double[][] dArr26 = dArr20;
        double[][] dArr27 = dArr19;
        double[] dArr28 = dArr22;
        double[] dArr29 = dArr16;
        double[] dArr30 = dArr15;
        GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator = new GraggBulirschStoerStepInterpolator(dArr14, dArr15, dArr16, dArr22, dArr23, z5, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        graggBulirschStoerStepInterpolator.storeTime(expandableStatefulODE.getTime());
        this.stepStart = expandableStatefulODE.getTime();
        double[] dArr31 = dArr14;
        boolean z6 = z5;
        double[] dArr32 = completeState;
        double[] dArr33 = dArr24;
        GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator;
        initIntegration(expandableStatefulODE.getTime(), dArr32, d2);
        this.costPerTimeUnit[0] = 0.0d;
        this.isLastStep = false;
        double d5 = Double.MAX_VALUE;
        int i14 = iMax;
        double dInitializeStep = 0.0d;
        boolean z7 = true;
        boolean z8 = false;
        boolean z9 = true;
        boolean z10 = false;
        while (true) {
            if (z7) {
                graggBulirschStoerStepInterpolator2.shift();
                if (!z8) {
                    computeDerivatives(this.stepStart, dArr31, dArr30);
                }
                if (z9) {
                    dInitializeStep = initializeStep(z6, (i14 * 2) + 1, dArr33, this.stepStart, dArr31, dArr30, dArr17, dArr18);
                }
                z = false;
            } else {
                dArr33 = dArr33;
                dArr30 = dArr30;
                dArr32 = dArr32;
                z = z7;
            }
            this.stepSize = dInitializeStep;
            if ((z6 && this.stepStart + dInitializeStep > d2) || (!z6 && this.stepStart + dInitializeStep < d2)) {
                this.stepSize = d2 - this.stepStart;
            }
            double d6 = this.stepStart + this.stepSize;
            this.isLastStep = !z6 ? d6 > d2 : d6 < d2;
            double dMax = d5;
            int i15 = i14;
            int i16 = -1;
            boolean z11 = true;
            boolean z12 = false;
            double dAbs2 = dInitializeStep;
            while (z11) {
                int i17 = i16 + 1;
                int i18 = i15;
                z6 = z6;
                double[] dArr34 = dArr31;
                if (tryStep(this.stepStart, dArr31, this.stepSize, i17, dArr33, dArr21[i17], i17 == 0 ? dArr23[0] : dArr27[i17 - 1], i17 == 0 ? dArr29 : dArr26[i17 - 1], dArr17)) {
                    char c = 0;
                    if (i17 > 0) {
                        double[] dArr35 = dArr29;
                        extrapolate(0, i17, dArr26, dArr35);
                        double[] dArr36 = dArr33;
                        rescale(dArr34, dArr35, dArr36);
                        double d7 = 0.0d;
                        int i19 = 0;
                        while (true) {
                            i7 = this.mainSetDimension;
                            if (i19 >= i7) {
                                break;
                            }
                            double dAbs3 = FastMath.abs(dArr35[i19] - dArr26[c][i19]) / dArr36[i19];
                            d7 += dAbs3 * dAbs3;
                            i19++;
                            c = 0;
                        }
                        double dSqrt = FastMath.sqrt(d7 / ((double) i7));
                        if (dSqrt > 1.0E15d || (i17 > 1 && dSqrt > dMax)) {
                            dArr31 = dArr34;
                            dArr33 = dArr36;
                            dAbs2 = FastMath.abs(filterStep(this.stepSize * this.stabilityReduction, z6, false));
                            dArr29 = dArr35;
                            i15 = i18;
                        } else {
                            dMax = FastMath.max(4.0d * dSqrt, 1.0d);
                            double d8 = 1.0d / ((double) ((i17 * 2) + 1));
                            double dPow = this.stepControl2 / FastMath.pow(dSqrt / this.stepControl1, d8);
                            double dPow2 = FastMath.pow(this.stepControl3, d8);
                            this.optimalStep[i17] = FastMath.abs(filterStep(this.stepSize * FastMath.max(dPow2 / this.stepControl4, FastMath.min(1.0d / dPow2, dPow)), z6, true));
                            double[] dArr37 = this.costPerTimeUnit;
                            double d9 = this.costPerStep[i17];
                            double[] dArr38 = this.optimalStep;
                            dArr37[i17] = d9 / dArr38[i17];
                            int i20 = i17 - i18;
                            if (i20 != -1) {
                                if (i20 == 0) {
                                    i8 = i18;
                                    if (dSqrt <= 1.0d) {
                                        dArr31 = dArr34;
                                        dArr33 = dArr36;
                                        i15 = i8;
                                        z11 = false;
                                    } else {
                                        int[] iArr4 = this.sequence;
                                        dArr31 = dArr34;
                                        dArr33 = dArr36;
                                        double d10 = ((double) iArr4[i17 + 1]) / ((double) iArr4[0]);
                                        if (dSqrt > d10 * d10) {
                                            i15 = (i8 <= 1 || dArr37[i8 + (-1)] >= this.orderControl1 * dArr37[i8]) ? i8 : i8 - 1;
                                            dAbs2 = dArr38[i15];
                                            z11 = false;
                                            z12 = true;
                                        }
                                    }
                                } else if (i20 == 1) {
                                    if (dSqrt > 1.0d) {
                                        if (i18 > 1) {
                                            dArr13 = dArr38;
                                            if (dArr37[i18 - 1] < this.orderControl1 * dArr37[i18]) {
                                                i9 = i18 - 1;
                                            }
                                            dAbs2 = dArr13[i9];
                                            z12 = true;
                                        } else {
                                            dArr13 = dArr38;
                                        }
                                        i9 = i18;
                                        dAbs2 = dArr13[i9];
                                        z12 = true;
                                    } else {
                                        i9 = i18;
                                    }
                                    dArr31 = dArr34;
                                    dArr33 = dArr36;
                                    z11 = false;
                                    i15 = i9;
                                } else if ((z9 || this.isLastStep) && dSqrt <= 1.0d) {
                                    dArr31 = dArr34;
                                    dArr33 = dArr36;
                                    i15 = i18;
                                    z11 = false;
                                } else {
                                    dArr31 = dArr34;
                                    dArr33 = dArr36;
                                    i8 = i18;
                                }
                                i15 = i8;
                            } else {
                                dArr31 = dArr34;
                                dArr33 = dArr36;
                                i8 = i18;
                                if (i8 > 1 && !z10) {
                                    if (dSqrt > 1.0d) {
                                        int[] iArr5 = this.sequence;
                                        double d11 = (((double) iArr5[i8]) * ((double) iArr5[i8 + 1])) / ((double) (iArr5[0] * iArr5[0]));
                                        if (dSqrt > d11 * d11) {
                                            i15 = (i17 <= 1 || dArr37[i17 + (-1)] >= this.orderControl1 * dArr37[i17]) ? i17 : i17 - 1;
                                            dAbs2 = dArr38[i15];
                                            z11 = false;
                                            z12 = true;
                                        }
                                    }
                                    i15 = i8;
                                    z11 = false;
                                }
                                i15 = i8;
                            }
                            dArr29 = dArr35;
                        }
                    } else {
                        i15 = i18;
                        dArr31 = dArr34;
                    }
                } else {
                    dAbs2 = FastMath.abs(filterStep(this.stepSize * this.stabilityReduction, z6, false));
                    i15 = i18;
                    dArr31 = dArr34;
                }
                z11 = false;
                z12 = true;
            }
            double[][] dArr39 = dArr27;
            double[] dArr40 = dArr32;
            double[] dArr41 = dArr29;
            boolean z13 = z6;
            int i21 = i15;
            if (z12) {
                dArr = dArr28;
            } else {
                dArr = dArr28;
                computeDerivatives(this.stepStart + this.stepSize, dArr41, dArr);
            }
            double maxStep = getMaxStep();
            if (z12) {
                d3 = maxStep;
                i = i21;
                dArr2 = dArr31;
                z2 = z13;
                dArr3 = dArr26;
                dArr4 = dArr39;
                dArr5 = dArr40;
            } else {
                for (int i22 = 1; i22 <= i16; i22++) {
                    extrapolate(0, i22, dArr39, dArr23[0]);
                }
                dArr4 = dArr39;
                int i23 = ((i16 * 2) - this.mudif) + 3;
                int i24 = 0;
                while (i24 < i23) {
                    int i25 = i24 / 2;
                    double d12 = maxStep;
                    double dPow3 = FastMath.pow(((double) this.sequence[i25]) * 0.5d, i24);
                    int length = dArr21[i25].length / 2;
                    boolean z14 = z13;
                    double[][] dArr42 = dArr26;
                    double[] dArr43 = dArr40;
                    for (int i26 = 0; i26 < dArr43.length; i26++) {
                        dArr23[i24 + 1][i26] = dArr21[i25][length + i24][i26] * dPow3;
                    }
                    int i27 = 1;
                    while (i27 <= i16 - i25) {
                        int i28 = i27 + i25;
                        double dPow4 = FastMath.pow(((double) this.sequence[i28]) * 0.5d, i24);
                        int length2 = dArr21[i28].length / 2;
                        int i29 = i21;
                        double[] dArr44 = dArr31;
                        for (int i30 = 0; i30 < dArr43.length; i30++) {
                            dArr4[i27 - 1][i30] = dArr21[i28][length2 + i24][i30] * dPow4;
                        }
                        extrapolate(i25, i27, dArr4, dArr23[i24 + 1]);
                        i27++;
                        i21 = i29;
                        dArr31 = dArr44;
                    }
                    int i31 = i21;
                    double[] dArr45 = dArr31;
                    for (int i32 = 0; i32 < dArr43.length; i32++) {
                        double[] dArr46 = dArr23[i24 + 1];
                        dArr46[i32] = dArr46[i32] * this.stepSize;
                    }
                    i24++;
                    for (int i33 = i24 / 2; i33 <= i16; i33++) {
                        for (int length3 = dArr21[i33].length - 1; length3 >= i24 * 2; length3--) {
                            for (int i34 = 0; i34 < dArr43.length; i34++) {
                                double[] dArr47 = dArr21[i33][length3];
                                dArr47[i34] = dArr47[i34] - dArr21[i33][length3 - 2][i34];
                            }
                        }
                    }
                    dArr40 = dArr43;
                    maxStep = d12;
                    dArr26 = dArr42;
                    z13 = z14;
                    i21 = i31;
                    dArr31 = dArr45;
                }
                d3 = maxStep;
                i = i21;
                dArr2 = dArr31;
                z2 = z13;
                dArr3 = dArr26;
                dArr5 = dArr40;
                if (i23 >= 0) {
                    graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator2;
                    graggBulirschStoerStepInterpolator2.computeCoefficients(i23, this.stepSize);
                    if (this.useInterpolationError) {
                        dArr33 = dArr33;
                        double dEstimateError = graggBulirschStoerStepInterpolator2.estimateError(dArr33);
                        i16 = i16;
                        dAbs = FastMath.abs(this.stepSize / FastMath.max(FastMath.pow(dEstimateError, 1.0d / ((double) (i23 + 4))), 0.01d));
                        if (dEstimateError > 10.0d) {
                            dAbs2 = dAbs;
                            z12 = true;
                        }
                    } else {
                        dArr33 = dArr33;
                        dAbs = d3;
                    }
                }
                if (z12) {
                    dArr29 = dArr41;
                    dArr6 = dArr;
                    z3 = z2;
                    dArr7 = dArr2;
                    z4 = false;
                    i14 = i;
                    d4 = dAbs2;
                } else {
                    graggBulirschStoerStepInterpolator2.storeTime(this.stepStart + this.stepSize);
                    double dAcceptStep = acceptStep(graggBulirschStoerStepInterpolator2, dArr41, dArr, d2);
                    this.stepStart = dAcceptStep;
                    graggBulirschStoerStepInterpolator2.storeTime(dAcceptStep);
                    dArr7 = dArr2;
                    System.arraycopy(dArr41, 0, dArr7, 0, dArr5.length);
                    dArr8 = dArr30;
                    System.arraycopy(dArr, 0, dArr8, 0, dArr5.length);
                    i2 = i16;
                    iMin = 1;
                    if (i2 == 1) {
                        dArr30 = dArr8;
                        dArr29 = dArr41;
                        dArr6 = dArr;
                        i3 = i;
                        if (!z10) {
                            iMin = 2;
                        }
                    } else {
                        i3 = i;
                        if (i2 <= i3) {
                            dArr11 = this.costPerTimeUnit;
                            i6 = i2 - 1;
                            dArr30 = dArr8;
                            if (dArr11[i6] < this.orderControl1 * dArr11[i2]) {
                                iMin = i6;
                                dArr29 = dArr41;
                                dArr6 = dArr;
                            } else {
                                dArr29 = dArr41;
                                dArr6 = dArr;
                                if (dArr11[i2] < this.orderControl2 * dArr11[i6]) {
                                    iMin = FastMath.min(i2 + 1, this.sequence.length - 2);
                                } else {
                                    iMin = i2;
                                }
                            }
                        } else {
                            dArr30 = dArr8;
                            dArr29 = dArr41;
                            dArr6 = dArr;
                            i4 = i2 - 1;
                            if (i2 > 2) {
                                dArr10 = this.costPerTimeUnit;
                                i5 = i2 - 2;
                                if (dArr10[i5] < this.orderControl1 * dArr10[i4]) {
                                    iMin = i5;
                                } else {
                                    iMin = i4;
                                }
                            } else {
                                iMin = i4;
                            }
                            dArr9 = this.costPerTimeUnit;
                            if (dArr9[i2] < this.orderControl2 * dArr9[iMin]) {
                                iMin = FastMath.min(i2, this.sequence.length - 2);
                            }
                            if (z10) {
                                iMin = FastMath.min(iMin, i2);
                                dMin2 = FastMath.min(FastMath.abs(this.stepSize), this.optimalStep[iMin]);
                                z3 = z2;
                                z4 = false;
                            } else {
                                if (iMin <= i2) {
                                    dFilterStep = this.optimalStep[iMin];
                                    z3 = z2;
                                    z4 = false;
                                } else if (i2 < i3) {
                                    dArr12 = this.costPerTimeUnit;
                                    if (dArr12[i2] < this.orderControl2 * dArr12[i2 - 1]) {
                                        double d13 = this.optimalStep[i2];
                                        int[] iArr6 = this.costPerStep;
                                        double d14 = (d13 * ((double) iArr6[iMin + 1])) / ((double) iArr6[i2]);
                                        z3 = z2;
                                        z4 = false;
                                        dFilterStep = filterStep(d14, z3, false);
                                    } else {
                                        z3 = z2;
                                        double d15 = this.optimalStep[i2];
                                        int[] iArr7 = this.costPerStep;
                                        double d16 = (d15 * ((double) iArr7[iMin])) / ((double) iArr7[i2]);
                                        z4 = false;
                                        dFilterStep = filterStep(d16, z3, false);
                                    }
                                } else {
                                    z3 = z2;
                                    double d17 = this.optimalStep[i2];
                                    int[] iArr8 = this.costPerStep;
                                    double d18 = (d17 * ((double) iArr8[iMin])) / ((double) iArr8[i2]);
                                    z4 = false;
                                    dFilterStep = filterStep(d18, z3, false);
                                }
                                dMin2 = dFilterStep;
                            }
                            i14 = iMin;
                            d4 = dMin2;
                            z8 = true;
                            z = true;
                        }
                    }
                    if (z10) {
                        iMin = FastMath.min(iMin, i2);
                        dMin2 = FastMath.min(FastMath.abs(this.stepSize), this.optimalStep[iMin]);
                        z3 = z2;
                        z4 = false;
                    } else {
                        if (iMin <= i2) {
                            dFilterStep = this.optimalStep[iMin];
                            z3 = z2;
                            z4 = false;
                        } else if (i2 < i3) {
                            dArr12 = this.costPerTimeUnit;
                            if (dArr12[i2] < this.orderControl2 * dArr12[i2 - 1]) {
                                double d19 = this.optimalStep[i2];
                                int[] iArr9 = this.costPerStep;
                                double d110 = (d19 * ((double) iArr9[iMin + 1])) / ((double) iArr9[i2]);
                                z3 = z2;
                                z4 = false;
                                dFilterStep = filterStep(d110, z3, false);
                            } else {
                                z3 = z2;
                                double d111 = this.optimalStep[i2];
                                int[] iArr10 = this.costPerStep;
                                double d112 = (d111 * ((double) iArr10[iMin])) / ((double) iArr10[i2]);
                                z4 = false;
                                dFilterStep = filterStep(d112, z3, false);
                            }
                        } else {
                            z3 = z2;
                            double d113 = this.optimalStep[i2];
                            int[] iArr11 = this.costPerStep;
                            double d114 = (d113 * ((double) iArr11[iMin])) / ((double) iArr11[i2]);
                            z4 = false;
                            dFilterStep = filterStep(d114, z3, false);
                        }
                        dMin2 = dFilterStep;
                    }
                    i14 = iMin;
                    d4 = dMin2;
                    z8 = true;
                    z = true;
                }
                dMin = FastMath.min(d4, dAbs);
                if (!z3) {
                    dMin = -dMin;
                }
                if (z12) {
                    this.isLastStep = z4;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.isLastStep) {
                    expandableStatefulODE.setTime(this.stepStart);
                    expandableStatefulODE.setCompleteState(dArr7);
                    resetInternalState();
                    return;
                }
                dArr27 = dArr4;
                dArr33 = dArr33;
                dArr32 = dArr5;
                dArr26 = dArr3;
                dArr30 = dArr30;
                z7 = z;
                d5 = dMax;
                z9 = false;
                dArr31 = dArr7;
                dInitializeStep = dMin;
                dArr28 = dArr6;
                graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator2;
                z6 = z3;
            }
            dAbs = d3;
            if (z12) {
                graggBulirschStoerStepInterpolator2.storeTime(this.stepStart + this.stepSize);
                double dAcceptStep2 = acceptStep(graggBulirschStoerStepInterpolator2, dArr41, dArr, d2);
                this.stepStart = dAcceptStep2;
                graggBulirschStoerStepInterpolator2.storeTime(dAcceptStep2);
                dArr7 = dArr2;
                System.arraycopy(dArr41, 0, dArr7, 0, dArr5.length);
                dArr8 = dArr30;
                System.arraycopy(dArr, 0, dArr8, 0, dArr5.length);
                i2 = i16;
                iMin = 1;
                if (i2 == 1) {
                    dArr30 = dArr8;
                    dArr29 = dArr41;
                    dArr6 = dArr;
                    i3 = i;
                    if (!z10) {
                        iMin = 2;
                    }
                } else {
                    i3 = i;
                    if (i2 <= i3) {
                        dArr11 = this.costPerTimeUnit;
                        i6 = i2 - 1;
                        dArr30 = dArr8;
                        if (dArr11[i6] < this.orderControl1 * dArr11[i2]) {
                            iMin = i6;
                            dArr29 = dArr41;
                            dArr6 = dArr;
                        } else {
                            dArr29 = dArr41;
                            dArr6 = dArr;
                            if (dArr11[i2] < this.orderControl2 * dArr11[i6]) {
                                iMin = FastMath.min(i2 + 1, this.sequence.length - 2);
                            } else {
                                iMin = i2;
                            }
                        }
                    } else {
                        dArr30 = dArr8;
                        dArr29 = dArr41;
                        dArr6 = dArr;
                        i4 = i2 - 1;
                        if (i2 > 2) {
                            dArr10 = this.costPerTimeUnit;
                            i5 = i2 - 2;
                            if (dArr10[i5] < this.orderControl1 * dArr10[i4]) {
                                iMin = i5;
                            } else {
                                iMin = i4;
                            }
                        } else {
                            iMin = i4;
                        }
                        dArr9 = this.costPerTimeUnit;
                        if (dArr9[i2] < this.orderControl2 * dArr9[iMin]) {
                            iMin = FastMath.min(i2, this.sequence.length - 2);
                        }
                        if (z10) {
                            iMin = FastMath.min(iMin, i2);
                            dMin2 = FastMath.min(FastMath.abs(this.stepSize), this.optimalStep[iMin]);
                            z3 = z2;
                            z4 = false;
                        } else {
                            if (iMin <= i2) {
                                dFilterStep = this.optimalStep[iMin];
                                z3 = z2;
                                z4 = false;
                            } else if (i2 < i3) {
                                dArr12 = this.costPerTimeUnit;
                                if (dArr12[i2] < this.orderControl2 * dArr12[i2 - 1]) {
                                    double d115 = this.optimalStep[i2];
                                    int[] iArr12 = this.costPerStep;
                                    double d116 = (d115 * ((double) iArr12[iMin + 1])) / ((double) iArr12[i2]);
                                    z3 = z2;
                                    z4 = false;
                                    dFilterStep = filterStep(d116, z3, false);
                                } else {
                                    z3 = z2;
                                    double d117 = this.optimalStep[i2];
                                    int[] iArr13 = this.costPerStep;
                                    double d118 = (d117 * ((double) iArr13[iMin])) / ((double) iArr13[i2]);
                                    z4 = false;
                                    dFilterStep = filterStep(d118, z3, false);
                                }
                            } else {
                                z3 = z2;
                                double d119 = this.optimalStep[i2];
                                int[] iArr14 = this.costPerStep;
                                double d1110 = (d119 * ((double) iArr14[iMin])) / ((double) iArr14[i2]);
                                z4 = false;
                                dFilterStep = filterStep(d1110, z3, false);
                            }
                            dMin2 = dFilterStep;
                        }
                        i14 = iMin;
                        d4 = dMin2;
                        z8 = true;
                        z = true;
                    }
                }
                if (z10) {
                    iMin = FastMath.min(iMin, i2);
                    dMin2 = FastMath.min(FastMath.abs(this.stepSize), this.optimalStep[iMin]);
                    z3 = z2;
                    z4 = false;
                } else {
                    if (iMin <= i2) {
                        dFilterStep = this.optimalStep[iMin];
                        z3 = z2;
                        z4 = false;
                    } else if (i2 < i3) {
                        dArr12 = this.costPerTimeUnit;
                        if (dArr12[i2] < this.orderControl2 * dArr12[i2 - 1]) {
                            double d1111 = this.optimalStep[i2];
                            int[] iArr15 = this.costPerStep;
                            double d1112 = (d1111 * ((double) iArr15[iMin + 1])) / ((double) iArr15[i2]);
                            z3 = z2;
                            z4 = false;
                            dFilterStep = filterStep(d1112, z3, false);
                        } else {
                            z3 = z2;
                            double d1113 = this.optimalStep[i2];
                            int[] iArr16 = this.costPerStep;
                            double d1114 = (d1113 * ((double) iArr16[iMin])) / ((double) iArr16[i2]);
                            z4 = false;
                            dFilterStep = filterStep(d1114, z3, false);
                        }
                    } else {
                        z3 = z2;
                        double d1115 = this.optimalStep[i2];
                        int[] iArr17 = this.costPerStep;
                        double d1116 = (d1115 * ((double) iArr17[iMin])) / ((double) iArr17[i2]);
                        z4 = false;
                        dFilterStep = filterStep(d1116, z3, false);
                    }
                    dMin2 = dFilterStep;
                }
                i14 = iMin;
                d4 = dMin2;
                z8 = true;
                z = true;
            } else {
                dArr29 = dArr41;
                dArr6 = dArr;
                z3 = z2;
                dArr7 = dArr2;
                z4 = false;
                i14 = i;
                d4 = dAbs2;
            }
            dMin = FastMath.min(d4, dAbs);
            if (!z3) {
                dMin = -dMin;
            }
            if (z12) {
                this.isLastStep = z4;
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr7);
                resetInternalState();
                return;
            }
            dArr27 = dArr4;
            dArr33 = dArr33;
            dArr32 = dArr5;
            dArr26 = dArr3;
            dArr30 = dArr30;
            z7 = z;
            d5 = dMax;
            z9 = false;
            dArr31 = dArr7;
            dInitializeStep = dMin;
            dArr28 = dArr6;
            graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator2;
            z6 = z3;
        }
    }

    public void setControlFactors(double d2, double d3, double d4, double d5) {
        if (d2 < 1.0E-4d || d2 > 0.9999d) {
            this.stepControl1 = 0.65d;
        } else {
            this.stepControl1 = d2;
        }
        if (d3 < 1.0E-4d || d3 > 0.9999d) {
            this.stepControl2 = 0.94d;
        } else {
            this.stepControl2 = d3;
        }
        if (d4 < 1.0E-4d || d4 > 0.9999d) {
            this.stepControl3 = 0.02d;
        } else {
            this.stepControl3 = d4;
        }
        if (d5 < 1.0001d || d5 > 999.9d) {
            this.stepControl4 = 4.0d;
        } else {
            this.stepControl4 = d5;
        }
    }

    public void setInterpolationControl(boolean z, int i) {
        this.useInterpolationError = z;
        if (i <= 0 || i >= 7) {
            this.mudif = 4;
        } else {
            this.mudif = i;
        }
    }

    public void setOrderControl(int i, double d2, double d3) {
        if (i <= 6 || i % 2 != 0) {
            this.maxOrder = 18;
        }
        if (d2 < 1.0E-4d || d2 > 0.9999d) {
            this.orderControl1 = 0.8d;
        } else {
            this.orderControl1 = d2;
        }
        if (d3 < 1.0E-4d || d3 > 0.9999d) {
            this.orderControl2 = 0.9d;
        } else {
            this.orderControl2 = d3;
        }
        initializeArrays();
    }

    public void setStabilityCheck(boolean z, int i, int i2, double d2) {
        this.performTest = z;
        if (i <= 0) {
            i = 2;
        }
        this.maxIter = i;
        if (i2 <= 0) {
            i2 = 1;
        }
        this.maxChecks = i2;
        if (d2 < 1.0E-4d || d2 > 0.9999d) {
            this.stabilityReduction = 0.5d;
        } else {
            this.stabilityReduction = d2;
        }
    }

    public GraggBulirschStoerIntegrator(double d2, double d3, double[] dArr, double[] dArr2) {
        super(METHOD_NAME, d2, d3, dArr, dArr2);
        setStabilityCheck(true, -1, -1, -1.0d);
        setControlFactors(-1.0d, -1.0d, -1.0d, -1.0d);
        setOrderControl(-1, -1.0d, -1.0d);
        setInterpolationControl(true, -1);
    }
}
