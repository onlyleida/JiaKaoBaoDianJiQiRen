package org.apache.commons.math3.analysis.differentiation;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateMatrixFunction;
import org.apache.commons.math3.analysis.UnivariateVectorFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class FiniteDifferencesDifferentiator implements UnivariateFunctionDifferentiator, UnivariateVectorFunctionDifferentiator, UnivariateMatrixFunctionDifferentiator, Serializable {
    private static final long serialVersionUID = 20120917;
    private final double halfSampleSpan;
    private final int nbPoints;
    private final double stepSize;
    private final double tMax;
    private final double tMin;

    public FiniteDifferencesDifferentiator(int i, double d2) throws NumberIsTooSmallException {
        this(i, d2, Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DerivativeStructure evaluate(DerivativeStructure derivativeStructure, double d2, double[] dArr) throws NumberIsTooLargeException {
        int i = this.nbPoints;
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        for (int i2 = 0; i2 < this.nbPoints; i2++) {
            dArr3[i2] = dArr[i2];
            for (int i3 = 1; i3 <= i2; i3++) {
                int i4 = i2 - i3;
                dArr3[i4] = (dArr3[i4 + 1] - dArr3[i4]) / (((double) i3) * this.stepSize);
            }
            dArr2[i2] = dArr3[0];
        }
        int order = derivativeStructure.getOrder();
        int freeParameters = derivativeStructure.getFreeParameters();
        double[] allDerivatives = derivativeStructure.getAllDerivatives();
        double value = derivativeStructure.getValue() - d2;
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(freeParameters, order, 0.0d);
        DerivativeStructure derivativeStructureMultiply = null;
        for (int i5 = 0; i5 < this.nbPoints; i5++) {
            if (i5 == 0) {
                derivativeStructureMultiply = new DerivativeStructure(freeParameters, order, 1.0d);
            } else {
                allDerivatives[0] = value - (((double) (i5 - 1)) * this.stepSize);
                derivativeStructureMultiply = derivativeStructureMultiply.multiply(new DerivativeStructure(freeParameters, order, allDerivatives));
            }
            derivativeStructure2 = derivativeStructure2.add(derivativeStructureMultiply.multiply(dArr2[i5]));
        }
        return derivativeStructure2;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateFunctionDifferentiator
    public UnivariateDifferentiableFunction differentiate(final UnivariateFunction univariateFunction) {
        return new UnivariateDifferentiableFunction() { // from class: org.apache.commons.math3.analysis.differentiation.FiniteDifferencesDifferentiator.1
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) throws MathIllegalArgumentException {
                return univariateFunction.value(d2);
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
            public DerivativeStructure value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
                if (derivativeStructure.getOrder() >= FiniteDifferencesDifferentiator.this.nbPoints) {
                    throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
                }
                double dMax = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                double[] dArr = new double[FiniteDifferencesDifferentiator.this.nbPoints];
                for (int i = 0; i < FiniteDifferencesDifferentiator.this.nbPoints; i++) {
                    dArr[i] = univariateFunction.value((((double) i) * FiniteDifferencesDifferentiator.this.stepSize) + dMax);
                }
                return FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, dMax, dArr);
            }
        };
    }

    public int getNbPoints() {
        return this.nbPoints;
    }

    public double getStepSize() {
        return this.stepSize;
    }

    public FiniteDifferencesDifferentiator(int i, double d2, double d3, double d4) throws NumberIsTooSmallException, NumberIsTooLargeException {
        if (i <= 1) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), 1, false);
        }
        this.nbPoints = i;
        if (d2 <= 0.0d) {
            throw new NotPositiveException(Double.valueOf(d2));
        }
        this.stepSize = d2;
        double d5 = d2 * 0.5d * ((double) (i - 1));
        this.halfSampleSpan = d5;
        double d6 = d4 - d3;
        if (d5 * 2.0d >= d6) {
            throw new NumberIsTooLargeException(Double.valueOf(d5 * 2.0d), Double.valueOf(d6), false);
        }
        double dUlp = FastMath.ulp(d5);
        this.tMin = d3 + d5 + dUlp;
        this.tMax = (d4 - d5) - dUlp;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateVectorFunctionDifferentiator
    public UnivariateDifferentiableVectorFunction differentiate(final UnivariateVectorFunction univariateVectorFunction) {
        return new UnivariateDifferentiableVectorFunction() { // from class: org.apache.commons.math3.analysis.differentiation.FiniteDifferencesDifferentiator.2
            @Override // org.apache.commons.math3.analysis.UnivariateVectorFunction
            public double[] value(double d2) throws MathIllegalArgumentException {
                return univariateVectorFunction.value(d2);
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableVectorFunction
            public DerivativeStructure[] value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
                if (derivativeStructure.getOrder() >= FiniteDifferencesDifferentiator.this.nbPoints) {
                    throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
                }
                double dMax = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                double[][] dArr = null;
                for (int i = 0; i < FiniteDifferencesDifferentiator.this.nbPoints; i++) {
                    double[] dArrValue = univariateVectorFunction.value((((double) i) * FiniteDifferencesDifferentiator.this.stepSize) + dMax);
                    if (i == 0) {
                        dArr = (double[][]) Array.newInstance((Class<?>) double.class, dArrValue.length, FiniteDifferencesDifferentiator.this.nbPoints);
                    }
                    for (int i2 = 0; i2 < dArrValue.length; i2++) {
                        dArr[i2][i] = dArrValue[i2];
                    }
                }
                int length = dArr.length;
                DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                for (int i3 = 0; i3 < length; i3++) {
                    derivativeStructureArr[i3] = FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, dMax, dArr[i3]);
                }
                return derivativeStructureArr;
            }
        };
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateMatrixFunctionDifferentiator
    public UnivariateDifferentiableMatrixFunction differentiate(final UnivariateMatrixFunction univariateMatrixFunction) {
        return new UnivariateDifferentiableMatrixFunction() { // from class: org.apache.commons.math3.analysis.differentiation.FiniteDifferencesDifferentiator.3
            @Override // org.apache.commons.math3.analysis.UnivariateMatrixFunction
            public double[][] value(double d2) throws MathIllegalArgumentException {
                return univariateMatrixFunction.value(d2);
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableMatrixFunction
            public DerivativeStructure[][] value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
                if (derivativeStructure.getOrder() >= FiniteDifferencesDifferentiator.this.nbPoints) {
                    throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
                }
                double dMax = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                double[][][] dArr = null;
                for (int i = 0; i < FiniteDifferencesDifferentiator.this.nbPoints; i++) {
                    double[][] dArrValue = univariateMatrixFunction.value((((double) i) * FiniteDifferencesDifferentiator.this.stepSize) + dMax);
                    if (i == 0) {
                        dArr = (double[][][]) Array.newInstance((Class<?>) double.class, dArrValue.length, dArrValue[0].length, FiniteDifferencesDifferentiator.this.nbPoints);
                    }
                    for (int i2 = 0; i2 < dArrValue.length; i2++) {
                        for (int i3 = 0; i3 < dArrValue[i2].length; i3++) {
                            dArr[i2][i3][i] = dArrValue[i2][i3];
                        }
                    }
                }
                DerivativeStructure[][] derivativeStructureArr = (DerivativeStructure[][]) Array.newInstance((Class<?>) DerivativeStructure.class, dArr.length, dArr[0].length);
                for (int i4 = 0; i4 < derivativeStructureArr.length; i4++) {
                    for (int i5 = 0; i5 < dArr[i4].length; i5++) {
                        derivativeStructureArr[i4][i5] = FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, dMax, dArr[i4][i5]);
                    }
                }
                return derivativeStructureArr;
            }
        };
    }
}
