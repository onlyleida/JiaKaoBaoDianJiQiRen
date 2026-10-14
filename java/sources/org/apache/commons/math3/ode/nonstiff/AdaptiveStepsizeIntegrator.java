package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AdaptiveStepsizeIntegrator extends AbstractIntegrator {
    private double initialStep;
    protected int mainSetDimension;
    private double maxStep;
    private double minStep;
    protected double scalAbsoluteTolerance;
    protected double scalRelativeTolerance;
    protected double[] vecAbsoluteTolerance;
    protected double[] vecRelativeTolerance;

    public AdaptiveStepsizeIntegrator(String str, double d2, double d3, double d4, double d5) {
        super(str);
        setStepSizeControl(d2, d3, d4, d5);
        resetInternalState();
    }

    protected double filterStep(double d2, boolean z, boolean z2) throws NumberIsTooSmallException {
        double dAbs = FastMath.abs(d2);
        double d3 = this.minStep;
        if (dAbs < d3) {
            if (!z2) {
                throw new NumberIsTooSmallException(LocalizedFormats.MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION, Double.valueOf(FastMath.abs(d2)), Double.valueOf(this.minStep), true);
            }
            d2 = z ? d3 : -d3;
        }
        double d4 = this.maxStep;
        if (d2 > d4) {
            return d4;
        }
        return d2 < (-d4) ? -d4 : d2;
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator, org.apache.commons.math3.ode.ODEIntegrator
    public double getCurrentStepStart() {
        return this.stepStart;
    }

    public double getMaxStep() {
        return this.maxStep;
    }

    public double getMinStep() {
        return this.minStep;
    }

    public double initializeStep(boolean z, int i, double[] dArr, double d2, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5) throws MaxCountExceededException, DimensionMismatchException {
        double d3 = this.initialStep;
        if (d3 > 0.0d) {
            return z ? d3 : -d3;
        }
        double d4 = 0.0d;
        double d5 = 0.0d;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            double d6 = dArr2[i2] / dArr[i2];
            d4 += d6 * d6;
            double d7 = dArr3[i2] / dArr[i2];
            d5 += d7 * d7;
        }
        double dSqrt = (d4 < 1.0E-10d || d5 < 1.0E-10d) ? 1.0E-6d : FastMath.sqrt(d4 / d5) * 0.01d;
        if (!z) {
            dSqrt = -dSqrt;
        }
        for (int i3 = 0; i3 < dArr2.length; i3++) {
            dArr4[i3] = dArr2[i3] + (dArr3[i3] * dSqrt);
        }
        computeDerivatives(d2 + dSqrt, dArr4, dArr5);
        double d8 = 0.0d;
        for (int i4 = 0; i4 < dArr.length; i4++) {
            double d9 = (dArr5[i4] - dArr3[i4]) / dArr[i4];
            d8 += d9 * d9;
        }
        double dMax = FastMath.max(FastMath.sqrt(d5), FastMath.sqrt(d8) / dSqrt);
        double dMax2 = FastMath.max(FastMath.min(FastMath.abs(dSqrt) * 100.0d, dMax < 1.0E-15d ? FastMath.max(1.0E-6d, FastMath.abs(dSqrt) * 0.001d) : FastMath.pow(0.01d / dMax, 1.0d / ((double) i))), FastMath.abs(d2) * 1.0E-12d);
        if (dMax2 < getMinStep()) {
            dMax2 = getMinStep();
        }
        if (dMax2 > getMaxStep()) {
            dMax2 = getMaxStep();
        }
        return !z ? -dMax2 : dMax2;
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator
    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    protected void resetInternalState() {
        this.stepStart = Double.NaN;
        this.stepSize = FastMath.sqrt(this.minStep * this.maxStep);
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator
    protected void sanityChecks(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException {
        super.sanityChecks(expandableStatefulODE, d2);
        int dimension = expandableStatefulODE.getPrimaryMapper().getDimension();
        this.mainSetDimension = dimension;
        double[] dArr = this.vecAbsoluteTolerance;
        if (dArr != null && dArr.length != dimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecAbsoluteTolerance.length);
        }
        double[] dArr2 = this.vecRelativeTolerance;
        if (dArr2 != null && dArr2.length != dimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecRelativeTolerance.length);
        }
    }

    public void setInitialStepSize(double d2) {
        if (d2 < this.minStep || d2 > this.maxStep) {
            this.initialStep = -1.0d;
        } else {
            this.initialStep = d2;
        }
    }

    public void setStepSizeControl(double d2, double d3, double d4, double d5) {
        this.minStep = FastMath.abs(d2);
        this.maxStep = FastMath.abs(d3);
        this.initialStep = -1.0d;
        this.scalAbsoluteTolerance = d4;
        this.scalRelativeTolerance = d5;
        this.vecAbsoluteTolerance = null;
        this.vecRelativeTolerance = null;
    }

    public AdaptiveStepsizeIntegrator(String str, double d2, double d3, double[] dArr, double[] dArr2) {
        super(str);
        setStepSizeControl(d2, d3, dArr, dArr2);
        resetInternalState();
    }

    public void setStepSizeControl(double d2, double d3, double[] dArr, double[] dArr2) {
        this.minStep = FastMath.abs(d2);
        this.maxStep = FastMath.abs(d3);
        this.initialStep = -1.0d;
        this.scalAbsoluteTolerance = 0.0d;
        this.scalRelativeTolerance = 0.0d;
        this.vecAbsoluteTolerance = (double[]) dArr.clone();
        this.vecRelativeTolerance = (double[]) dArr2.clone();
    }
}
