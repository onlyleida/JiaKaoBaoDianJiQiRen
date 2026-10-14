package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class FieldEventState<T extends RealFieldElement<T>> {
    private final T convergence;
    private boolean forward;
    private final FieldEventHandler<T> handler;
    private final double maxCheckInterval;
    private final int maxIterationCount;
    private final BracketedRealFieldUnivariateSolver<T> solver;
    private T t0 = null;
    private T g0 = null;
    private boolean g0Positive = true;
    private boolean pendingEvent = false;
    private T pendingEventTime = null;
    private T previousEventTime = null;
    private boolean increasing = true;
    private Action nextAction = Action.CONTINUE;

    public FieldEventState(FieldEventHandler<T> fieldEventHandler, double d2, T t, int i, BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver) {
        this.handler = fieldEventHandler;
        this.maxCheckInterval = d2;
        this.convergence = (T) t.abs();
        this.maxIterationCount = i;
        this.solver = bracketedRealFieldUnivariateSolver;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0176  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.apache.commons.math3.analysis.RealFieldUnivariateFunction, org.apache.commons.math3.ode.events.FieldEventState$1] */
    /* JADX WARN: Type inference failed for: r9v18, types: [org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver] */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    public boolean evaluateStep(final FieldStepInterpolator<T> fieldStepInterpolator) throws MaxCountExceededException, NoBracketingException {
        RealFieldElement realFieldElement;
        RealFieldElement realFieldElement2;
        int i;
        AllowedSolution allowedSolution;
        RealFieldElement realFieldElement3;
        ?? r9;
        RealFieldElement realFieldElement4;
        T t;
        RealFieldElement realFieldElementValue;
        RealFieldElement realFieldElement5;
        this.forward = fieldStepInterpolator.isForward();
        T time = fieldStepInterpolator.getCurrentState().getTime();
        RealFieldElement realFieldElement6 = (RealFieldElement) time.subtract(this.t0);
        if (((RealFieldElement) ((RealFieldElement) realFieldElement6.abs()).subtract(this.convergence)).getReal() < 0.0d) {
            return false;
        }
        int iMax = FastMath.max(1, (int) FastMath.ceil(FastMath.abs(realFieldElement6.getReal()) / this.maxCheckInterval));
        RealFieldElement realFieldElement7 = (RealFieldElement) realFieldElement6.divide(iMax);
        ?? r15 = new RealFieldUnivariateFunction<T>() { // from class: org.apache.commons.math3.ode.events.FieldEventState.1
            @Override // org.apache.commons.math3.analysis.RealFieldUnivariateFunction
            public T value(T t2) {
                return (T) FieldEventState.this.handler.g(fieldStepInterpolator.getInterpolatedState(t2));
            }
        };
        T t2 = this.t0;
        RealFieldElement realFieldElement8 = this.g0;
        RealFieldElement realFieldElement9 = t2;
        int i2 = 0;
        while (i2 < iMax) {
            RealFieldElement realFieldElement10 = i2 == iMax + (-1) ? time : (RealFieldElement) this.t0.add(realFieldElement7.multiply(i2 + 1));
            RealFieldElement realFieldElementG = this.handler.g(fieldStepInterpolator.getInterpolatedState(realFieldElement10));
            if (this.g0Positive ^ (realFieldElementG.getReal() >= 0.0d)) {
                this.increasing = ((RealFieldElement) realFieldElementG.subtract(realFieldElement8)).getReal() >= 0.0d;
                if (this.forward) {
                    BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver = this.solver;
                    i = this.maxIterationCount;
                    realFieldElement = realFieldElement10;
                    realFieldElement10 = realFieldElement9;
                    realFieldElement3 = realFieldElement;
                    realFieldElement2 = realFieldElement9;
                    allowedSolution = AllowedSolution.RIGHT_SIDE;
                    r9 = bracketedRealFieldUnivariateSolver;
                } else {
                    realFieldElement = realFieldElement10;
                    realFieldElement2 = realFieldElement9;
                    BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver2 = this.solver;
                    i = this.maxIterationCount;
                    allowedSolution = AllowedSolution.LEFT_SIDE;
                    realFieldElement3 = realFieldElement2;
                    r9 = bracketedRealFieldUnivariateSolver2;
                }
                T t3 = (T) r9.solve(i, r15, realFieldElement10, realFieldElement3, allowedSolution);
                if (this.previousEventTime == null) {
                    realFieldElement4 = realFieldElement;
                    t = this.previousEventTime;
                    if (t != null) {
                    }
                    this.pendingEventTime = t3;
                    this.pendingEvent = true;
                    return true;
                }
                RealFieldElement realFieldElement11 = realFieldElement2;
                if (((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.subtract(realFieldElement11)).abs()).subtract(this.convergence)).getReal() > 0.0d || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.subtract(this.previousEventTime)).abs()).subtract(this.convergence)).getReal() > 0.0d) {
                    realFieldElement4 = realFieldElement;
                    t = this.previousEventTime;
                    if (t != null || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t.subtract(t3)).abs()).subtract(this.convergence)).getReal() > 0.0d) {
                        this.pendingEventTime = t3;
                        this.pendingEvent = true;
                        return true;
                    }
                    realFieldElementValue = realFieldElementG;
                    i2 = i2;
                } else {
                    RealFieldElement realFieldElement12 = realFieldElement11;
                    while (true) {
                        realFieldElement12 = (RealFieldElement) (this.forward ? realFieldElement12.add(this.convergence) : realFieldElement12.subtract(this.convergence));
                        realFieldElementValue = r15.value(realFieldElement12);
                        if (!(this.g0Positive ^ (realFieldElementValue.getReal() >= 0.0d))) {
                            realFieldElement5 = realFieldElement;
                            break;
                        }
                        realFieldElement5 = realFieldElement;
                        if (!(this.forward ^ (((RealFieldElement) realFieldElement12.subtract(realFieldElement5)).getReal() >= 0.0d))) {
                            break;
                        }
                        realFieldElement = realFieldElement5;
                    }
                    if (!(this.forward ^ (((RealFieldElement) realFieldElement12.subtract(realFieldElement5)).getReal() >= 0.0d))) {
                        this.pendingEventTime = t3;
                        this.pendingEvent = true;
                        return true;
                    }
                    i2--;
                    realFieldElement4 = realFieldElement12;
                }
                realFieldElement8 = realFieldElementValue;
                realFieldElement9 = realFieldElement4;
            } else {
                realFieldElement9 = realFieldElement10;
                realFieldElement8 = realFieldElementG;
            }
            i2++;
        }
        this.pendingEvent = false;
        this.pendingEventTime = null;
        return false;
    }

    public T getConvergence() {
        return this.convergence;
    }

    public FieldEventHandler<T> getEventHandler() {
        return this.handler;
    }

    public T getEventTime() {
        if (this.pendingEvent) {
            return this.pendingEventTime;
        }
        return (T) ((RealFieldElement) this.t0.getField().getZero()).add(this.forward ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY);
    }

    public double getMaxCheckInterval() {
        return this.maxCheckInterval;
    }

    public int getMaxIterationCount() {
        return this.maxIterationCount;
    }

    public void reinitializeBegin(FieldStepInterpolator<T> fieldStepInterpolator) throws MaxCountExceededException {
        FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
        this.t0 = previousState.getTime();
        T t = (T) this.handler.g(previousState);
        this.g0 = t;
        if (t.getReal() == 0.0d) {
            this.g0 = (T) this.handler.g(fieldStepInterpolator.getInterpolatedState((RealFieldElement) this.t0.add(FastMath.max(this.solver.getAbsoluteAccuracy().getReal(), FastMath.abs(((RealFieldElement) this.solver.getRelativeAccuracy().multiply(this.t0)).getReal())) * 0.5d)));
        }
        this.g0Positive = this.g0.getReal() >= 0.0d;
    }

    public FieldODEState<T> reset(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        if (!this.pendingEvent || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.pendingEventTime.subtract(fieldODEStateAndDerivative.getTime())).abs()).subtract(this.convergence)).getReal() > 0.0d) {
            return null;
        }
        Action action = this.nextAction;
        if (action == Action.RESET_STATE) {
            fieldODEStateAndDerivative = this.handler.resetState(fieldODEStateAndDerivative);
        } else if (action != Action.RESET_DERIVATIVES) {
            fieldODEStateAndDerivative = null;
        }
        this.pendingEvent = false;
        this.pendingEventTime = null;
        return fieldODEStateAndDerivative;
    }

    public void stepAccepted(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        this.t0 = fieldODEStateAndDerivative.getTime();
        this.g0 = (T) this.handler.g(fieldODEStateAndDerivative);
        if (!this.pendingEvent || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.pendingEventTime.subtract(fieldODEStateAndDerivative.getTime())).abs()).subtract(this.convergence)).getReal() > 0.0d) {
            this.g0Positive = this.g0.getReal() >= 0.0d;
            this.nextAction = Action.CONTINUE;
        } else {
            this.previousEventTime = fieldODEStateAndDerivative.getTime();
            boolean z = this.increasing;
            this.g0Positive = z;
            this.nextAction = this.handler.eventOccurred(fieldODEStateAndDerivative, !(z ^ this.forward));
        }
    }

    public boolean stop() {
        return this.nextAction == Action.STOP;
    }
}
