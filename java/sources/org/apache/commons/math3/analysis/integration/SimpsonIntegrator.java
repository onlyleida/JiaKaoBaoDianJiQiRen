package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class SimpsonIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int SIMPSON_MAX_ITERATIONS_COUNT = 64;

    public SimpsonIntegrator(double d2, double d3, int i, int i2) throws NumberIsTooSmallException, NumberIsTooLargeException {
        super(d2, d3, i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    protected double doIntegrate() throws MaxCountExceededException {
        double d2;
        TrapezoidIntegrator trapezoidIntegrator = new TrapezoidIntegrator();
        if (getMinimalIterationCount() == 1) {
            return ((trapezoidIntegrator.stage(this, 1) * 4.0d) - trapezoidIntegrator.stage(this, 0)) / 3.0d;
        }
        double d3 = 0.0d;
        double dStage = trapezoidIntegrator.stage(this, 0);
        while (true) {
            double dStage2 = trapezoidIntegrator.stage(this, getIterations());
            incrementCount();
            d2 = ((dStage2 * 4.0d) - dStage) / 3.0d;
            if (getIterations() >= getMinimalIterationCount()) {
                double dAbs = FastMath.abs(d2 - d3);
                if (dAbs <= getRelativeAccuracy() * (FastMath.abs(d3) + FastMath.abs(d2)) * 0.5d || dAbs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            d3 = d2;
            dStage = dStage2;
        }
        return d2;
    }

    public SimpsonIntegrator(int i, int i2) throws NumberIsTooSmallException, NumberIsTooLargeException {
        super(i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    public SimpsonIntegrator() {
        super(3, 64);
    }
}
