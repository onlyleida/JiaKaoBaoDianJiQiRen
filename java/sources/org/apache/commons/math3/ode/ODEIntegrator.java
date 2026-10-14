package org.apache.commons.math3.ode;

import java.util.Collection;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.sampling.StepHandler;

/* JADX INFO: loaded from: classes6.dex */
public interface ODEIntegrator {
    void addEventHandler(EventHandler eventHandler, double d2, double d3, int i);

    void addEventHandler(EventHandler eventHandler, double d2, double d3, int i, UnivariateSolver univariateSolver);

    void addStepHandler(StepHandler stepHandler);

    void clearEventHandlers();

    void clearStepHandlers();

    double getCurrentSignedStepsize();

    double getCurrentStepStart();

    int getEvaluations();

    Collection<EventHandler> getEventHandlers();

    int getMaxEvaluations();

    String getName();

    Collection<StepHandler> getStepHandlers();

    void setMaxEvaluations(int i);
}
