package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseAbstractUnivariateSolver<FUNC extends UnivariateFunction> implements BaseUnivariateSolver<FUNC> {
    private static final double DEFAULT_FUNCTION_VALUE_ACCURACY = 1.0E-15d;
    private static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-14d;
    private final double absoluteAccuracy;
    private IntegerSequence.Incrementor evaluations;
    private FUNC function;
    private final double functionValueAccuracy;
    private final double relativeAccuracy;
    private double searchMax;
    private double searchMin;
    private double searchStart;

    protected BaseAbstractUnivariateSolver(double d2) {
        this(DEFAULT_RELATIVE_ACCURACY, d2, 1.0E-15d);
    }

    protected double computeObjectiveValue(double d2) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.function.value(d2);
    }

    protected abstract double doSolve() throws TooManyEvaluationsException, NoBracketingException;

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getFunctionValueAccuracy() {
        return this.functionValueAccuracy;
    }

    public double getMax() {
        return this.searchMax;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double getMin() {
        return this.searchMin;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    public double getStartValue() {
        return this.searchStart;
    }

    protected void incrementEvaluationCount() throws TooManyEvaluationsException {
        try {
            this.evaluations.increment();
        } catch (MaxCountExceededException e2) {
            throw new TooManyEvaluationsException(e2.getMax());
        }
    }

    protected boolean isBracketing(double d2, double d3) {
        return UnivariateSolverUtils.isBracketing(this.function, d2, d3);
    }

    protected boolean isSequence(double d2, double d3, double d4) {
        return UnivariateSolverUtils.isSequence(d2, d3, d4);
    }

    protected void setup(int i, FUNC func, double d2, double d3, double d4) throws NullArgumentException {
        MathUtils.checkNotNull(func);
        this.searchMin = d2;
        this.searchMax = d3;
        this.searchStart = d4;
        this.function = func;
        this.evaluations = this.evaluations.withMaximalCount(i).withStart(0);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d2, double d3, double d4) throws TooManyEvaluationsException, NoBracketingException {
        setup(i, func, d2, d3, d4);
        return doSolve();
    }

    protected void verifyBracketing(double d2, double d3) throws NullArgumentException, NoBracketingException {
        UnivariateSolverUtils.verifyBracketing(this.function, d2, d3);
    }

    protected void verifyInterval(double d2, double d3) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifyInterval(d2, d3);
    }

    protected void verifySequence(double d2, double d3, double d4) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifySequence(d2, d3, d4);
    }

    protected BaseAbstractUnivariateSolver(double d2, double d3) {
        this(d2, d3, 1.0E-15d);
    }

    protected BaseAbstractUnivariateSolver(double d2, double d3, double d4) {
        this.absoluteAccuracy = d3;
        this.relativeAccuracy = d2;
        this.functionValueAccuracy = d4;
        this.evaluations = IntegerSequence.Incrementor.create();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d2, double d3) {
        return solve(i, func, d2, d3, d2 + ((d3 - d2) * 0.5d));
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d2) throws TooManyEvaluationsException, NoBracketingException {
        return solve(i, func, Double.NaN, Double.NaN, d2);
    }
}
