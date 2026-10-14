package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.complex.ComplexUtils;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class LaguerreSolver extends AbstractPolynomialSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private final ComplexSolver complexSolver;

    private class ComplexSolver {
        private ComplexSolver() {
        }

        public boolean isRoot(double d2, double d3, Complex complex) {
            if (LaguerreSolver.this.isSequence(d2, complex.getReal(), d3)) {
                return FastMath.abs(complex.getImaginary()) <= FastMath.max(LaguerreSolver.this.getRelativeAccuracy() * complex.abs(), LaguerreSolver.this.getAbsoluteAccuracy()) || complex.abs() <= LaguerreSolver.this.getFunctionValueAccuracy();
            }
            return false;
        }

        public Complex solve(Complex[] complexArr, Complex complex) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
            Complex[] complexArr2 = complexArr;
            if (complexArr2 == null) {
                throw new NullArgumentException();
            }
            int length = complexArr2.length - 1;
            if (length == 0) {
                throw new NoDataException(LocalizedFormats.POLYNOMIAL);
            }
            double absoluteAccuracy = LaguerreSolver.this.getAbsoluteAccuracy();
            double relativeAccuracy = LaguerreSolver.this.getRelativeAccuracy();
            double functionValueAccuracy = LaguerreSolver.this.getFunctionValueAccuracy();
            Complex complex2 = new Complex(length, 0.0d);
            int i = length - 1;
            Complex complex3 = new Complex(i, 0.0d);
            Complex complex4 = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
            Complex complexSubtract = complex;
            while (true) {
                Complex complexAdd = complexArr2[length];
                Complex complexAdd2 = Complex.ZERO;
                int i2 = length;
                Complex complex5 = complexAdd2;
                int i3 = i;
                while (i3 >= 0) {
                    complexAdd2 = complex5.add(complexSubtract.multiply(complexAdd2));
                    Complex complexAdd3 = complexAdd.add(complexSubtract.multiply(complex5));
                    complexAdd = complexArr2[i3].add(complexSubtract.multiply(complexAdd));
                    i3--;
                    complex5 = complexAdd3;
                }
                Complex complex6 = complex3;
                int i4 = i;
                double d2 = functionValueAccuracy;
                Complex complexMultiply = complexAdd2.multiply(new Complex(2.0d, 0.0d));
                if (complexSubtract.subtract(complex4).abs() <= FastMath.max(complexSubtract.abs() * relativeAccuracy, absoluteAccuracy) || complexAdd.abs() <= d2) {
                    return complexSubtract;
                }
                Complex complexDivide = complex5.divide(complexAdd);
                Complex complexMultiply2 = complexDivide.multiply(complexDivide);
                Complex complexSubtract2 = complex2.multiply(complexMultiply2.subtract(complexMultiply.divide(complexAdd))).subtract(complexMultiply2);
                complex3 = complex6;
                Complex complexSqrt = complex3.multiply(complexSubtract2).sqrt();
                Complex complexAdd4 = complexDivide.add(complexSqrt);
                Complex complexSubtract3 = complexDivide.subtract(complexSqrt);
                if (complexAdd4.abs() <= complexSubtract3.abs()) {
                    complexAdd4 = complexSubtract3;
                }
                if (complexAdd4.equals(new Complex(0.0d, 0.0d))) {
                    complexSubtract = complexSubtract.add(new Complex(absoluteAccuracy, absoluteAccuracy));
                    complex4 = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
                } else {
                    complex4 = complexSubtract;
                    complexSubtract = complexSubtract.subtract(complex2.divide(complexAdd4));
                }
                LaguerreSolver.this.incrementEvaluationCount();
                complexArr2 = complexArr;
                length = i2;
                i = i4;
                functionValueAccuracy = d2;
            }
        }

        public Complex[] solveAll(Complex[] complexArr, Complex complex) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
            if (complexArr == null) {
                throw new NullArgumentException();
            }
            int length = complexArr.length - 1;
            if (length == 0) {
                throw new NoDataException(LocalizedFormats.POLYNOMIAL);
            }
            Complex[] complexArr2 = new Complex[length + 1];
            for (int i = 0; i <= length; i++) {
                complexArr2[i] = complexArr[i];
            }
            Complex[] complexArr3 = new Complex[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = length - i2;
                int i4 = i3 + 1;
                Complex[] complexArr4 = new Complex[i4];
                System.arraycopy(complexArr2, 0, complexArr4, 0, i4);
                complexArr3[i2] = solve(complexArr4, complex);
                Complex complexAdd = complexArr2[i3];
                for (int i5 = i3 - 1; i5 >= 0; i5--) {
                    Complex complex2 = complexArr2[i5];
                    complexArr2[i5] = complexAdd;
                    complexAdd = complex2.add(complexAdd.multiply(complexArr3[i2]));
                }
            }
            return complexArr3;
        }
    }

    public LaguerreSolver() {
        this(1.0E-6d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double dComputeObjectiveValue = computeObjectiveValue(startValue);
        if (FastMath.abs(dComputeObjectiveValue) <= functionValueAccuracy) {
            return startValue;
        }
        double dComputeObjectiveValue2 = computeObjectiveValue(min);
        if (FastMath.abs(dComputeObjectiveValue2) <= functionValueAccuracy) {
            return min;
        }
        if (dComputeObjectiveValue * dComputeObjectiveValue2 < 0.0d) {
            return laguerre(min, startValue, dComputeObjectiveValue2, dComputeObjectiveValue);
        }
        double dComputeObjectiveValue3 = computeObjectiveValue(max);
        if (FastMath.abs(dComputeObjectiveValue3) <= functionValueAccuracy) {
            return max;
        }
        if (dComputeObjectiveValue * dComputeObjectiveValue3 < 0.0d) {
            return laguerre(startValue, max, dComputeObjectiveValue, dComputeObjectiveValue3);
        }
        throw new NoBracketingException(min, max, dComputeObjectiveValue2, dComputeObjectiveValue3);
    }

    @Deprecated
    public double laguerre(double d2, double d3, double d4, double d5) {
        Complex[] complexArrConvertToComplex = ComplexUtils.convertToComplex(getCoefficients());
        Complex complex = new Complex((d2 + d3) * 0.5d, 0.0d);
        Complex complexSolve = this.complexSolver.solve(complexArrConvertToComplex, complex);
        if (this.complexSolver.isRoot(d2, d3, complexSolve)) {
            return complexSolve.getReal();
        }
        Complex[] complexArrSolveAll = this.complexSolver.solveAll(complexArrConvertToComplex, complex);
        for (int i = 0; i < complexArrSolveAll.length; i++) {
            if (this.complexSolver.isRoot(d2, d3, complexArrSolveAll[i])) {
                return complexArrSolveAll[i].getReal();
            }
        }
        return Double.NaN;
    }

    public Complex[] solveAllComplex(double[] dArr, double d2) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        return solveAllComplex(dArr, d2, Integer.MAX_VALUE);
    }

    public Complex solveComplex(double[] dArr, double d2) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        return solveComplex(dArr, d2, Integer.MAX_VALUE);
    }

    public LaguerreSolver(double d2) {
        super(d2);
        this.complexSolver = new ComplexSolver();
    }

    public Complex[] solveAllComplex(double[] dArr, double d2, int i) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        setup(i, new PolynomialFunction(dArr), Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY, d2);
        return this.complexSolver.solveAll(ComplexUtils.convertToComplex(dArr), new Complex(d2, 0.0d));
    }

    public Complex solveComplex(double[] dArr, double d2, int i) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        setup(i, new PolynomialFunction(dArr), Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY, d2);
        return this.complexSolver.solve(ComplexUtils.convertToComplex(dArr), new Complex(d2, 0.0d));
    }

    public LaguerreSolver(double d2, double d3) {
        super(d2, d3);
        this.complexSolver = new ComplexSolver();
    }

    public LaguerreSolver(double d2, double d3, double d4) {
        super(d2, d3, d4);
        this.complexSolver = new ComplexSolver();
    }
}
