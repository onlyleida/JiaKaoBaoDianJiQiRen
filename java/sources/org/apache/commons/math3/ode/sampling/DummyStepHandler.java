package org.apache.commons.math3.ode.sampling;

/* JADX INFO: loaded from: classes6.dex */
public class DummyStepHandler implements StepHandler {

    private static class LazyHolder {
        private static final DummyStepHandler INSTANCE = new DummyStepHandler();

        private LazyHolder() {
        }
    }

    public static DummyStepHandler getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void handleStep(StepInterpolator stepInterpolator, boolean z) {
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void init(double d2, double[] dArr, double d3) {
    }

    private DummyStepHandler() {
    }
}
