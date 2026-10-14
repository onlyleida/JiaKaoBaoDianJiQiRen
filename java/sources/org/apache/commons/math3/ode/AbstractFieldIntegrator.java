package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver;
import org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.events.FieldEventHandler;
import org.apache.commons.math3.ode.events.FieldEventState;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.IntegerSequence;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractFieldIntegrator<T extends RealFieldElement<T>> implements FirstOrderFieldIntegrator<T> {
    private static final double DEFAULT_FUNCTION_VALUE_ACCURACY = 1.0E-15d;
    private static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-14d;
    private transient FieldExpandableODE<T> equations;
    private final Field<T> field;
    private boolean isLastStep;
    private final String name;
    private boolean resetOccurred;
    private Collection<FieldStepHandler<T>> stepHandlers = new ArrayList();
    private FieldODEStateAndDerivative<T> stepStart = null;
    private T stepSize = null;
    private Collection<FieldEventState<T>> eventsStates = new ArrayList();
    private boolean statesInitialized = false;
    private IntegerSequence.Incrementor evaluations = IntegerSequence.Incrementor.create().withMaximalCount(Integer.MAX_VALUE);

    protected AbstractFieldIntegrator(Field<T> field, String str) {
        this.field = field;
        this.name = str;
    }

    protected FieldODEStateAndDerivative<T> acceptStep(AbstractFieldStepInterpolator<T> abstractFieldStepInterpolator, T t) throws MaxCountExceededException, DimensionMismatchException, NoBracketingException {
        FieldODEStateAndDerivative<T> globalPreviousState = abstractFieldStepInterpolator.getGlobalPreviousState();
        FieldODEStateAndDerivative<T> globalCurrentState = abstractFieldStepInterpolator.getGlobalCurrentState();
        boolean z = true;
        if (!this.statesInitialized) {
            Iterator<FieldEventState<T>> it = this.eventsStates.iterator();
            while (it.hasNext()) {
                it.next().reinitializeBegin(abstractFieldStepInterpolator);
            }
            this.statesInitialized = true;
        }
        final int i = abstractFieldStepInterpolator.isForward() ? 1 : -1;
        TreeSet treeSet = new TreeSet(new Comparator<FieldEventState<T>>() { // from class: org.apache.commons.math3.ode.AbstractFieldIntegrator.1
            @Override // java.util.Comparator
            public int compare(FieldEventState<T> fieldEventState, FieldEventState<T> fieldEventState2) {
                return i * Double.compare(fieldEventState.getEventTime().getReal(), fieldEventState2.getEventTime().getReal());
            }
        });
        for (FieldEventState<T> fieldEventState : this.eventsStates) {
            if (fieldEventState.evaluateStep(abstractFieldStepInterpolator)) {
                treeSet.add(fieldEventState);
            }
        }
        while (!treeSet.isEmpty()) {
            Iterator it2 = treeSet.iterator();
            FieldEventState fieldEventState2 = (FieldEventState) it2.next();
            it2.remove();
            FieldODEStateAndDerivative<T> interpolatedState = abstractFieldStepInterpolator.getInterpolatedState(fieldEventState2.getEventTime());
            AbstractFieldStepInterpolator<T> abstractFieldStepInterpolatorRestrictStep = abstractFieldStepInterpolator.restrictStep(globalPreviousState, interpolatedState);
            for (FieldEventState<T> fieldEventState3 : this.eventsStates) {
                fieldEventState3.stepAccepted(interpolatedState);
                this.isLastStep = this.isLastStep || fieldEventState3.stop();
            }
            Iterator<FieldStepHandler<T>> it3 = this.stepHandlers.iterator();
            while (it3.hasNext()) {
                it3.next().handleStep(abstractFieldStepInterpolatorRestrictStep, this.isLastStep);
            }
            if (this.isLastStep) {
                return interpolatedState;
            }
            this.resetOccurred = false;
            Iterator<FieldEventState<T>> it4 = this.eventsStates.iterator();
            while (it4.hasNext()) {
                FieldODEState<T> fieldODEStateReset = it4.next().reset(interpolatedState);
                if (fieldODEStateReset != null) {
                    RealFieldElement[] realFieldElementArrMapState = this.equations.getMapper().mapState(fieldODEStateReset);
                    RealFieldElement[] realFieldElementArrComputeDerivatives = computeDerivatives(fieldODEStateReset.getTime(), realFieldElementArrMapState);
                    this.resetOccurred = true;
                    return this.equations.getMapper().mapStateAndDerivative(fieldODEStateReset.getTime(), realFieldElementArrMapState, realFieldElementArrComputeDerivatives);
                }
            }
            abstractFieldStepInterpolator = abstractFieldStepInterpolatorRestrictStep.restrictStep(interpolatedState, globalCurrentState);
            if (fieldEventState2.evaluateStep(abstractFieldStepInterpolator)) {
                treeSet.add(fieldEventState2);
            }
            globalPreviousState = interpolatedState;
        }
        for (FieldEventState<T> fieldEventState4 : this.eventsStates) {
            fieldEventState4.stepAccepted(globalCurrentState);
            this.isLastStep = this.isLastStep || fieldEventState4.stop();
        }
        if (!this.isLastStep && ((RealFieldElement) ((RealFieldElement) globalCurrentState.getTime().subtract(t)).abs()).getReal() > FastMath.ulp(t.getReal())) {
            z = false;
        }
        this.isLastStep = z;
        Iterator<FieldStepHandler<T>> it5 = this.stepHandlers.iterator();
        while (it5.hasNext()) {
            it5.next().handleStep(abstractFieldStepInterpolator, this.isLastStep);
        }
        return globalCurrentState;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void addEventHandler(FieldEventHandler<T> fieldEventHandler, double d2, double d3, int i) {
        addEventHandler(fieldEventHandler, d2, d3, i, new FieldBracketingNthOrderBrentSolver((RealFieldElement) this.field.getZero().add(DEFAULT_RELATIVE_ACCURACY), (RealFieldElement) this.field.getZero().add(d3), (RealFieldElement) this.field.getZero().add(1.0E-15d), 5));
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void addStepHandler(FieldStepHandler<T> fieldStepHandler) {
        this.stepHandlers.add(fieldStepHandler);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void clearEventHandlers() {
        this.eventsStates.clear();
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void clearStepHandlers() {
        this.stepHandlers.clear();
    }

    public T[] computeDerivatives(T t, T[] tArr) throws DimensionMismatchException, MaxCountExceededException, NullPointerException {
        this.evaluations.increment();
        return (T[]) this.equations.computeDerivatives(t, tArr);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public T getCurrentSignedStepsize() {
        return this.stepSize;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public FieldODEStateAndDerivative<T> getCurrentStepStart() {
        return this.stepStart;
    }

    protected FieldExpandableODE<T> getEquations() {
        return this.equations;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    protected IntegerSequence.Incrementor getEvaluationsCounter() {
        return this.evaluations;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public Collection<FieldEventHandler<T>> getEventHandlers() {
        ArrayList arrayList = new ArrayList(this.eventsStates.size());
        Iterator<FieldEventState<T>> it = this.eventsStates.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getEventHandler());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public Field<T> getField() {
        return this.field;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public Collection<FieldStepHandler<T>> getStepHandlers() {
        return Collections.unmodifiableCollection(this.stepHandlers);
    }

    protected T getStepSize() {
        return this.stepSize;
    }

    protected FieldODEStateAndDerivative<T> getStepStart() {
        return this.stepStart;
    }

    protected FieldODEStateAndDerivative<T> initIntegration(FieldExpandableODE<T> fieldExpandableODE, T t, T[] tArr, T t2) {
        this.equations = fieldExpandableODE;
        this.evaluations = this.evaluations.withStart(0);
        fieldExpandableODE.init(t, tArr, t2);
        FieldODEStateAndDerivative<T> fieldODEStateAndDerivative = new FieldODEStateAndDerivative<>(t, tArr, computeDerivatives(t, tArr));
        Iterator<FieldEventState<T>> it = this.eventsStates.iterator();
        while (it.hasNext()) {
            it.next().getEventHandler().init(fieldODEStateAndDerivative, t2);
        }
        Iterator<FieldStepHandler<T>> it2 = this.stepHandlers.iterator();
        while (it2.hasNext()) {
            it2.next().init(fieldODEStateAndDerivative, t2);
        }
        setStateInitialized(false);
        return fieldODEStateAndDerivative;
    }

    protected boolean isLastStep() {
        return this.isLastStep;
    }

    protected boolean resetOccurred() {
        return this.resetOccurred;
    }

    protected void sanityChecks(FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException {
        double dUlp = FastMath.ulp(FastMath.max(FastMath.abs(fieldODEState.getTime().getReal()), FastMath.abs(t.getReal()))) * 1000.0d;
        double real = ((RealFieldElement) ((RealFieldElement) fieldODEState.getTime().subtract(t)).abs()).getReal();
        if (real <= dUlp) {
            throw new NumberIsTooSmallException(LocalizedFormats.TOO_SMALL_INTEGRATION_INTERVAL, Double.valueOf(real), Double.valueOf(dUlp), false);
        }
    }

    protected void setIsLastStep(boolean z) {
        this.isLastStep = z;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void setMaxEvaluations(int i) {
        IntegerSequence.Incrementor incrementor = this.evaluations;
        if (i < 0) {
            i = Integer.MAX_VALUE;
        }
        this.evaluations = incrementor.withMaximalCount(i);
    }

    protected void setStateInitialized(boolean z) {
        this.statesInitialized = z;
    }

    protected void setStepSize(T t) {
        this.stepSize = t;
    }

    protected void setStepStart(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        this.stepStart = fieldODEStateAndDerivative;
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public void addEventHandler(FieldEventHandler<T> fieldEventHandler, double d2, double d3, int i, BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver) {
        this.eventsStates.add(new FieldEventState<>(fieldEventHandler, d2, (RealFieldElement) this.field.getZero().add(d3), i, bracketedRealFieldUnivariateSolver));
    }
}
