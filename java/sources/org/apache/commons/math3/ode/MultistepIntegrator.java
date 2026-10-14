package org.apache.commons.math3.ode;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator;
import org.apache.commons.math3.ode.nonstiff.DormandPrince853Integrator;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MultistepIntegrator extends AdaptiveStepsizeIntegrator {
    private double exp;
    private double maxGrowth;
    private double minReduction;
    private final int nSteps;
    protected Array2DRowRealMatrix nordsieck;
    private double safety;
    protected double[] scaled;
    private FirstOrderIntegrator starter;

    private static class InitializationCompletedMarkerException extends RuntimeException {
        private static final long serialVersionUID = -1914085471038046418L;

        InitializationCompletedMarkerException() {
            super((Throwable) null);
        }
    }

    private class NordsieckInitializer implements StepHandler {
        private int count = 0;
        private final double[] t;
        private final double[][] y;
        private final double[][] yDot;

        NordsieckInitializer(int i, int i2) {
            this.t = new double[i];
            this.y = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
            this.yDot = (double[][]) Array.newInstance((Class<?>) double.class, i, i2);
        }

        @Override // org.apache.commons.math3.ode.sampling.StepHandler
        public void handleStep(StepInterpolator stepInterpolator, boolean z) throws MaxCountExceededException {
            double previousTime = stepInterpolator.getPreviousTime();
            double currentTime = stepInterpolator.getCurrentTime();
            int i = 0;
            if (this.count == 0) {
                stepInterpolator.setInterpolatedTime(previousTime);
                this.t[0] = previousTime;
                ExpandableStatefulODE expandable = MultistepIntegrator.this.getExpandable();
                EquationsMapper primaryMapper = expandable.getPrimaryMapper();
                primaryMapper.insertEquationData(stepInterpolator.getInterpolatedState(), this.y[this.count]);
                primaryMapper.insertEquationData(stepInterpolator.getInterpolatedDerivatives(), this.yDot[this.count]);
                int i2 = 0;
                for (EquationsMapper equationsMapper : expandable.getSecondaryMappers()) {
                    equationsMapper.insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i2), this.y[this.count]);
                    equationsMapper.insertEquationData(stepInterpolator.getInterpolatedSecondaryDerivatives(i2), this.yDot[this.count]);
                    i2++;
                }
            }
            this.count++;
            stepInterpolator.setInterpolatedTime(currentTime);
            this.t[this.count] = currentTime;
            ExpandableStatefulODE expandable2 = MultistepIntegrator.this.getExpandable();
            EquationsMapper primaryMapper2 = expandable2.getPrimaryMapper();
            primaryMapper2.insertEquationData(stepInterpolator.getInterpolatedState(), this.y[this.count]);
            primaryMapper2.insertEquationData(stepInterpolator.getInterpolatedDerivatives(), this.yDot[this.count]);
            int i3 = 0;
            for (EquationsMapper equationsMapper2 : expandable2.getSecondaryMappers()) {
                equationsMapper2.insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i3), this.y[this.count]);
                equationsMapper2.insertEquationData(stepInterpolator.getInterpolatedSecondaryDerivatives(i3), this.yDot[this.count]);
                i3++;
            }
            int i4 = this.count;
            double[] dArr = this.t;
            if (i4 != dArr.length - 1) {
                return;
            }
            MultistepIntegrator multistepIntegrator = MultistepIntegrator.this;
            multistepIntegrator.stepStart = dArr[0];
            multistepIntegrator.stepSize = (dArr[dArr.length - 1] - dArr[0]) / ((double) (dArr.length - 1));
            multistepIntegrator.scaled = (double[]) this.yDot[0].clone();
            while (true) {
                MultistepIntegrator multistepIntegrator2 = MultistepIntegrator.this;
                double[] dArr2 = multistepIntegrator2.scaled;
                if (i >= dArr2.length) {
                    multistepIntegrator2.nordsieck = multistepIntegrator2.initializeHighOrderDerivatives(multistepIntegrator2.stepSize, this.t, this.y, this.yDot);
                    throw new InitializationCompletedMarkerException();
                }
                dArr2[i] = dArr2[i] * multistepIntegrator2.stepSize;
                i++;
            }
        }

        @Override // org.apache.commons.math3.ode.sampling.StepHandler
        public void init(double d2, double[] dArr, double d3) {
        }
    }

    @Deprecated
    public interface NordsieckTransformer {
        Array2DRowRealMatrix initializeHighOrderDerivatives(double d2, double[] dArr, double[][] dArr2, double[][] dArr3);
    }

    protected MultistepIntegrator(String str, int i, int i2, double d2, double d3, double d4, double d5) throws NumberIsTooSmallException {
        super(str, d2, d3, d4, d5);
        if (i < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS, Integer.valueOf(i), 2, true);
        }
        this.starter = new DormandPrince853Integrator(d2, d3, d4, d5);
        this.nSteps = i;
        this.exp = (-1.0d) / ((double) i2);
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.exp));
    }

    protected double computeStepGrowShrinkFactor(double d2) {
        return FastMath.min(this.maxGrowth, FastMath.max(this.minReduction, this.safety * FastMath.pow(d2, this.exp)));
    }

    public double getMaxGrowth() {
        return this.maxGrowth;
    }

    public double getMinReduction() {
        return this.minReduction;
    }

    public int getNSteps() {
        return this.nSteps;
    }

    public double getSafety() {
        return this.safety;
    }

    public ODEIntegrator getStarterIntegrator() {
        return this.starter;
    }

    protected abstract Array2DRowRealMatrix initializeHighOrderDerivatives(double d2, double[] dArr, double[][] dArr2, double[][] dArr3);

    public void setMaxGrowth(double d2) {
        this.maxGrowth = d2;
    }

    public void setMinReduction(double d2) {
        this.minReduction = d2;
    }

    public void setSafety(double d2) {
        this.safety = d2;
    }

    public void setStarterIntegrator(FirstOrderIntegrator firstOrderIntegrator) {
        this.starter = firstOrderIntegrator;
    }

    protected void start(double d2, double[] dArr, double d3) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        this.starter.clearEventHandlers();
        this.starter.clearStepHandlers();
        this.starter.addStepHandler(new NordsieckInitializer((this.nSteps + 3) / 2, dArr.length));
        try {
            FirstOrderIntegrator firstOrderIntegrator = this.starter;
            if (firstOrderIntegrator instanceof AbstractIntegrator) {
                ((AbstractIntegrator) firstOrderIntegrator).integrate(getExpandable(), d3);
            } else {
                firstOrderIntegrator.integrate(new FirstOrderDifferentialEquations() { // from class: org.apache.commons.math3.ode.MultistepIntegrator.1
                    @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
                    public void computeDerivatives(double d4, double[] dArr2, double[] dArr3) {
                        MultistepIntegrator.this.getExpandable().computeDerivatives(d4, dArr2, dArr3);
                    }

                    @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
                    public int getDimension() {
                        return MultistepIntegrator.this.getExpandable().getTotalDimension();
                    }
                }, d2, dArr, d3, new double[dArr.length]);
            }
            throw new MathIllegalStateException(LocalizedFormats.MULTISTEP_STARTER_STOPPED_EARLY, new Object[0]);
        } catch (InitializationCompletedMarkerException unused) {
            getCounter().increment(this.starter.getEvaluations());
            this.starter.clearStepHandlers();
        }
    }

    protected MultistepIntegrator(String str, int i, int i2, double d2, double d3, double[] dArr, double[] dArr2) {
        super(str, d2, d3, dArr, dArr2);
        this.starter = new DormandPrince853Integrator(d2, d3, dArr, dArr2);
        this.nSteps = i;
        this.exp = (-1.0d) / ((double) i2);
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.exp));
    }
}
