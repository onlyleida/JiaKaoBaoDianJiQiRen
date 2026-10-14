package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.AbstractFieldIntegrator;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.FirstOrderFieldDifferentialEquations;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class RungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends AbstractFieldIntegrator<T> implements FieldButcherArrayProvider<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T[][] f16194a;
    private final T[] b;
    private final T[] c;
    private final T step;

    protected RungeKuttaFieldIntegrator(Field<T> field, String str, T t) {
        super(field, str);
        this.c = getC();
        this.f16194a = getA();
        this.b = getB();
        this.step = (T) t.abs();
    }

    protected abstract RungeKuttaFieldStepInterpolator<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper);

    protected T fraction(int i, int i2) {
        return (T) ((RealFieldElement) getField().getZero().add(i)).divide(i2);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x020e A[PHI: r2
      0x020e: PHI (r2v11 long) = (r2v10 long), (r2v14 long) binds: [B:42:0x020c, B:39:0x01fb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x0210 A[PHI: r2
      0x0210: PHI (r2v13 long) = (r2v10 long), (r2v14 long) binds: [B:42:0x020c, B:39:0x01fb] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        long j;
        boolean z;
        sanityChecks(fieldODEState, t);
        RealFieldElement time = fieldODEState.getTime();
        RealFieldElement[] realFieldElementArrMapState = fieldExpandableODE.getMapper().mapState(fieldODEState);
        setStepStart(initIntegration(fieldExpandableODE, time, realFieldElementArrMapState, t));
        boolean z2 = ((RealFieldElement) t.subtract(fieldODEState.getTime())).getReal() > 0.0d;
        int length = this.c.length + 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(getField(), realFieldElementArrMapState.length);
        if (z2) {
            if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().add(this.step)).subtract(t)).getReal() >= 0.0d) {
                setStepSize((RealFieldElement) t.subtract(getStepStart().getTime()));
            } else {
                setStepSize(this.step);
            }
        } else if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().subtract(this.step)).subtract(t)).getReal() <= 0.0d) {
            setStepSize((RealFieldElement) t.subtract(getStepStart().getTime()));
        } else {
            setStepSize((RealFieldElement) this.step.negate());
        }
        setIsLastStep(false);
        while (true) {
            RealFieldElement[] realFieldElementArrMapState2 = fieldExpandableODE.getMapper().mapState(getStepStart());
            realFieldElementArr[0] = fieldExpandableODE.getMapper().mapDerivative(getStepStart());
            for (int i = 1; i < length; i++) {
                for (int i2 = 0; i2 < realFieldElementArrMapState.length; i2++) {
                    int i3 = i - 1;
                    RealFieldElement realFieldElement = (RealFieldElement) realFieldElementArr[0][i2].multiply(this.f16194a[i3][0]);
                    for (int i4 = 1; i4 < i; i4++) {
                        realFieldElement = (RealFieldElement) realFieldElement.add(realFieldElementArr[i4][i2].multiply(this.f16194a[i3][i4]));
                    }
                    realFieldElementArr2[i2] = (RealFieldElement) realFieldElementArrMapState2[i2].add(getStepSize().multiply(realFieldElement));
                }
                realFieldElementArr[i] = computeDerivatives((RealFieldElement) getStepStart().getTime().add(getStepSize().multiply(this.c[i - 1])), realFieldElementArr2);
            }
            for (int i5 = 0; i5 < realFieldElementArrMapState.length; i5++) {
                RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElementArr[0][i5].multiply(this.b[0]);
                for (int i6 = 1; i6 < length; i6++) {
                    realFieldElement2 = (RealFieldElement) realFieldElement2.add(realFieldElementArr[i6][i5].multiply(this.b[i6]));
                }
                realFieldElementArr2[i5] = (RealFieldElement) realFieldElementArrMapState2[i5].add(getStepSize().multiply(realFieldElement2));
            }
            RealFieldElement realFieldElement3 = (RealFieldElement) getStepStart().getTime().add(getStepSize());
            FieldODEStateAndDerivative<T> fieldODEStateAndDerivative = new FieldODEStateAndDerivative<>(realFieldElement3, realFieldElementArr2, computeDerivatives(realFieldElement3, realFieldElementArr2));
            System.arraycopy(realFieldElementArr2, 0, realFieldElementArrMapState2, 0, realFieldElementArrMapState.length);
            RealFieldElement[] realFieldElementArr3 = realFieldElementArr2;
            setStepStart(acceptStep(createInterpolator(z2, realFieldElementArr, getStepStart(), fieldODEStateAndDerivative, fieldExpandableODE.getMapper()), t));
            if (isLastStep()) {
                j = 0;
            } else {
                RealFieldElement realFieldElement4 = (RealFieldElement) getStepStart().getTime().add(getStepSize());
                if (z2) {
                    j = 0;
                    if (((RealFieldElement) realFieldElement4.subtract(t)).getReal() >= 0.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    j = 0;
                    if (((RealFieldElement) realFieldElement4.subtract(t)).getReal() <= 0.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    setStepSize((RealFieldElement) t.subtract(getStepStart().getTime()));
                }
            }
            if (isLastStep()) {
                FieldODEStateAndDerivative<T> stepStart = getStepStart();
                setStepStart(null);
                setStepSize(null);
                return stepStart;
            }
            realFieldElementArr2 = realFieldElementArr3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[] singleStep(FirstOrderFieldDifferentialEquations<T> firstOrderFieldDifferentialEquations, T t, T[] tArr, T t2) {
        T[] tArr2 = (T[]) ((RealFieldElement[]) tArr.clone());
        int length = this.c.length + 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) tArr.clone();
        RealFieldElement realFieldElement = (RealFieldElement) t2.subtract(t);
        char c = 0;
        realFieldElementArr[0] = firstOrderFieldDifferentialEquations.computeDerivatives(t, tArr2);
        int i = 1;
        while (i < length) {
            int i2 = 0;
            while (i2 < tArr.length) {
                int i3 = i - 1;
                RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElementArr[c][i2].multiply(this.f16194a[i3][c]);
                for (int i4 = 1; i4 < i; i4++) {
                    realFieldElement2 = (RealFieldElement) realFieldElement2.add(realFieldElementArr[i4][i2].multiply(this.f16194a[i3][i4]));
                }
                realFieldElementArr2[i2] = (RealFieldElement) tArr2[i2].add(realFieldElement.multiply(realFieldElement2));
                i2++;
                c = 0;
            }
            realFieldElementArr[i] = firstOrderFieldDifferentialEquations.computeDerivatives((RealFieldElement) t.add(realFieldElement.multiply(this.c[i - 1])), realFieldElementArr2);
            i++;
            c = 0;
        }
        for (int i5 = 0; i5 < tArr.length; i5++) {
            RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElementArr[0][i5].multiply(this.b[0]);
            for (int i6 = 1; i6 < length; i6++) {
                realFieldElement3 = (RealFieldElement) realFieldElement3.add(realFieldElementArr[i6][i5].multiply(this.b[i6]));
            }
            tArr2[i5] = (RealFieldElement) tArr2[i5].add(realFieldElement.multiply(realFieldElement3));
        }
        return tArr2;
    }
}
