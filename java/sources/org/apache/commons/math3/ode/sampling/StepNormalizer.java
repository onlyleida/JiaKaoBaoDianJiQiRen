package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class StepNormalizer implements StepHandler {
    private final StepNormalizerBounds bounds;
    private double firstTime;
    private boolean forward;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f16198h;
    private final FixedStepHandler handler;
    private double[] lastDerivatives;
    private double[] lastState;
    private double lastTime;
    private final StepNormalizerMode mode;

    public StepNormalizer(double d2, FixedStepHandler fixedStepHandler) {
        this(d2, fixedStepHandler, StepNormalizerMode.INCREMENT, StepNormalizerBounds.FIRST);
    }

    private void doNormalizedStep(boolean z) {
        if (this.bounds.firstIncluded() || this.firstTime != this.lastTime) {
            this.handler.handleStep(this.lastTime, this.lastState, this.lastDerivatives, z);
        }
    }

    private boolean isNextInStep(double d2, StepInterpolator stepInterpolator) {
        boolean z = this.forward;
        double currentTime = stepInterpolator.getCurrentTime();
        if (z) {
            if (d2 <= currentTime) {
                return true;
            }
        } else if (d2 >= currentTime) {
            return true;
        }
        return false;
    }

    private void storeStep(StepInterpolator stepInterpolator, double d2) throws MaxCountExceededException {
        this.lastTime = d2;
        stepInterpolator.setInterpolatedTime(d2);
        double[] interpolatedState = stepInterpolator.getInterpolatedState();
        double[] dArr = this.lastState;
        System.arraycopy(interpolatedState, 0, dArr, 0, dArr.length);
        double[] interpolatedDerivatives = stepInterpolator.getInterpolatedDerivatives();
        double[] dArr2 = this.lastDerivatives;
        System.arraycopy(interpolatedDerivatives, 0, dArr2, 0, dArr2.length);
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void handleStep(StepInterpolator stepInterpolator, boolean z) throws MaxCountExceededException {
        boolean z2 = false;
        if (this.lastState == null) {
            this.firstTime = stepInterpolator.getPreviousTime();
            double previousTime = stepInterpolator.getPreviousTime();
            this.lastTime = previousTime;
            stepInterpolator.setInterpolatedTime(previousTime);
            this.lastState = (double[]) stepInterpolator.getInterpolatedState().clone();
            this.lastDerivatives = (double[]) stepInterpolator.getInterpolatedDerivatives().clone();
            boolean z3 = stepInterpolator.getCurrentTime() >= this.lastTime;
            this.forward = z3;
            if (!z3) {
                this.f16198h = -this.f16198h;
            }
        }
        double dFloor = this.mode == StepNormalizerMode.INCREMENT ? this.lastTime + this.f16198h : (FastMath.floor(this.lastTime / this.f16198h) + 1.0d) * this.f16198h;
        if (this.mode == StepNormalizerMode.MULTIPLES && Precision.equals(dFloor, this.lastTime, 1)) {
            dFloor += this.f16198h;
        }
        boolean zIsNextInStep = isNextInStep(dFloor, stepInterpolator);
        while (zIsNextInStep) {
            doNormalizedStep(false);
            storeStep(stepInterpolator, dFloor);
            dFloor += this.f16198h;
            zIsNextInStep = isNextInStep(dFloor, stepInterpolator);
        }
        if (z) {
            if (this.bounds.lastIncluded() && this.lastTime != stepInterpolator.getCurrentTime()) {
                z2 = true;
            }
            doNormalizedStep(!z2);
            if (z2) {
                storeStep(stepInterpolator, stepInterpolator.getCurrentTime());
                doNormalizedStep(true);
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void init(double d2, double[] dArr, double d3) {
        this.firstTime = Double.NaN;
        this.lastTime = Double.NaN;
        this.lastState = null;
        this.lastDerivatives = null;
        this.forward = true;
        this.handler.init(d2, dArr, d3);
    }

    public StepNormalizer(double d2, FixedStepHandler fixedStepHandler, StepNormalizerMode stepNormalizerMode) {
        this(d2, fixedStepHandler, stepNormalizerMode, StepNormalizerBounds.FIRST);
    }

    public StepNormalizer(double d2, FixedStepHandler fixedStepHandler, StepNormalizerBounds stepNormalizerBounds) {
        this(d2, fixedStepHandler, StepNormalizerMode.INCREMENT, stepNormalizerBounds);
    }

    public StepNormalizer(double d2, FixedStepHandler fixedStepHandler, StepNormalizerMode stepNormalizerMode, StepNormalizerBounds stepNormalizerBounds) {
        this.f16198h = FastMath.abs(d2);
        this.handler = fixedStepHandler;
        this.mode = stepNormalizerMode;
        this.bounds = stepNormalizerBounds;
        this.firstTime = Double.NaN;
        this.lastTime = Double.NaN;
        this.lastState = null;
        this.lastDerivatives = null;
        this.forward = true;
    }
}
