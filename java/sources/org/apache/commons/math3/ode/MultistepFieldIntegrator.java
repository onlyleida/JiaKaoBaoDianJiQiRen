package org.apache.commons.math3.ode;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator;
import org.apache.commons.math3.ode.nonstiff.DormandPrince853FieldIntegrator;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MultistepFieldIntegrator<T extends RealFieldElement<T>> extends AdaptiveStepsizeFieldIntegrator<T> {
    private double exp;
    private double maxGrowth;
    private double minReduction;
    private final int nSteps;
    protected Array2DRowFieldMatrix<T> nordsieck;
    private double safety;
    protected T[] scaled;
    private FirstOrderFieldIntegrator<T> starter;

    private class FieldNordsieckInitializer implements FieldStepHandler<T> {
        private int count = 0;
        private final FieldEquationsMapper<T> mapper;
        private FieldODEStateAndDerivative<T> savedStart;
        private final T[] t;
        private final T[][] y;
        private final T[][] yDot;

        FieldNordsieckInitializer(FieldEquationsMapper<T> fieldEquationsMapper, int i) {
            this.mapper = fieldEquationsMapper;
            this.t = (T[]) ((RealFieldElement[]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i));
            this.y = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i, -1));
            this.yDot = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i, -1));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
        public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z) throws MaxCountExceededException {
            if (this.count == 0) {
                FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
                this.savedStart = previousState;
                this.t[this.count] = previousState.getTime();
                ((T[][]) this.y)[this.count] = this.mapper.mapState(previousState);
                ((T[][]) this.yDot)[this.count] = this.mapper.mapDerivative(previousState);
            }
            this.count++;
            FieldODEStateAndDerivative<T> currentState = fieldStepInterpolator.getCurrentState();
            this.t[this.count] = currentState.getTime();
            ((T[][]) this.y)[this.count] = this.mapper.mapState(currentState);
            ((T[][]) this.yDot)[this.count] = this.mapper.mapDerivative(currentState);
            int i = this.count;
            T[] tArr = this.t;
            if (i != tArr.length - 1) {
                return;
            }
            MultistepFieldIntegrator.this.setStepSize((RealFieldElement) ((RealFieldElement) tArr[tArr.length - 1].subtract(tArr[0])).divide(this.t.length - 1));
            MultistepFieldIntegrator multistepFieldIntegrator = MultistepFieldIntegrator.this;
            multistepFieldIntegrator.scaled = (T[]) ((RealFieldElement[]) MathArrays.buildArray(multistepFieldIntegrator.getField(), this.yDot[0].length));
            int i2 = 0;
            while (true) {
                MultistepFieldIntegrator multistepFieldIntegrator2 = MultistepFieldIntegrator.this;
                RealFieldElement[] realFieldElementArr = (T[]) multistepFieldIntegrator2.scaled;
                if (i2 >= realFieldElementArr.length) {
                    multistepFieldIntegrator2.nordsieck = multistepFieldIntegrator2.initializeHighOrderDerivatives(multistepFieldIntegrator2.getStepSize(), this.t, this.y, this.yDot);
                    MultistepFieldIntegrator.this.setStepStart(this.savedStart);
                    throw new InitializationCompletedMarkerException();
                }
                realFieldElementArr[i2] = (RealFieldElement) this.yDot[0][i2].multiply(multistepFieldIntegrator2.getStepSize());
                i2++;
            }
        }

        @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
        public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t) {
        }
    }

    private static class InitializationCompletedMarkerException extends RuntimeException {
        private static final long serialVersionUID = -1914085471038046418L;

        InitializationCompletedMarkerException() {
            super((Throwable) null);
        }
    }

    protected MultistepFieldIntegrator(Field<T> field, String str, int i, int i2, double d2, double d3, double d4, double d5) throws NumberIsTooSmallException {
        super(field, str, d2, d3, d4, d5);
        if (i < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS, Integer.valueOf(i), 2, true);
        }
        this.starter = new DormandPrince853FieldIntegrator(field, d2, d3, d4, d5);
        this.nSteps = i;
        this.exp = (-1.0d) / ((double) i2);
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.exp));
    }

    protected T computeStepGrowShrinkFactor(T t) {
        return (T) MathUtils.min((RealFieldElement) ((RealFieldElement) t.getField().getZero()).add(this.maxGrowth), MathUtils.max((RealFieldElement) ((RealFieldElement) t.getField().getZero()).add(this.minReduction), (RealFieldElement) ((RealFieldElement) t.pow(this.exp)).multiply(this.safety)));
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

    public FirstOrderFieldIntegrator<T> getStarterIntegrator() {
        return this.starter;
    }

    protected abstract Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t, T[] tArr, T[][] tArr2, T[][] tArr3);

    protected void rescale(T t) {
        RealFieldElement realFieldElement = (RealFieldElement) t.divide(getStepSize());
        int i = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.scaled;
            if (i >= fieldElementArr.length) {
                break;
            }
            fieldElementArr[i] = (RealFieldElement) fieldElementArr[i].multiply(realFieldElement);
            i++;
        }
        RealFieldElement realFieldElement2 = realFieldElement;
        for (RealFieldElement[] realFieldElementArr : (RealFieldElement[][]) this.nordsieck.getDataRef()) {
            realFieldElement2 = (RealFieldElement) realFieldElement2.multiply(realFieldElement);
            for (int i2 = 0; i2 < realFieldElementArr.length; i2++) {
                realFieldElementArr[i2] = (RealFieldElement) realFieldElementArr[i2].multiply(realFieldElement2);
            }
        }
        setStepSize(t);
    }

    public void setMaxGrowth(double d2) {
        this.maxGrowth = d2;
    }

    public void setMinReduction(double d2) {
        this.minReduction = d2;
    }

    public void setSafety(double d2) {
        this.safety = d2;
    }

    public void setStarterIntegrator(FirstOrderFieldIntegrator<T> firstOrderFieldIntegrator) {
        this.starter = firstOrderFieldIntegrator;
    }

    protected void start(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        this.starter.clearEventHandlers();
        this.starter.clearStepHandlers();
        this.starter.addStepHandler(new FieldNordsieckInitializer(fieldExpandableODE.getMapper(), (this.nSteps + 3) / 2));
        try {
            this.starter.integrate(fieldExpandableODE, fieldODEState, t);
            throw new MathIllegalStateException(LocalizedFormats.MULTISTEP_STARTER_STOPPED_EARLY, new Object[0]);
        } catch (InitializationCompletedMarkerException unused) {
            getEvaluationsCounter().increment(this.starter.getEvaluations());
            this.starter.clearStepHandlers();
        }
    }

    protected MultistepFieldIntegrator(Field<T> field, String str, int i, int i2, double d2, double d3, double[] dArr, double[] dArr2) {
        super(field, str, d2, d3, dArr, dArr2);
        this.starter = new DormandPrince853FieldIntegrator(field, d2, d3, dArr, dArr2);
        this.nSteps = i;
        this.exp = (-1.0d) / ((double) i2);
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.exp));
    }
}
