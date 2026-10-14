package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseAbstractUnivariateIntegrator implements UnivariateIntegrator {
    public static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-15d;
    public static final int DEFAULT_MAX_ITERATIONS_COUNT = Integer.MAX_VALUE;
    public static final int DEFAULT_MIN_ITERATIONS_COUNT = 3;
    public static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-6d;
    private final double absoluteAccuracy;
    private IntegerSequence.Incrementor count;
    private IntegerSequence.Incrementor evaluations;
    private UnivariateFunction function;

    @Deprecated
    protected Incrementor iterations;
    private double max;
    private double min;
    private final int minimalIterationCount;
    private final double relativeAccuracy;

    protected BaseAbstractUnivariateIntegrator(double d2, double d3, int i, int i2) throws NumberIsTooSmallException {
        this.relativeAccuracy = d2;
        this.absoluteAccuracy = d3;
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (i2 <= i) {
            throw new NumberIsTooSmallException(Integer.valueOf(i2), Integer.valueOf(i), false);
        }
        this.minimalIterationCount = i;
        IntegerSequence.Incrementor incrementorWithMaximalCount = IntegerSequence.Incrementor.create().withMaximalCount(i2);
        this.count = incrementorWithMaximalCount;
        this.iterations = Incrementor.wrap(incrementorWithMaximalCount);
        this.evaluations = IntegerSequence.Incrementor.create();
    }

    protected double computeObjectiveValue(double d2) throws TooManyEvaluationsException {
        try {
            this.evaluations.increment();
            return this.function.value(d2);
        } catch (MaxCountExceededException e2) {
            throw new TooManyEvaluationsException(e2.getMax());
        }
    }

    protected abstract double doIntegrate() throws MaxCountExceededException;

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public double getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getIterations() {
        return this.count.getCount();
    }

    protected double getMax() {
        return this.max;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getMaximalIterationCount() {
        return this.count.getMaximalCount();
    }

    protected double getMin() {
        return this.min;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getMinimalIterationCount() {
        return this.minimalIterationCount;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public double getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    protected void incrementCount() throws MaxCountExceededException {
        this.count.increment();
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public double integrate(int i, UnivariateFunction univariateFunction, double d2, double d3) throws MaxCountExceededException, MathIllegalArgumentException {
        setup(i, univariateFunction, d2, d3);
        return doIntegrate();
    }

    protected void setup(int i, UnivariateFunction univariateFunction, double d2, double d3) throws MathIllegalArgumentException {
        MathUtils.checkNotNull(univariateFunction);
        UnivariateSolverUtils.verifyInterval(d2, d3);
        this.min = d2;
        this.max = d3;
        this.function = univariateFunction;
        this.evaluations = this.evaluations.withMaximalCount(i).withStart(0);
        this.count = this.count.withStart(0);
    }

    protected BaseAbstractUnivariateIntegrator(double d2, double d3) {
        this(d2, d3, 3, Integer.MAX_VALUE);
    }

    protected BaseAbstractUnivariateIntegrator(int i, int i2) throws NumberIsTooSmallException {
        this(1.0E-6d, 1.0E-15d, i, i2);
    }
}
