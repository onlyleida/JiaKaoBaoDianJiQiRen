package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class TrapezoidIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int TRAPEZOID_MAX_ITERATIONS_COUNT = 64;
    private double s;

    public TrapezoidIntegrator(double d2, double d3, int i, int i2) throws NumberIsTooSmallException, NumberIsTooLargeException {
        super(d2, d3, i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    protected double doIntegrate() throws MaxCountExceededException, MathIllegalArgumentException {
        double dStage;
        double dStage2 = stage(this, 0);
        incrementCount();
        while (true) {
            int iterations = getIterations();
            dStage = stage(this, iterations);
            if (iterations >= getMinimalIterationCount()) {
                double dAbs = FastMath.abs(dStage - dStage2);
                if (dAbs <= getRelativeAccuracy() * (FastMath.abs(dStage2) + FastMath.abs(dStage)) * 0.5d || dAbs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            incrementCount();
            dStage2 = dStage;
        }
        return dStage;
    }

    double stage(BaseAbstractUnivariateIntegrator baseAbstractUnivariateIntegrator, int i) throws TooManyEvaluationsException {
        if (i == 0) {
            double max = baseAbstractUnivariateIntegrator.getMax();
            double min = baseAbstractUnivariateIntegrator.getMin();
            double dComputeObjectiveValue = (max - min) * 0.5d * (baseAbstractUnivariateIntegrator.computeObjectiveValue(min) + baseAbstractUnivariateIntegrator.computeObjectiveValue(max));
            this.s = dComputeObjectiveValue;
            return dComputeObjectiveValue;
        }
        long j = 1 << (i - 1);
        double max2 = baseAbstractUnivariateIntegrator.getMax();
        double min2 = baseAbstractUnivariateIntegrator.getMin();
        double d2 = (max2 - min2) / j;
        double d3 = min2 + (d2 * 0.5d);
        double dComputeObjectiveValue2 = 0.0d;
        for (long j2 = 0; j2 < j; j2++) {
            dComputeObjectiveValue2 += baseAbstractUnivariateIntegrator.computeObjectiveValue(d3);
            d3 += d2;
        }
        double d4 = (this.s + (dComputeObjectiveValue2 * d2)) * 0.5d;
        this.s = d4;
        return d4;
    }

    public TrapezoidIntegrator(int i, int i2) throws NumberIsTooSmallException, NumberIsTooLargeException {
        super(i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    public TrapezoidIntegrator() {
        super(3, 64);
    }
}
