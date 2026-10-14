package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class FieldStepNormalizer<T extends RealFieldElement<T>> implements FieldStepHandler<T> {
    private final StepNormalizerBounds bounds;
    private FieldODEStateAndDerivative<T> first;
    private boolean forward;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f16197h;
    private final FieldFixedStepHandler<T> handler;
    private FieldODEStateAndDerivative<T> last;
    private final StepNormalizerMode mode;

    public FieldStepNormalizer(double d2, FieldFixedStepHandler<T> fieldFixedStepHandler) {
        this(d2, fieldFixedStepHandler, StepNormalizerMode.INCREMENT, StepNormalizerBounds.FIRST);
    }

    private void doNormalizedStep(boolean z) {
        if (this.bounds.firstIncluded() || this.first.getTime().getReal() != this.last.getTime().getReal()) {
            this.handler.handleStep(this.last, z);
        }
    }

    private boolean isNextInStep(T t, FieldStepInterpolator<T> fieldStepInterpolator) {
        boolean z = this.forward;
        double real = t.getReal();
        double real2 = fieldStepInterpolator.getCurrentState().getTime().getReal();
        if (z) {
            if (real <= real2) {
                return true;
            }
        } else if (real >= real2) {
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
    public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z) throws MaxCountExceededException {
        RealFieldElement time;
        double dFloor;
        boolean z2;
        if (this.last == null) {
            FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
            this.first = previousState;
            this.last = previousState;
            boolean zIsForward = fieldStepInterpolator.isForward();
            this.forward = zIsForward;
            if (!zIsForward) {
                this.f16197h = -this.f16197h;
            }
        }
        if (this.mode == StepNormalizerMode.INCREMENT) {
            time = this.last.getTime();
            dFloor = this.f16197h;
        } else {
            time = (RealFieldElement) this.last.getTime().getField().getZero();
            dFloor = (FastMath.floor(this.last.getTime().getReal() / this.f16197h) + 1.0d) * this.f16197h;
        }
        RealFieldElement realFieldElement = (RealFieldElement) time.add(dFloor);
        if (this.mode == StepNormalizerMode.MULTIPLES && Precision.equals(realFieldElement.getReal(), this.last.getTime().getReal(), 1)) {
            realFieldElement = (RealFieldElement) realFieldElement.add(this.f16197h);
        }
        boolean zIsNextInStep = isNextInStep(realFieldElement, fieldStepInterpolator);
        while (true) {
            z2 = false;
            if (!zIsNextInStep) {
                break;
            }
            doNormalizedStep(false);
            this.last = fieldStepInterpolator.getInterpolatedState(realFieldElement);
            realFieldElement = (RealFieldElement) realFieldElement.add(this.f16197h);
            zIsNextInStep = isNextInStep(realFieldElement, fieldStepInterpolator);
        }
        if (z) {
            if (this.bounds.lastIncluded() && this.last.getTime().getReal() != fieldStepInterpolator.getCurrentState().getTime().getReal()) {
                z2 = true;
            }
            doNormalizedStep(!z2);
            if (z2) {
                this.last = fieldStepInterpolator.getCurrentState();
                doNormalizedStep(true);
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
    public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t) {
        this.first = null;
        this.last = null;
        this.forward = true;
        this.handler.init(fieldODEStateAndDerivative, t);
    }

    public FieldStepNormalizer(double d2, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerMode stepNormalizerMode) {
        this(d2, fieldFixedStepHandler, stepNormalizerMode, StepNormalizerBounds.FIRST);
    }

    public FieldStepNormalizer(double d2, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerBounds stepNormalizerBounds) {
        this(d2, fieldFixedStepHandler, StepNormalizerMode.INCREMENT, stepNormalizerBounds);
    }

    public FieldStepNormalizer(double d2, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerMode stepNormalizerMode, StepNormalizerBounds stepNormalizerBounds) {
        this.f16197h = FastMath.abs(d2);
        this.handler = fieldFixedStepHandler;
        this.mode = stepNormalizerMode;
        this.bounds = stepNormalizerBounds;
        this.first = null;
        this.last = null;
        this.forward = true;
    }
}
