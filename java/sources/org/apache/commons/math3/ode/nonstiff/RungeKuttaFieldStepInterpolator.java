package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
abstract class RungeKuttaFieldStepInterpolator<T extends RealFieldElement<T>> extends AbstractFieldStepInterpolator<T> {
    private final Field<T> field;
    private final T[][] yDotK;

    protected RungeKuttaFieldStepInterpolator(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(z, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        this.field = field;
        this.yDotK = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(field, tArr.length, -1));
        for (int i = 0; i < tArr.length; i++) {
            ((T[][]) this.yDotK)[i] = (RealFieldElement[]) tArr[i].clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T[] combine(T[] tArr, T... tArr2) {
        for (int i = 0; i < tArr.length; i++) {
            for (int i2 = 0; i2 < tArr2.length; i2++) {
                tArr[i] = (RealFieldElement) tArr[i].add(tArr2[i2].multiply(this.yDotK[i2][i]));
            }
        }
        return tArr;
    }

    protected abstract RungeKuttaFieldStepInterpolator<T> create(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper);

    protected T[] currentStateLinearCombination(T... tArr) {
        return (T[]) combine(getCurrentState().getState(), tArr);
    }

    protected T[] derivativeLinearCombination(T... tArr) {
        return (T[]) combine((RealFieldElement[]) MathArrays.buildArray(this.field, this.yDotK[0].length), tArr);
    }

    protected final T[] previousStateLinearCombination(T... tArr) {
        return (T[]) combine(getPreviousState().getState(), tArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public RungeKuttaFieldStepInterpolator<T> create(boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return create(this.field, z, this.yDotK, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
