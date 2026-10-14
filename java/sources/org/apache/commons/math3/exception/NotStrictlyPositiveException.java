package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;

/* JADX INFO: loaded from: classes6.dex */
public class NotStrictlyPositiveException extends NumberIsTooSmallException {
    private static final long serialVersionUID = -7824848630829852237L;

    public NotStrictlyPositiveException(Number number) {
        super(number, MathIllegalNumberException.INTEGER_ZERO, false);
    }

    public NotStrictlyPositiveException(Localizable localizable, Number number) {
        super(localizable, number, MathIllegalNumberException.INTEGER_ZERO, false);
    }
}
