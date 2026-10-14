package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class RungeKuttaIntegrator extends AbstractIntegrator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[][] f16195a;
    private final double[] b;
    private final double[] c;
    private final RungeKuttaStepInterpolator prototype;
    private final double step;

    protected RungeKuttaIntegrator(String str, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d2) {
        super(str);
        this.c = dArr;
        this.f16195a = dArr2;
        this.b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.step = FastMath.abs(d2);
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d2);
        setEquations(expandableStatefulODE);
        char c = 0;
        boolean z = d2 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        int length = this.c.length + 1;
        double[][] dArr2 = new double[length][];
        for (int i = 0; i < length; i++) {
            dArr2[i] = new double[completeState.length];
        }
        double[] dArr3 = (double[]) completeState.clone();
        double[] dArr4 = new double[completeState.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator = (RungeKuttaStepInterpolator) this.prototype.copy();
        AbstractStepInterpolator abstractStepInterpolator = rungeKuttaStepInterpolator;
        double[] dArr5 = dArr4;
        double[] dArr6 = dArr3;
        rungeKuttaStepInterpolator.reinitialize(this, dArr3, dArr2, z, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        abstractStepInterpolator.storeTime(expandableStatefulODE.getTime());
        double time = expandableStatefulODE.getTime();
        this.stepStart = time;
        if (z) {
            double d3 = this.step;
            if (time + d3 >= d2) {
                this.stepSize = d2 - time;
            } else {
                this.stepSize = d3;
            }
        } else {
            double d4 = this.step;
            if (time - d4 <= d2) {
                this.stepSize = d2 - time;
            } else {
                this.stepSize = -d4;
            }
        }
        initIntegration(expandableStatefulODE.getTime(), completeState, d2);
        this.isLastStep = false;
        while (true) {
            abstractStepInterpolator.shift();
            computeDerivatives(this.stepStart, dArr, dArr2[c]);
            int i2 = 1;
            while (i2 < length) {
                int i3 = 0;
                while (i3 < completeState.length) {
                    int i4 = i2 - 1;
                    double d5 = this.f16195a[i4][c] * dArr2[c][i3];
                    for (int i5 = 1; i5 < i2; i5++) {
                        d5 += this.f16195a[i4][i5] * dArr2[i5][i3];
                    }
                    dArr6[i3] = dArr[i3] + (this.stepSize * d5);
                    i3++;
                    z = z;
                    c = 0;
                }
                computeDerivatives(this.stepStart + (this.c[i2 - 1] * this.stepSize), dArr6, dArr2[i2]);
                i2++;
                abstractStepInterpolator = abstractStepInterpolator;
                z = z;
                c = 0;
            }
            boolean z2 = z;
            double[] dArr7 = dArr6;
            AbstractStepInterpolator abstractStepInterpolator2 = abstractStepInterpolator;
            for (int i6 = 0; i6 < completeState.length; i6++) {
                double d6 = this.b[0] * dArr2[0][i6];
                for (int i7 = 1; i7 < length; i7++) {
                    d6 += this.b[i7] * dArr2[i7][i6];
                }
                dArr7[i6] = dArr[i6] + (this.stepSize * d6);
            }
            abstractStepInterpolator2.storeTime(this.stepStart + this.stepSize);
            System.arraycopy(dArr7, 0, dArr, 0, completeState.length);
            double[] dArr8 = dArr5;
            System.arraycopy(dArr2[length - 1], 0, dArr8, 0, completeState.length);
            double dAcceptStep = acceptStep(abstractStepInterpolator2, dArr, dArr8, d2);
            this.stepStart = dAcceptStep;
            if (!this.isLastStep) {
                abstractStepInterpolator2.storeTime(dAcceptStep);
                double d7 = this.stepStart;
                double d8 = this.stepSize + d7;
                if (!z2 ? d8 > d2 : d8 < d2) {
                    this.stepSize = d2 - d7;
                }
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                this.stepStart = Double.NaN;
                this.stepSize = Double.NaN;
                return;
            }
            dArr5 = dArr8;
            dArr6 = dArr7;
            abstractStepInterpolator = abstractStepInterpolator2;
            z = z2;
            c = 0;
        }
    }

    public double[] singleStep(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d2, double[] dArr, double d3) {
        double[] dArr2 = (double[]) dArr.clone();
        int length = this.c.length + 1;
        double[][] dArr3 = new double[length][];
        for (int i = 0; i < length; i++) {
            dArr3[i] = new double[dArr.length];
        }
        double[] dArr4 = (double[]) dArr.clone();
        double d4 = d3 - d2;
        firstOrderDifferentialEquations.computeDerivatives(d2, dArr2, dArr3[0]);
        for (int i2 = 1; i2 < length; i2++) {
            for (int i3 = 0; i3 < dArr.length; i3++) {
                int i4 = i2 - 1;
                double d5 = this.f16195a[i4][0] * dArr3[0][i3];
                for (int i5 = 1; i5 < i2; i5++) {
                    d5 += this.f16195a[i4][i5] * dArr3[i5][i3];
                }
                dArr4[i3] = dArr2[i3] + (d5 * d4);
            }
            firstOrderDifferentialEquations.computeDerivatives((this.c[i2 - 1] * d4) + d2, dArr4, dArr3[i2]);
        }
        for (int i6 = 0; i6 < dArr.length; i6++) {
            double d6 = this.b[0] * dArr3[0][i6];
            for (int i7 = 1; i7 < length; i7++) {
                d6 += this.b[i7] * dArr3[i7][i6];
            }
            dArr2[i6] = dArr2[i6] + (d6 * d4);
        }
        return dArr2;
    }
}
