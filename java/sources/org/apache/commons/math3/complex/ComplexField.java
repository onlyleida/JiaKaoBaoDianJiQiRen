package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* JADX INFO: loaded from: classes6.dex */
public class ComplexField implements Field<Complex>, Serializable {
    private static final long serialVersionUID = -6130362688700788798L;

    private static class LazyHolder {
        private static final ComplexField INSTANCE = new ComplexField();

        private LazyHolder() {
        }
    }

    public static ComplexField getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<Complex>> getRuntimeClass() {
        return Complex.class;
    }

    private ComplexField() {
    }

    @Override // org.apache.commons.math3.Field
    public Complex getOne() {
        return Complex.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public Complex getZero() {
        return Complex.ZERO;
    }
}
