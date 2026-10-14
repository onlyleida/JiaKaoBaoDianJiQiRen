package org.apache.commons.math3.fraction;

import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class FractionConversionException extends ConvergenceException {
    private static final long serialVersionUID = -4661812640132576263L;

    public FractionConversionException(double d2, int i) {
        super(LocalizedFormats.FAILED_FRACTION_CONVERSION, Double.valueOf(d2), Integer.valueOf(i));
    }

    public FractionConversionException(double d2, long j, long j2) {
        super(LocalizedFormats.FRACTION_CONVERSION_OVERFLOW, Double.valueOf(d2), Long.valueOf(j), Long.valueOf(j2));
    }
}
