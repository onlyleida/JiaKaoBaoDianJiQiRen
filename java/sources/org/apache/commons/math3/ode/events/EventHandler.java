package org.apache.commons.math3.ode.events;

/* JADX INFO: loaded from: classes6.dex */
public interface EventHandler {

    public enum Action {
        STOP,
        RESET_STATE,
        RESET_DERIVATIVES,
        CONTINUE
    }

    Action eventOccurred(double d2, double[] dArr, boolean z);

    double g(double d2, double[] dArr);

    void init(double d2, double[] dArr, double d3);

    void resetState(double d2, double[] dArr);
}
