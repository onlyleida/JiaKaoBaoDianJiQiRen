package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class EmbeddedRungeKuttaIntegrator extends AdaptiveStepsizeIntegrator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[][] f16192a;
    private final double[] b;
    private final double[] c;
    private final double exp;
    private final boolean fsal;
    private double maxGrowth;
    private double minReduction;
    private final RungeKuttaStepInterpolator prototype;
    private double safety;

    protected EmbeddedRungeKuttaIntegrator(String str, boolean z, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d2, double d3, double d4, double d5) {
        super(str, d2, d3, d4, d5);
        this.fsal = z;
        this.c = dArr;
        this.f16192a = dArr2;
        this.b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.exp = (-1.0d) / ((double) getOrder());
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(10.0d);
    }

    protected abstract double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d2);

    public double getMaxGrowth() {
        return this.maxGrowth;
    }

    public double getMinReduction() {
        return this.minReduction;
    }

    public abstract int getOrder();

    public double getSafety() {
        return this.safety;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        double[] dArr;
        boolean z;
        double[] dArr2;
        boolean z2;
        double dInitializeStep;
        sanityChecks(expandableStatefulODE, d2);
        setEquations(expandableStatefulODE);
        char c = 0;
        boolean z3 = d2 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr3 = (double[]) completeState.clone();
        int length = this.c.length + 1;
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, length, dArr3.length);
        double[] dArr5 = (double[]) completeState.clone();
        double[] dArr6 = new double[dArr3.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator = (RungeKuttaStepInterpolator) this.prototype.copy();
        AbstractStepInterpolator abstractStepInterpolator = rungeKuttaStepInterpolator;
        double[] dArr7 = dArr6;
        rungeKuttaStepInterpolator.reinitialize(this, dArr5, dArr4, z3, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        abstractStepInterpolator.storeTime(expandableStatefulODE.getTime());
        this.stepStart = expandableStatefulODE.getTime();
        double dFilterStep = 0.0d;
        initIntegration(expandableStatefulODE.getTime(), completeState, d2);
        this.isLastStep = false;
        boolean z4 = true;
        while (true) {
            abstractStepInterpolator.shift();
            boolean z5 = z4;
            double dEstimateError = 10.0d;
            while (dEstimateError >= 1.0d) {
                if (z5 || !this.fsal) {
                    computeDerivatives(this.stepStart, dArr3, dArr4[c]);
                }
                if (z5) {
                    int i = this.mainSetDimension;
                    double[] dArr8 = new double[i];
                    if (this.vecAbsoluteTolerance == null) {
                        int i2 = 0;
                        while (i2 < i) {
                            dArr8[i2] = this.scalAbsoluteTolerance + (this.scalRelativeTolerance * FastMath.abs(dArr3[i2]));
                            i2++;
                            z3 = z3;
                        }
                        z2 = z3;
                    } else {
                        z2 = z3;
                        for (int i3 = 0; i3 < i; i3++) {
                            dArr8[i3] = this.vecAbsoluteTolerance[i3] + (this.vecRelativeTolerance[i3] * FastMath.abs(dArr3[i3]));
                        }
                    }
                    dArr2 = dArr5;
                    dInitializeStep = initializeStep(z2, getOrder(), dArr8, this.stepStart, dArr3, dArr4[0], dArr2, dArr4[1]);
                    z5 = false;
                } else {
                    dArr2 = dArr5;
                    z2 = z3;
                    dInitializeStep = dFilterStep;
                }
                this.stepSize = dInitializeStep;
                if (z2) {
                    double d3 = this.stepStart;
                    if (d3 + dInitializeStep >= d2) {
                        this.stepSize = d2 - d3;
                    }
                } else {
                    double d4 = this.stepStart;
                    if (d4 + dInitializeStep <= d2) {
                        this.stepSize = d2 - d4;
                    }
                }
                int i4 = 1;
                while (i4 < length) {
                    for (int i5 = 0; i5 < completeState.length; i5++) {
                        int i6 = i4 - 1;
                        double d5 = this.f16192a[i6][0] * dArr4[0][i5];
                        for (int i7 = 1; i7 < i4; i7++) {
                            d5 += this.f16192a[i6][i7] * dArr4[i7][i5];
                        }
                        dArr2[i5] = dArr3[i5] + (this.stepSize * d5);
                    }
                    double[] dArr9 = dArr2;
                    computeDerivatives(this.stepStart + (this.c[i4 - 1] * this.stepSize), dArr9, dArr4[i4]);
                    i4++;
                    z5 = z5;
                    dInitializeStep = dInitializeStep;
                    dArr2 = dArr9;
                }
                z5 = z5;
                double[] dArr10 = dArr2;
                double d6 = dInitializeStep;
                for (int i8 = 0; i8 < completeState.length; i8++) {
                    double d7 = this.b[0] * dArr4[0][i8];
                    for (int i9 = 1; i9 < length; i9++) {
                        d7 += this.b[i9] * dArr4[i9][i8];
                    }
                    dArr10[i8] = dArr3[i8] + (this.stepSize * d7);
                }
                dEstimateError = estimateError(dArr4, dArr3, dArr10, this.stepSize);
                if (dEstimateError >= 1.0d) {
                    boolean z6 = z2;
                    dArr5 = dArr10;
                    dFilterStep = filterStep(this.stepSize * FastMath.min(this.maxGrowth, FastMath.max(this.minReduction, this.safety * FastMath.pow(dEstimateError, this.exp))), z6, false);
                    z3 = z6;
                } else {
                    dArr5 = dArr10;
                    dFilterStep = d6;
                    z3 = z2;
                }
                c = 0;
            }
            double[] dArr11 = dArr5;
            int i10 = length;
            boolean z7 = z3;
            double[] dArr12 = dArr3;
            abstractStepInterpolator.storeTime(this.stepStart + this.stepSize);
            System.arraycopy(dArr11, 0, dArr12, 0, completeState.length);
            double[] dArr13 = dArr7;
            System.arraycopy(dArr4[i10 - 1], 0, dArr13, 0, completeState.length);
            double d8 = dEstimateError;
            this.stepStart = acceptStep(abstractStepInterpolator, dArr12, dArr13, d2);
            System.arraycopy(dArr12, 0, dArr11, 0, dArr12.length);
            if (this.isLastStep) {
                dArr = dArr7;
                z = z7;
            } else {
                abstractStepInterpolator.storeTime(this.stepStart);
                if (this.fsal) {
                    dArr = dArr7;
                    System.arraycopy(dArr, 0, dArr4[0], 0, completeState.length);
                } else {
                    dArr = dArr7;
                }
                z = z7;
                double dMin = this.stepSize * FastMath.min(this.maxGrowth, FastMath.max(this.minReduction, this.safety * FastMath.pow(d8, this.exp)));
                double d9 = this.stepStart + dMin;
                double dFilterStep2 = filterStep(dMin, z, !z ? d9 > d2 : d9 < d2);
                double d10 = this.stepStart;
                double d11 = d10 + dFilterStep2;
                if (z == 0 ? d11 <= d2 : d11 >= d2) {
                    dFilterStep2 = d2 - d10;
                }
                dFilterStep = dFilterStep2;
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr12);
                resetInternalState();
                return;
            }
            dArr5 = dArr11;
            dArr3 = dArr12;
            z4 = z5;
            length = i10;
            c = 0;
            z3 = z;
            abstractStepInterpolator = abstractStepInterpolator;
            dArr7 = dArr;
        }
    }

    public void setMaxGrowth(double d2) {
        this.maxGrowth = d2;
    }

    public void setMinReduction(double d2) {
        this.minReduction = d2;
    }

    public void setSafety(double d2) {
        this.safety = d2;
    }

    protected EmbeddedRungeKuttaIntegrator(String str, boolean z, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d2, double d3, double[] dArr4, double[] dArr5) {
        super(str, d2, d3, dArr4, dArr5);
        this.fsal = z;
        this.c = dArr;
        this.f16192a = dArr2;
        this.b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.exp = (-1.0d) / ((double) getOrder());
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(10.0d);
    }
}
