package org.apache.commons.math3.ode;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class FieldODEState<T extends RealFieldElement<T>> {
    private final T[][] secondaryState;
    private final T[] state;
    private final T time;

    public FieldODEState(T t, T[] tArr) {
        this(t, tArr, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected T[][] copy(Field<T> field, T[][] tArr) {
        if (tArr == null) {
            return null;
        }
        T[][] tArr2 = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(field, tArr.length, -1));
        for (int i = 0; i < tArr.length; i++) {
            tArr2[i] = (RealFieldElement[]) tArr[i].clone();
        }
        return tArr2;
    }

    public int getNumberOfSecondaryStates() {
        T[][] tArr = this.secondaryState;
        if (tArr == null) {
            return 0;
        }
        return tArr.length;
    }

    public T[] getSecondaryState(int i) {
        return (T[]) ((RealFieldElement[]) (i == 0 ? this.state.clone() : this.secondaryState[i - 1].clone()));
    }

    public int getSecondaryStateDimension(int i) {
        return i == 0 ? this.state.length : this.secondaryState[i - 1].length;
    }

    public T[] getState() {
        return (T[]) ((RealFieldElement[]) this.state.clone());
    }

    public int getStateDimension() {
        return this.state.length;
    }

    public T getTime() {
        return this.time;
    }

    public FieldODEState(T t, T[] tArr, T[][] tArr2) {
        this.time = t;
        this.state = (T[]) ((RealFieldElement[]) tArr.clone());
        this.secondaryState = (T[][]) copy(t.getField(), tArr2);
    }
}
