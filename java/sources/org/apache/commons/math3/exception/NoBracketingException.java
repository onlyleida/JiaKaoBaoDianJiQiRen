package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class NoBracketingException extends MathIllegalArgumentException {
    private static final long serialVersionUID = -3629324471511904459L;
    private final double fHi;
    private final double fLo;
    private final double hi;
    private final double lo;

    public NoBracketingException(double d2, double d3, double d4, double d5) {
        this(LocalizedFormats.SAME_SIGN_AT_ENDPOINTS, d2, d3, d4, d5, new Object[0]);
    }

    public double getFHi() {
        return this.fHi;
    }

    public double getFLo() {
        return this.fLo;
    }

    public double getHi() {
        return this.hi;
    }

    public double getLo() {
        return this.lo;
    }

    public NoBracketingException(Localizable localizable, double d2, double d3, double d4, double d5, Object... objArr) {
        super(localizable, Double.valueOf(d2), Double.valueOf(d3), Double.valueOf(d4), Double.valueOf(d5), objArr);
        this.lo = d2;
        this.hi = d3;
        this.fLo = d4;
        this.fHi = d5;
    }
}
