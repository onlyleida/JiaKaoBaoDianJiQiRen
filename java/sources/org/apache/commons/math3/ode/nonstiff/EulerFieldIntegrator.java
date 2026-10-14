package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class EulerFieldIntegrator<T extends RealFieldElement<T>> extends RungeKuttaFieldIntegrator<T> {
    public EulerFieldIntegrator(Field<T> field, T t) {
        super(field, "Euler", t);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[][] getA() {
        return (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 0, 0));
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 1));
        tArr[0] = getField().getOne();
        return tArr;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.FieldButcherArrayProvider
    public T[] getC() {
        return (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaFieldIntegrator
    public EulerFieldStepInterpolator<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new EulerFieldStepInterpolator<>(getField(), z, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }
}
