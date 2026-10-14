package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.integration.gauss.GaussIntegratorFactory;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class IterativeLegendreGaussIntegrator extends BaseAbstractUnivariateIntegrator {
    private static final GaussIntegratorFactory FACTORY = new GaussIntegratorFactory();
    private final int numberOfPoints;

    public IterativeLegendreGaussIntegrator(int i, double d2, double d3, int i2, int i3) throws NumberIsTooSmallException {
        super(d2, d3, i2, i3);
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(i));
        }
        this.numberOfPoints = i;
    }

    private double stage(int i) throws TooManyEvaluationsException {
        UnivariateFunction univariateFunction = new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.integration.IterativeLegendreGaussIntegrator.1
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) throws TooManyEvaluationsException, MathIllegalArgumentException {
                return IterativeLegendreGaussIntegrator.this.computeObjectiveValue(d2);
            }
        };
        double min = getMin();
        double max = (getMax() - min) / ((double) i);
        double dIntegrate = 0.0d;
        for (int i2 = 0; i2 < i; i2++) {
            double d2 = min + (((double) i2) * max);
            dIntegrate += FACTORY.legendreHighPrecision(this.numberOfPoints, d2, d2 + max).integrate(univariateFunction);
        }
        return dIntegrate;
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    protected double doIntegrate() throws MaxCountExceededException, MathIllegalArgumentException {
        double dStage = stage(1);
        int iMax = 2;
        while (true) {
            double dStage2 = stage(iMax);
            double dAbs = FastMath.abs(dStage2 - dStage);
            double dMax = FastMath.max(getAbsoluteAccuracy(), getRelativeAccuracy() * (FastMath.abs(dStage) + FastMath.abs(dStage2)) * 0.5d);
            if (getIterations() + 1 >= getMinimalIterationCount() && dAbs <= dMax) {
                return dStage2;
            }
            iMax = FastMath.max((int) (FastMath.min(4.0d, FastMath.pow(dAbs / dMax, 0.5d / ((double) this.numberOfPoints))) * ((double) iMax)), iMax + 1);
            incrementCount();
            dStage = dStage2;
        }
    }

    public IterativeLegendreGaussIntegrator(int i, double d2, double d3) throws NotStrictlyPositiveException {
        this(i, d2, d3, 3, Integer.MAX_VALUE);
    }

    public IterativeLegendreGaussIntegrator(int i, int i2, int i3) throws NumberIsTooSmallException {
        this(i, 1.0E-6d, 1.0E-15d, i2, i3);
    }
}
