package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class NonPositiveDefiniteMatrixException extends NumberIsTooSmallException {
    private static final long serialVersionUID = 1641613838113738061L;
    private final int index;
    private final double threshold;

    public NonPositiveDefiniteMatrixException(double d2, int i, double d3) {
        super(Double.valueOf(d2), Double.valueOf(d3), false);
        this.index = i;
        this.threshold = d3;
        ExceptionContext context = getContext();
        context.addMessage(LocalizedFormats.NOT_POSITIVE_DEFINITE_MATRIX, new Object[0]);
        context.addMessage(LocalizedFormats.ARRAY_ELEMENT, Double.valueOf(d2), Integer.valueOf(i));
    }

    public int getColumn() {
        return this.index;
    }

    public int getRow() {
        return this.index;
    }

    public double getThreshold() {
        return this.threshold;
    }
}
