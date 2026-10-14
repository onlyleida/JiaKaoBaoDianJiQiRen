package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class EmbeddedRungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends AdaptiveStepsizeFieldIntegrator<T> implements FieldButcherArrayProvider<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T[][] f16191a;
    private final T[] b;
    private final T[] c;
    private final T exp;
    private final int fsal;
    private T maxGrowth;
    private T minReduction;
    private T safety;

    protected EmbeddedRungeKuttaFieldIntegrator(Field<T> field, String str, int i, double d2, double d3, double d4, double d5) {
        super(field, str, d2, d3, d4, d5);
        this.fsal = i;
        this.c = getC();
        this.f16191a = getA();
        this.b = getB();
        this.exp = (T) field.getOne().divide(-getOrder());
        setSafety((RealFieldElement) field.getZero().add(0.9d));
        setMinReduction((RealFieldElement) field.getZero().add(0.2d));
        setMaxGrowth((RealFieldElement) field.getZero().add(10.0d));
    }

    protected abstract RungeKuttaFieldStepInterpolator<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper);

    protected abstract T estimateError(T[][] tArr, T[] tArr2, T[] tArr3, T t);

    protected T fraction(int i, int i2) {
        return (T) ((RealFieldElement) getField().getOne().multiply(i)).divide(i2);
    }

    public T getMaxGrowth() {
        return this.maxGrowth;
    }

    public T getMinReduction() {
        return this.minReduction;
    }

    public abstract int getOrder();

    public T getSafety() {
        return this.safety;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0361 A[PHI: r3
      0x0361: PHI (r3v15 double) = (r3v14 double), (r3v18 double) binds: [B:74:0x035f, B:71:0x034e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x0363 A[PHI: r3
      0x0363: PHI (r3v17 double) = (r3v14 double), (r3v18 double) binds: [B:74:0x035f, B:71:0x034e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        double d2;
        boolean z;
        RealFieldElement[] realFieldElementArr;
        sanityChecks(fieldODEState, t);
        RealFieldElement time = fieldODEState.getTime();
        RealFieldElement[] realFieldElementArrMapState = fieldExpandableODE.getMapper().mapState(fieldODEState);
        setStepStart(initIntegration(fieldExpandableODE, time, realFieldElementArrMapState, t));
        double d3 = 0.0d;
        boolean z2 = ((RealFieldElement) t.subtract(fieldODEState.getTime())).getReal() > 0.0d;
        int length = this.c.length + 1;
        RealFieldElement[][] realFieldElementArr2 = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr3 = (RealFieldElement[]) MathArrays.buildArray(getField(), realFieldElementArrMapState.length);
        T zero = getField().getZero();
        setIsLastStep(false);
        RealFieldElement[] realFieldElementArr4 = realFieldElementArrMapState;
        boolean z3 = true;
        while (true) {
            RealFieldElement realFieldElementEstimateError = (RealFieldElement) getField().getZero().add(10.0d);
            T tFilterStep = zero;
            RealFieldElement[] realFieldElementArrMapState2 = realFieldElementArr4;
            boolean z4 = z3;
            while (((RealFieldElement) realFieldElementEstimateError.subtract(1.0d)).getReal() >= d3) {
                realFieldElementArrMapState2 = fieldExpandableODE.getMapper().mapState(getStepStart());
                realFieldElementArr2[0] = fieldExpandableODE.getMapper().mapDerivative(getStepStart());
                if (z4) {
                    RealFieldElement[] realFieldElementArr5 = (RealFieldElement[]) MathArrays.buildArray(getField(), this.mainSetDimension);
                    if (this.vecAbsoluteTolerance == null) {
                        for (int i = 0; i < realFieldElementArr5.length; i++) {
                            realFieldElementArr5[i] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElementArrMapState2[i].abs()).multiply(this.scalRelativeTolerance)).add(this.scalAbsoluteTolerance);
                        }
                    } else {
                        for (int i2 = 0; i2 < realFieldElementArr5.length; i2++) {
                            realFieldElementArr5[i2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElementArrMapState2[i2].abs()).multiply(this.vecRelativeTolerance[i2])).add(this.vecAbsoluteTolerance[i2]);
                        }
                    }
                    realFieldElementArr = realFieldElementArr3;
                    z4 = false;
                    tFilterStep = initializeStep(z2, getOrder(), realFieldElementArr5, getStepStart(), fieldExpandableODE.getMapper());
                } else {
                    realFieldElementArr = realFieldElementArr3;
                }
                setStepSize(tFilterStep);
                if (z2) {
                    if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().add(getStepSize())).subtract(t)).getReal() >= 0.0d) {
                        setStepSize((RealFieldElement) t.subtract(getStepStart().getTime()));
                    }
                } else if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().add(getStepSize())).subtract(t)).getReal() <= 0.0d) {
                    setStepSize((RealFieldElement) t.subtract(getStepStart().getTime()));
                }
                for (int i3 = 1; i3 < length; i3++) {
                    for (int i4 = 0; i4 < realFieldElementArrMapState.length; i4++) {
                        Decimal64 decimal64 = realFieldElementArr2[0][i4];
                        int i5 = i3 - 1;
                        RealFieldElement realFieldElement = (RealFieldElement) decimal64.multiply(this.f16191a[i5][0]);
                        for (int i6 = 1; i6 < i3; i6++) {
                            realFieldElement = (RealFieldElement) realFieldElement.add(realFieldElementArr2[i6][i4].multiply(this.f16191a[i5][i6]));
                        }
                        realFieldElementArr[i4] = (RealFieldElement) realFieldElementArrMapState2[i4].add(getStepSize().multiply(realFieldElement));
                    }
                    realFieldElementArr2[i3] = computeDerivatives((RealFieldElement) getStepStart().getTime().add(getStepSize().multiply(this.c[i3 - 1])), realFieldElementArr);
                }
                for (int i7 = 0; i7 < realFieldElementArrMapState.length; i7++) {
                    RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElementArr2[0][i7].multiply(this.b[0]);
                    for (int i8 = 1; i8 < length; i8++) {
                        realFieldElement2 = (RealFieldElement) realFieldElement2.add(realFieldElementArr2[i8][i7].multiply(this.b[i8]));
                    }
                    realFieldElementArr[i7] = (RealFieldElement) realFieldElementArrMapState2[i7].add(getStepSize().multiply(realFieldElement2));
                }
                realFieldElementEstimateError = estimateError(realFieldElementArr2, realFieldElementArrMapState2, realFieldElementArr, getStepSize());
                if (((RealFieldElement) realFieldElementEstimateError.subtract(1.0d)).getReal() >= 0.0d) {
                    tFilterStep = filterStep((RealFieldElement) getStepSize().multiply(MathUtils.min(this.maxGrowth, MathUtils.max(this.minReduction, (RealFieldElement) this.safety.multiply(realFieldElementEstimateError.pow(this.exp))))), z2, false);
                }
                realFieldElementArr2 = realFieldElementArr2;
                realFieldElementArr3 = realFieldElementArr;
                d3 = 0.0d;
            }
            RealFieldElement[] realFieldElementArr6 = realFieldElementArr3;
            RealFieldElement[][] realFieldElementArr7 = realFieldElementArr2;
            RealFieldElement realFieldElement3 = (RealFieldElement) getStepStart().getTime().add(getStepSize());
            int i9 = this.fsal;
            FieldODEStateAndDerivative<T> fieldODEStateAndDerivative = new FieldODEStateAndDerivative<>(realFieldElement3, realFieldElementArr6, i9 >= 0 ? realFieldElementArr7[i9] : computeDerivatives(realFieldElement3, realFieldElementArr6));
            System.arraycopy(realFieldElementArr6, 0, realFieldElementArrMapState2, 0, realFieldElementArrMapState.length);
            RealFieldElement realFieldElement4 = realFieldElementEstimateError;
            setStepStart(acceptStep(createInterpolator(z2, realFieldElementArr7, getStepStart(), fieldODEStateAndDerivative, fieldExpandableODE.getMapper()), t));
            if (isLastStep()) {
                d2 = 0.0d;
                zero = tFilterStep;
            } else {
                RealFieldElement realFieldElement5 = (RealFieldElement) getStepSize().multiply(MathUtils.min(this.maxGrowth, MathUtils.max(this.minReduction, (RealFieldElement) this.safety.multiply(realFieldElement4.pow(this.exp)))));
                RealFieldElement realFieldElement6 = (RealFieldElement) getStepStart().getTime().add(realFieldElement5);
                zero = filterStep(realFieldElement5, z2, !z2 ? ((RealFieldElement) realFieldElement6.subtract(t)).getReal() > 0.0d : ((RealFieldElement) realFieldElement6.subtract(t)).getReal() < 0.0d);
                RealFieldElement realFieldElement7 = (RealFieldElement) getStepStart().getTime().add(zero);
                if (z2) {
                    d2 = 0.0d;
                    if (((RealFieldElement) realFieldElement7.subtract(t)).getReal() >= 0.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    d2 = 0.0d;
                    if (((RealFieldElement) realFieldElement7.subtract(t)).getReal() <= 0.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    zero = (T) t.subtract(getStepStart().getTime());
                }
            }
            if (isLastStep()) {
                FieldODEStateAndDerivative<T> stepStart = getStepStart();
                resetInternalState();
                return stepStart;
            }
            realFieldElementArr2 = realFieldElementArr7;
            realFieldElementArr4 = realFieldElementArrMapState2;
            z3 = z4;
            realFieldElementArr3 = realFieldElementArr6;
            d3 = d2;
        }
    }

    public void setMaxGrowth(T t) {
        this.maxGrowth = t;
    }

    public void setMinReduction(T t) {
        this.minReduction = t;
    }

    public void setSafety(T t) {
        this.safety = t;
    }

    protected T fraction(double d2, double d3) {
        return (T) ((RealFieldElement) getField().getOne().multiply(d2)).divide(d3);
    }

    protected EmbeddedRungeKuttaFieldIntegrator(Field<T> field, String str, int i, double d2, double d3, double[] dArr, double[] dArr2) {
        super(field, str, d2, d3, dArr, dArr2);
        this.fsal = i;
        this.c = getC();
        this.f16191a = getA();
        this.b = getB();
        this.exp = (T) field.getOne().divide(-getOrder());
        setSafety((RealFieldElement) field.getZero().add(0.9d));
        setMinReduction((RealFieldElement) field.getZero().add(0.2d));
        setMaxGrowth((RealFieldElement) field.getZero().add(10.0d));
    }
}
