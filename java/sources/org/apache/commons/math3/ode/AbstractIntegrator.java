package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.events.EventState;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractIntegrator implements FirstOrderIntegrator {
    private IntegerSequence.Incrementor evaluations;
    private Collection<EventState> eventsStates;
    private transient ExpandableStatefulODE expandable;
    protected boolean isLastStep;
    private final String name;
    protected boolean resetOccurred;
    private boolean statesInitialized;
    protected Collection<StepHandler> stepHandlers;
    protected double stepSize;
    protected double stepStart;

    public AbstractIntegrator(String str) {
        this.name = str;
        this.stepHandlers = new ArrayList();
        this.stepStart = Double.NaN;
        this.stepSize = Double.NaN;
        this.eventsStates = new ArrayList();
        this.statesInitialized = false;
        this.evaluations = IntegerSequence.Incrementor.create().withMaximalCount(Integer.MAX_VALUE);
    }

    protected double acceptStep(AbstractStepInterpolator abstractStepInterpolator, double[] dArr, double[] dArr2, double d2) throws MaxCountExceededException, DimensionMismatchException, NoBracketingException {
        double globalPreviousTime = abstractStepInterpolator.getGlobalPreviousTime();
        double globalCurrentTime = abstractStepInterpolator.getGlobalCurrentTime();
        if (!this.statesInitialized) {
            Iterator<EventState> it = this.eventsStates.iterator();
            while (it.hasNext()) {
                it.next().reinitializeBegin(abstractStepInterpolator);
            }
            this.statesInitialized = true;
        }
        final int i = abstractStepInterpolator.isForward() ? 1 : -1;
        TreeSet treeSet = new TreeSet(new Comparator<EventState>() { // from class: org.apache.commons.math3.ode.AbstractIntegrator.1
            @Override // java.util.Comparator
            public int compare(EventState eventState, EventState eventState2) {
                return i * Double.compare(eventState.getEventTime(), eventState2.getEventTime());
            }
        });
        for (EventState eventState : this.eventsStates) {
            if (eventState.evaluateStep(abstractStepInterpolator)) {
                treeSet.add(eventState);
            }
        }
        while (!treeSet.isEmpty()) {
            Iterator it2 = treeSet.iterator();
            EventState eventState2 = (EventState) it2.next();
            it2.remove();
            double eventTime = eventState2.getEventTime();
            abstractStepInterpolator.setSoftPreviousTime(globalPreviousTime);
            abstractStepInterpolator.setSoftCurrentTime(eventTime);
            abstractStepInterpolator.setInterpolatedTime(eventTime);
            double[] dArr3 = new double[dArr.length];
            this.expandable.getPrimaryMapper().insertEquationData(abstractStepInterpolator.getInterpolatedState(), dArr3);
            EquationsMapper[] secondaryMappers = this.expandable.getSecondaryMappers();
            int length = secondaryMappers.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                secondaryMappers[i2].insertEquationData(abstractStepInterpolator.getInterpolatedSecondaryState(i3), dArr3);
                i2++;
                i3++;
            }
            for (EventState eventState3 : this.eventsStates) {
                eventState3.stepAccepted(eventTime, dArr3);
                this.isLastStep = this.isLastStep || eventState3.stop();
            }
            Iterator<StepHandler> it3 = this.stepHandlers.iterator();
            while (it3.hasNext()) {
                it3.next().handleStep(abstractStepInterpolator, this.isLastStep);
            }
            if (this.isLastStep) {
                System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
                return eventTime;
            }
            this.resetOccurred = false;
            if (eventState2.reset(eventTime, dArr3)) {
                abstractStepInterpolator.setInterpolatedTime(eventTime);
                System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
                computeDerivatives(eventTime, dArr, dArr2);
                this.resetOccurred = true;
                return eventTime;
            }
            abstractStepInterpolator.setSoftPreviousTime(eventTime);
            abstractStepInterpolator.setSoftCurrentTime(globalCurrentTime);
            if (eventState2.evaluateStep(abstractStepInterpolator)) {
                treeSet.add(eventState2);
            }
            globalPreviousTime = eventTime;
        }
        abstractStepInterpolator.setInterpolatedTime(globalCurrentTime);
        double[] dArr4 = new double[dArr.length];
        this.expandable.getPrimaryMapper().insertEquationData(abstractStepInterpolator.getInterpolatedState(), dArr4);
        EquationsMapper[] secondaryMappers2 = this.expandable.getSecondaryMappers();
        int length2 = secondaryMappers2.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length2) {
            secondaryMappers2[i4].insertEquationData(abstractStepInterpolator.getInterpolatedSecondaryState(i5), dArr4);
            i4++;
            i5++;
        }
        for (EventState eventState4 : this.eventsStates) {
            eventState4.stepAccepted(globalCurrentTime, dArr4);
            this.isLastStep = this.isLastStep || eventState4.stop();
        }
        this.isLastStep = this.isLastStep || Precision.equals(globalCurrentTime, d2, 1);
        Iterator<StepHandler> it4 = this.stepHandlers.iterator();
        while (it4.hasNext()) {
            it4.next().handleStep(abstractStepInterpolator, this.isLastStep);
        }
        return globalCurrentTime;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void addEventHandler(EventHandler eventHandler, double d2, double d3, int i) {
        addEventHandler(eventHandler, d2, d3, i, new BracketingNthOrderBrentSolver(d3, 5));
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void addStepHandler(StepHandler stepHandler) {
        this.stepHandlers.add(stepHandler);
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void clearEventHandlers() {
        this.eventsStates.clear();
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void clearStepHandlers() {
        this.stepHandlers.clear();
    }

    public void computeDerivatives(double d2, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException, NullPointerException {
        this.evaluations.increment();
        this.expandable.computeDerivatives(d2, dArr, dArr2);
    }

    protected IntegerSequence.Incrementor getCounter() {
        return this.evaluations;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public double getCurrentSignedStepsize() {
        return this.stepSize;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public double getCurrentStepStart() {
        return this.stepStart;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Deprecated
    protected Incrementor getEvaluationsCounter() {
        return Incrementor.wrap(this.evaluations);
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public Collection<EventHandler> getEventHandlers() {
        ArrayList arrayList = new ArrayList(this.eventsStates.size());
        Iterator<EventState> it = this.eventsStates.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getEventHandler());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    protected ExpandableStatefulODE getExpandable() {
        return this.expandable;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public Collection<StepHandler> getStepHandlers() {
        return Collections.unmodifiableCollection(this.stepHandlers);
    }

    protected void initIntegration(double d2, double[] dArr, double d3) {
        this.evaluations = this.evaluations.withStart(0);
        for (EventState eventState : this.eventsStates) {
            eventState.setExpandable(this.expandable);
            eventState.getEventHandler().init(d2, dArr, d3);
        }
        Iterator<StepHandler> it = this.stepHandlers.iterator();
        while (it.hasNext()) {
            it.next().init(d2, dArr, d3);
        }
        setStateInitialized(false);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderIntegrator
    public double integrate(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d2, double[] dArr, double d3, double[] dArr2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        if (dArr.length != firstOrderDifferentialEquations.getDimension()) {
            throw new DimensionMismatchException(dArr.length, firstOrderDifferentialEquations.getDimension());
        }
        if (dArr2.length != firstOrderDifferentialEquations.getDimension()) {
            throw new DimensionMismatchException(dArr2.length, firstOrderDifferentialEquations.getDimension());
        }
        ExpandableStatefulODE expandableStatefulODE = new ExpandableStatefulODE(firstOrderDifferentialEquations);
        expandableStatefulODE.setTime(d2);
        expandableStatefulODE.setPrimaryState(dArr);
        integrate(expandableStatefulODE, d3);
        System.arraycopy(expandableStatefulODE.getPrimaryState(), 0, dArr2, 0, dArr2.length);
        return expandableStatefulODE.getTime();
    }

    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    protected void sanityChecks(ExpandableStatefulODE expandableStatefulODE, double d2) throws NumberIsTooSmallException, DimensionMismatchException {
        double dUlp = FastMath.ulp(FastMath.max(FastMath.abs(expandableStatefulODE.getTime()), FastMath.abs(d2))) * 1000.0d;
        double dAbs = FastMath.abs(expandableStatefulODE.getTime() - d2);
        if (dAbs <= dUlp) {
            throw new NumberIsTooSmallException(LocalizedFormats.TOO_SMALL_INTEGRATION_INTERVAL, Double.valueOf(dAbs), Double.valueOf(dUlp), false);
        }
    }

    protected void setEquations(ExpandableStatefulODE expandableStatefulODE) {
        this.expandable = expandableStatefulODE;
    }

    @Override // org.apache.commons.math3.ode.ODEIntegrator
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

    @Override // org.apache.commons.math3.ode.ODEIntegrator
    public void addEventHandler(EventHandler eventHandler, double d2, double d3, int i, UnivariateSolver univariateSolver) {
        this.eventsStates.add(new EventState(eventHandler, d2, d3, i, univariateSolver));
    }

    protected AbstractIntegrator() {
        this(null);
    }
}
