package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver;
import org.apache.commons.math3.analysis.solvers.PegasusSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class EventState {
    private final double convergence;
    private boolean forward;
    private final EventHandler handler;
    private final double maxCheckInterval;
    private final int maxIterationCount;
    private final UnivariateSolver solver;
    private ExpandableStatefulODE expandable = null;
    private double t0 = Double.NaN;
    private double g0 = Double.NaN;
    private boolean g0Positive = true;
    private boolean pendingEvent = false;
    private double pendingEventTime = Double.NaN;
    private double previousEventTime = Double.NaN;
    private boolean increasing = true;
    private EventHandler.Action nextAction = EventHandler.Action.CONTINUE;

    private static class LocalMaxCountExceededException extends RuntimeException {
        private static final long serialVersionUID = 20120901;
        private final MaxCountExceededException wrapped;

        LocalMaxCountExceededException(MaxCountExceededException maxCountExceededException) {
            this.wrapped = maxCountExceededException;
        }

        public MaxCountExceededException getException() {
            return this.wrapped;
        }
    }

    public EventState(EventHandler eventHandler, double d2, double d3, int i, UnivariateSolver univariateSolver) {
        this.handler = eventHandler;
        this.maxCheckInterval = d2;
        this.convergence = FastMath.abs(d3);
        this.maxIterationCount = i;
        this.solver = univariateSolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double[] getCompleteState(StepInterpolator stepInterpolator) {
        double[] dArr = new double[this.expandable.getTotalDimension()];
        this.expandable.getPrimaryMapper().insertEquationData(stepInterpolator.getInterpolatedState(), dArr);
        EquationsMapper[] secondaryMappers = this.expandable.getSecondaryMappers();
        int length = secondaryMappers.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            secondaryMappers[i].insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i2), dArr);
            i++;
            i2++;
        }
        return dArr;
    }

    public boolean evaluateStep(final StepInterpolator stepInterpolator) throws MaxCountExceededException, NoBracketingException {
        UnivariateFunction univariateFunction;
        double dForceSide;
        double dSolve;
        double d2;
        try {
            this.forward = stepInterpolator.isForward();
            double currentTime = stepInterpolator.getCurrentTime();
            double d3 = currentTime - this.t0;
            if (FastMath.abs(d3) < this.convergence) {
                return false;
            }
            int iMax = FastMath.max(1, (int) FastMath.ceil(FastMath.abs(d3) / this.maxCheckInterval));
            double d4 = d3 / ((double) iMax);
            UnivariateFunction univariateFunction2 = new UnivariateFunction() { // from class: org.apache.commons.math3.ode.events.EventState.1
                @Override // org.apache.commons.math3.analysis.UnivariateFunction
                public double value(double d5) throws LocalMaxCountExceededException {
                    try {
                        stepInterpolator.setInterpolatedTime(d5);
                        return EventState.this.handler.g(d5, EventState.this.getCompleteState(stepInterpolator));
                    } catch (MaxCountExceededException e2) {
                        throw new LocalMaxCountExceededException(e2);
                    }
                }
            };
            double d5 = this.t0;
            double d6 = this.g0;
            double d7 = d5;
            int i = 0;
            while (i < iMax) {
                double d8 = i == iMax + (-1) ? currentTime : this.t0 + (((double) (i + 1)) * d4);
                stepInterpolator.setInterpolatedTime(d8);
                double dG = this.handler.g(d8, getCompleteState(stepInterpolator));
                if (this.g0Positive ^ (dG >= 0.0d)) {
                    this.increasing = dG >= d6;
                    UnivariateSolver univariateSolver = this.solver;
                    if (univariateSolver instanceof BracketedUnivariateSolver) {
                        BracketedUnivariateSolver bracketedUnivariateSolver = (BracketedUnivariateSolver) univariateSolver;
                        if (this.forward) {
                            dSolve = bracketedUnivariateSolver.solve(this.maxIterationCount, univariateFunction2, d7, d8, AllowedSolution.RIGHT_SIDE);
                        } else {
                            dSolve = bracketedUnivariateSolver.solve(this.maxIterationCount, univariateFunction2, d8, d7, AllowedSolution.LEFT_SIDE);
                        }
                    } else {
                        double dSolve2 = this.forward ? univariateSolver.solve(this.maxIterationCount, univariateFunction2, d7, d8) : univariateSolver.solve(this.maxIterationCount, univariateFunction2, d8, d7);
                        int evaluations = this.maxIterationCount - this.solver.getEvaluations();
                        PegasusSolver pegasusSolver = new PegasusSolver(this.solver.getRelativeAccuracy(), this.solver.getAbsoluteAccuracy());
                        if (this.forward) {
                            dForceSide = UnivariateSolverUtils.forceSide(evaluations, univariateFunction2, pegasusSolver, dSolve2, d7, d8, AllowedSolution.RIGHT_SIDE);
                        } else {
                            dForceSide = UnivariateSolverUtils.forceSide(evaluations, univariateFunction2, pegasusSolver, dSolve2, d8, d7, AllowedSolution.LEFT_SIDE);
                        }
                        dSolve = dForceSide;
                    }
                    if (Double.isNaN(this.previousEventTime) || FastMath.abs(dSolve - d7) > this.convergence || FastMath.abs(dSolve - this.previousEventTime) > this.convergence) {
                        univariateFunction = univariateFunction2;
                        if (Double.isNaN(this.previousEventTime) || FastMath.abs(this.previousEventTime - dSolve) > this.convergence) {
                            this.pendingEventTime = dSolve;
                            this.pendingEvent = true;
                            return true;
                        }
                    } else {
                        while (true) {
                            d2 = this.forward ? d7 + this.convergence : d7 - this.convergence;
                            univariateFunction = univariateFunction2;
                            dG = univariateFunction.value(d2);
                            if (!(this.g0Positive ^ (dG >= 0.0d))) {
                                break;
                            }
                            if (!(this.forward ^ (d2 >= d8))) {
                                break;
                            }
                            d7 = d2;
                            univariateFunction2 = univariateFunction;
                        }
                        if (!((d2 >= d8) ^ this.forward)) {
                            this.pendingEventTime = dSolve;
                            this.pendingEvent = true;
                            return true;
                        }
                        i--;
                        d8 = d2;
                    }
                } else {
                    currentTime = currentTime;
                    univariateFunction = univariateFunction2;
                }
                d7 = d8;
                d6 = dG;
                i++;
                univariateFunction2 = univariateFunction;
                currentTime = currentTime;
            }
            this.pendingEvent = false;
            this.pendingEventTime = Double.NaN;
            return false;
        } catch (LocalMaxCountExceededException e2) {
            throw e2.getException();
        }
    }

    public double getConvergence() {
        return this.convergence;
    }

    public EventHandler getEventHandler() {
        return this.handler;
    }

    public double getEventTime() {
        if (this.pendingEvent) {
            return this.pendingEventTime;
        }
        return this.forward ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
    }

    public double getMaxCheckInterval() {
        return this.maxCheckInterval;
    }

    public int getMaxIterationCount() {
        return this.maxIterationCount;
    }

    public void reinitializeBegin(StepInterpolator stepInterpolator) throws MaxCountExceededException {
        double previousTime = stepInterpolator.getPreviousTime();
        this.t0 = previousTime;
        stepInterpolator.setInterpolatedTime(previousTime);
        double dG = this.handler.g(this.t0, getCompleteState(stepInterpolator));
        this.g0 = dG;
        if (dG == 0.0d) {
            double dMax = this.t0 + (FastMath.max(this.solver.getAbsoluteAccuracy(), FastMath.abs(this.solver.getRelativeAccuracy() * this.t0)) * 0.5d);
            stepInterpolator.setInterpolatedTime(dMax);
            this.g0 = this.handler.g(dMax, getCompleteState(stepInterpolator));
        }
        this.g0Positive = this.g0 >= 0.0d;
    }

    public boolean reset(double d2, double[] dArr) {
        if (!this.pendingEvent || FastMath.abs(this.pendingEventTime - d2) > this.convergence) {
            return false;
        }
        EventHandler.Action action = this.nextAction;
        EventHandler.Action action2 = EventHandler.Action.RESET_STATE;
        if (action == action2) {
            this.handler.resetState(d2, dArr);
        }
        this.pendingEvent = false;
        this.pendingEventTime = Double.NaN;
        EventHandler.Action action3 = this.nextAction;
        return action3 == action2 || action3 == EventHandler.Action.RESET_DERIVATIVES;
    }

    public void setExpandable(ExpandableStatefulODE expandableStatefulODE) {
        this.expandable = expandableStatefulODE;
    }

    public void stepAccepted(double d2, double[] dArr) {
        this.t0 = d2;
        this.g0 = this.handler.g(d2, dArr);
        if (!this.pendingEvent || FastMath.abs(this.pendingEventTime - d2) > this.convergence) {
            this.g0Positive = this.g0 >= 0.0d;
            this.nextAction = EventHandler.Action.CONTINUE;
        } else {
            this.previousEventTime = d2;
            boolean z = this.increasing;
            this.g0Positive = z;
            this.nextAction = this.handler.eventOccurred(d2, dArr, !(z ^ this.forward));
        }
    }

    public boolean stop() {
        return this.nextAction == EventHandler.Action.STOP;
    }
}
