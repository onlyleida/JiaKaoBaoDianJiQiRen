package org.apache.commons.math3.util;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* JADX INFO: loaded from: classes6.dex */
public class BigRealField implements Field<BigReal>, Serializable {
    private static final long serialVersionUID = 4756431066541037559L;

    private static class LazyHolder {
        private static final BigRealField INSTANCE = new BigRealField();

        private LazyHolder() {
        }
    }

    public static BigRealField getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<BigReal>> getRuntimeClass() {
        return BigReal.class;
    }

    private BigRealField() {
    }

    @Override // org.apache.commons.math3.Field
    public BigReal getOne() {
        return BigReal.ONE;
    }

    @Override // org.apache.commons.math3.Field
    public BigReal getZero() {
        return BigReal.ZERO;
    }
}
