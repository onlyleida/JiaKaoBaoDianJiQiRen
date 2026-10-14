package org.apache.commons.math3.analysis;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.analysis.function.Identity;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class FunctionUtils {
    private FunctionUtils() {
    }

    public static UnivariateFunction add(final UnivariateFunction... univariateFunctionArr) {
        return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.4
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                double dValue = univariateFunctionArr[0].value(d2);
                int i = 1;
                while (true) {
                    UnivariateFunction[] univariateFunctionArr2 = univariateFunctionArr;
                    if (i >= univariateFunctionArr2.length) {
                        return dValue;
                    }
                    dValue += univariateFunctionArr2[i].value(d2);
                    i++;
                }
            }
        };
    }

    public static MultivariateFunction collector(final BivariateFunction bivariateFunction, final UnivariateFunction univariateFunction, final double d2) {
        return new MultivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.11
            @Override // org.apache.commons.math3.analysis.MultivariateFunction
            public double value(double[] dArr) {
                double dValue = bivariateFunction.value(d2, univariateFunction.value(dArr[0]));
                for (int i = 1; i < dArr.length; i++) {
                    dValue = bivariateFunction.value(dValue, univariateFunction.value(dArr[i]));
                }
                return dValue;
            }
        };
    }

    public static UnivariateFunction combine(final BivariateFunction bivariateFunction, final UnivariateFunction univariateFunction, final UnivariateFunction univariateFunction2) {
        return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.10
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                return bivariateFunction.value(univariateFunction.value(d2), univariateFunction2.value(d2));
            }
        };
    }

    public static UnivariateFunction compose(final UnivariateFunction... univariateFunctionArr) {
        return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.1
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                for (int length = univariateFunctionArr.length - 1; length >= 0; length--) {
                    d2 = univariateFunctionArr[length].value(d2);
                }
                return d2;
            }
        };
    }

    public static UnivariateFunction fix1stArgument(final BivariateFunction bivariateFunction, final double d2) {
        return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.12
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d3) {
                return bivariateFunction.value(d2, d3);
            }
        };
    }

    public static UnivariateFunction fix2ndArgument(final BivariateFunction bivariateFunction, final double d2) {
        return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.13
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d3) {
                return bivariateFunction.value(d3, d2);
            }
        };
    }

    public static UnivariateFunction multiply(final UnivariateFunction... univariateFunctionArr) {
        return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.7
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                double dValue = univariateFunctionArr[0].value(d2);
                int i = 1;
                while (true) {
                    UnivariateFunction[] univariateFunctionArr2 = univariateFunctionArr;
                    if (i >= univariateFunctionArr2.length) {
                        return dValue;
                    }
                    dValue *= univariateFunctionArr2[i].value(d2);
                    i++;
                }
            }
        };
    }

    public static double[] sample(UnivariateFunction univariateFunction, double d2, double d3, int i) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        if (d2 >= d3) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(d3), false);
        }
        double[] dArr = new double[i];
        double d4 = (d3 - d2) / ((double) i);
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = univariateFunction.value((((double) i2) * d4) + d2);
        }
        return dArr;
    }

    @Deprecated
    public static DifferentiableMultivariateFunction toDifferentiableMultivariateFunction(final MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
        return new DifferentiableMultivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.16
            @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateFunction
            public MultivariateVectorFunction gradient() {
                return new MultivariateVectorFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.16.2
                    @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
                    public double[] value(double[] dArr) {
                        int length = dArr.length;
                        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                        for (int i = 0; i < length; i++) {
                            derivativeStructureArr[i] = new DerivativeStructure(length, 1, i, dArr[i]);
                        }
                        DerivativeStructure derivativeStructureValue = multivariateDifferentiableFunction.value(derivativeStructureArr);
                        double[] dArr2 = new double[length];
                        int[] iArr = new int[length];
                        for (int i2 = 0; i2 < length; i2++) {
                            iArr[i2] = 1;
                            dArr2[i2] = derivativeStructureValue.getPartialDerivative(iArr);
                            iArr[i2] = 0;
                        }
                        return dArr2;
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateFunction
            public MultivariateFunction partialDerivative(final int i) {
                return new MultivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.16.1
                    @Override // org.apache.commons.math3.analysis.MultivariateFunction
                    public double value(double[] dArr) {
                        int length = dArr.length;
                        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                        for (int i2 = 0; i2 < length; i2++) {
                            if (i2 == i) {
                                derivativeStructureArr[i2] = new DerivativeStructure(1, 1, 0, dArr[i2]);
                            } else {
                                derivativeStructureArr[i2] = new DerivativeStructure(1, 1, dArr[i2]);
                            }
                        }
                        return multivariateDifferentiableFunction.value(derivativeStructureArr).getPartialDerivative(1);
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.MultivariateFunction
            public double value(double[] dArr) {
                return multivariateDifferentiableFunction.value(dArr);
            }
        };
    }

    @Deprecated
    public static DifferentiableMultivariateVectorFunction toDifferentiableMultivariateVectorFunction(final MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
        return new DifferentiableMultivariateVectorFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.18
            @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction
            public MultivariateMatrixFunction jacobian() {
                return new MultivariateMatrixFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.18.1
                    @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
                    public double[][] value(double[] dArr) {
                        int length = dArr.length;
                        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                        for (int i = 0; i < length; i++) {
                            derivativeStructureArr[i] = new DerivativeStructure(length, 1, i, dArr[i]);
                        }
                        DerivativeStructure[] derivativeStructureArrValue = multivariateDifferentiableVectorFunction.value(derivativeStructureArr);
                        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, derivativeStructureArrValue.length, length);
                        int[] iArr = new int[length];
                        for (int i2 = 0; i2 < derivativeStructureArrValue.length; i2++) {
                            for (int i3 = 0; i3 < length; i3++) {
                                iArr[i3] = 1;
                                dArr2[i2][i3] = derivativeStructureArrValue[i2].getPartialDerivative(iArr);
                                iArr[i3] = 0;
                            }
                        }
                        return dArr2;
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
            public double[] value(double[] dArr) {
                return multivariateDifferentiableVectorFunction.value(dArr);
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction toDifferentiableUnivariateFunction(final UnivariateDifferentiableFunction univariateDifferentiableFunction) {
        return new DifferentiableUnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.14
            @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
            public UnivariateFunction derivative() {
                return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.14.1
                    @Override // org.apache.commons.math3.analysis.UnivariateFunction
                    public double value(double d2) {
                        return univariateDifferentiableFunction.value(new DerivativeStructure(1, 1, 0, d2)).getPartialDerivative(1);
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                return univariateDifferentiableFunction.value(d2);
            }
        };
    }

    @Deprecated
    public static MultivariateDifferentiableFunction toMultivariateDifferentiableFunction(final DifferentiableMultivariateFunction differentiableMultivariateFunction) {
        return new MultivariateDifferentiableFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.17
            @Override // org.apache.commons.math3.analysis.MultivariateFunction
            public double value(double[] dArr) {
                return differentiableMultivariateFunction.value(dArr);
            }

            @Override // org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction
            public DerivativeStructure value(DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException, NumberIsTooLargeException {
                int freeParameters = derivativeStructureArr[0].getFreeParameters();
                int order = derivativeStructureArr[0].getOrder();
                int length = derivativeStructureArr.length;
                int i = 1;
                if (order > 1) {
                    throw new NumberIsTooLargeException(Integer.valueOf(order), 1, true);
                }
                for (int i2 = 0; i2 < length; i2++) {
                    if (derivativeStructureArr[i2].getFreeParameters() != freeParameters) {
                        throw new DimensionMismatchException(derivativeStructureArr[i2].getFreeParameters(), freeParameters);
                    }
                    if (derivativeStructureArr[i2].getOrder() != order) {
                        throw new DimensionMismatchException(derivativeStructureArr[i2].getOrder(), order);
                    }
                }
                double[] dArr = new double[length];
                for (int i3 = 0; i3 < length; i3++) {
                    dArr[i3] = derivativeStructureArr[i3].getValue();
                }
                double dValue = differentiableMultivariateFunction.value(dArr);
                double[] dArrValue = differentiableMultivariateFunction.gradient().value(dArr);
                double[] dArr2 = new double[freeParameters + 1];
                dArr2[0] = dValue;
                int[] iArr = new int[freeParameters];
                int i4 = 0;
                while (i4 < freeParameters) {
                    iArr[i4] = i;
                    for (int i5 = 0; i5 < length; i5++) {
                        int i6 = i4 + 1;
                        dArr2[i6] = dArr2[i6] + (dArrValue[i5] * derivativeStructureArr[i5].getPartialDerivative(iArr));
                    }
                    iArr[i4] = 0;
                    i4++;
                    i = 1;
                }
                return new DerivativeStructure(freeParameters, order, dArr2);
            }
        };
    }

    @Deprecated
    public static MultivariateDifferentiableVectorFunction toMultivariateDifferentiableVectorFunction(final DifferentiableMultivariateVectorFunction differentiableMultivariateVectorFunction) {
        return new MultivariateDifferentiableVectorFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.19
            @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
            public double[] value(double[] dArr) {
                return differentiableMultivariateVectorFunction.value(dArr);
            }

            @Override // org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction
            public DerivativeStructure[] value(DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException, NumberIsTooLargeException {
                int freeParameters = derivativeStructureArr[0].getFreeParameters();
                int order = derivativeStructureArr[0].getOrder();
                int length = derivativeStructureArr.length;
                int i = 1;
                if (order > 1) {
                    throw new NumberIsTooLargeException(Integer.valueOf(order), 1, true);
                }
                for (int i2 = 0; i2 < length; i2++) {
                    if (derivativeStructureArr[i2].getFreeParameters() != freeParameters) {
                        throw new DimensionMismatchException(derivativeStructureArr[i2].getFreeParameters(), freeParameters);
                    }
                    if (derivativeStructureArr[i2].getOrder() != order) {
                        throw new DimensionMismatchException(derivativeStructureArr[i2].getOrder(), order);
                    }
                }
                double[] dArr = new double[length];
                for (int i3 = 0; i3 < length; i3++) {
                    dArr[i3] = derivativeStructureArr[i3].getValue();
                }
                double[] dArrValue = differentiableMultivariateVectorFunction.value(dArr);
                double[][] dArrValue2 = differentiableMultivariateVectorFunction.jacobian().value(dArr);
                int length2 = dArrValue.length;
                DerivativeStructure[] derivativeStructureArr2 = new DerivativeStructure[length2];
                int i4 = 0;
                while (i4 < length2) {
                    double[] dArr2 = new double[freeParameters + 1];
                    dArr2[0] = dArrValue[i4];
                    int[] iArr = new int[freeParameters];
                    int i5 = 0;
                    while (i5 < freeParameters) {
                        iArr[i5] = i;
                        for (int i6 = 0; i6 < length; i6++) {
                            int i7 = i5 + 1;
                            dArr2[i7] = dArr2[i7] + (dArrValue2[i4][i6] * derivativeStructureArr[i6].getPartialDerivative(iArr));
                        }
                        iArr[i5] = 0;
                        i5++;
                        i = 1;
                    }
                    derivativeStructureArr2[i4] = new DerivativeStructure(freeParameters, order, dArr2);
                    i4++;
                    i = 1;
                }
                return derivativeStructureArr2;
            }
        };
    }

    @Deprecated
    public static UnivariateDifferentiableFunction toUnivariateDifferential(final DifferentiableUnivariateFunction differentiableUnivariateFunction) {
        return new UnivariateDifferentiableFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.15
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                return differentiableUnivariateFunction.value(d2);
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
            public DerivativeStructure value(DerivativeStructure derivativeStructure) throws NumberIsTooLargeException {
                int order = derivativeStructure.getOrder();
                if (order == 0) {
                    return new DerivativeStructure(derivativeStructure.getFreeParameters(), 0, differentiableUnivariateFunction.value(derivativeStructure.getValue()));
                }
                if (order != 1) {
                    throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), 1, true);
                }
                int freeParameters = derivativeStructure.getFreeParameters();
                double[] dArr = new double[freeParameters + 1];
                dArr[0] = differentiableUnivariateFunction.value(derivativeStructure.getValue());
                double dValue = differentiableUnivariateFunction.derivative().value(derivativeStructure.getValue());
                int[] iArr = new int[freeParameters];
                int i = 0;
                while (i < freeParameters) {
                    iArr[i] = 1;
                    int i2 = i + 1;
                    dArr[i2] = derivativeStructure.getPartialDerivative(iArr) * dValue;
                    iArr[i] = 0;
                    i = i2;
                }
                return new DerivativeStructure(freeParameters, 1, dArr);
            }
        };
    }

    public static UnivariateDifferentiableFunction add(final UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new UnivariateDifferentiableFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.5
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                double dValue = univariateDifferentiableFunctionArr[0].value(d2);
                int i = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i >= univariateDifferentiableFunctionArr2.length) {
                        return dValue;
                    }
                    dValue += univariateDifferentiableFunctionArr2[i].value(d2);
                    i++;
                }
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
            public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
                DerivativeStructure derivativeStructureValue = univariateDifferentiableFunctionArr[0].value(derivativeStructure);
                int i = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i >= univariateDifferentiableFunctionArr2.length) {
                        return derivativeStructureValue;
                    }
                    derivativeStructureValue = derivativeStructureValue.add(univariateDifferentiableFunctionArr2[i].value(derivativeStructure));
                    i++;
                }
            }
        };
    }

    public static MultivariateFunction collector(BivariateFunction bivariateFunction, double d2) {
        return collector(bivariateFunction, new Identity(), d2);
    }

    public static UnivariateDifferentiableFunction compose(final UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new UnivariateDifferentiableFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.2
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                for (int length = univariateDifferentiableFunctionArr.length - 1; length >= 0; length--) {
                    d2 = univariateDifferentiableFunctionArr[length].value(d2);
                }
                return d2;
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
            public DerivativeStructure value(DerivativeStructure derivativeStructure) {
                for (int length = univariateDifferentiableFunctionArr.length - 1; length >= 0; length--) {
                    derivativeStructure = univariateDifferentiableFunctionArr[length].value(derivativeStructure);
                }
                return derivativeStructure;
            }
        };
    }

    public static UnivariateDifferentiableFunction multiply(final UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new UnivariateDifferentiableFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.8
            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                double dValue = univariateDifferentiableFunctionArr[0].value(d2);
                int i = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i >= univariateDifferentiableFunctionArr2.length) {
                        return dValue;
                    }
                    dValue *= univariateDifferentiableFunctionArr2[i].value(d2);
                    i++;
                }
            }

            @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
            public DerivativeStructure value(DerivativeStructure derivativeStructure) {
                DerivativeStructure derivativeStructureValue = univariateDifferentiableFunctionArr[0].value(derivativeStructure);
                int i = 1;
                while (true) {
                    UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr2 = univariateDifferentiableFunctionArr;
                    if (i >= univariateDifferentiableFunctionArr2.length) {
                        return derivativeStructureValue;
                    }
                    derivativeStructureValue = derivativeStructureValue.multiply(univariateDifferentiableFunctionArr2[i].value(derivativeStructure));
                    i++;
                }
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction add(final DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new DifferentiableUnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.6
            @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
            public UnivariateFunction derivative() {
                return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.6.1
                    @Override // org.apache.commons.math3.analysis.UnivariateFunction
                    public double value(double d2) {
                        double dValue = differentiableUnivariateFunctionArr[0].derivative().value(d2);
                        int i = 1;
                        while (true) {
                            DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                            if (i >= differentiableUnivariateFunctionArr2.length) {
                                return dValue;
                            }
                            dValue += differentiableUnivariateFunctionArr2[i].derivative().value(d2);
                            i++;
                        }
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                double dValue = differentiableUnivariateFunctionArr[0].value(d2);
                int i = 1;
                while (true) {
                    DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                    if (i >= differentiableUnivariateFunctionArr2.length) {
                        return dValue;
                    }
                    dValue += differentiableUnivariateFunctionArr2[i].value(d2);
                    i++;
                }
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction compose(final DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new DifferentiableUnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.3
            @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
            public UnivariateFunction derivative() {
                return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.3.1
                    @Override // org.apache.commons.math3.analysis.UnivariateFunction
                    public double value(double d2) {
                        double dValue = 1.0d;
                        for (int length = differentiableUnivariateFunctionArr.length - 1; length >= 0; length--) {
                            dValue *= differentiableUnivariateFunctionArr[length].derivative().value(d2);
                            d2 = differentiableUnivariateFunctionArr[length].value(d2);
                        }
                        return dValue;
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                for (int length = differentiableUnivariateFunctionArr.length - 1; length >= 0; length--) {
                    d2 = differentiableUnivariateFunctionArr[length].value(d2);
                }
                return d2;
            }
        };
    }

    @Deprecated
    public static DifferentiableUnivariateFunction multiply(final DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new DifferentiableUnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.9
            @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
            public UnivariateFunction derivative() {
                return new UnivariateFunction() { // from class: org.apache.commons.math3.analysis.FunctionUtils.9.1
                    @Override // org.apache.commons.math3.analysis.UnivariateFunction
                    public double value(double d2) {
                        double d3 = 0.0d;
                        int i = 0;
                        while (true) {
                            DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                            if (i >= differentiableUnivariateFunctionArr2.length) {
                                return d3;
                            }
                            double dValue = differentiableUnivariateFunctionArr2[i].derivative().value(d2);
                            int i2 = 0;
                            while (true) {
                                DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr3 = differentiableUnivariateFunctionArr;
                                if (i2 < differentiableUnivariateFunctionArr3.length) {
                                    if (i != i2) {
                                        dValue *= differentiableUnivariateFunctionArr3[i2].value(d2);
                                    }
                                    i2++;
                                }
                            }
                            d3 += dValue;
                            i++;
                        }
                    }
                };
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d2) {
                double dValue = differentiableUnivariateFunctionArr[0].value(d2);
                int i = 1;
                while (true) {
                    DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = differentiableUnivariateFunctionArr;
                    if (i >= differentiableUnivariateFunctionArr2.length) {
                        return dValue;
                    }
                    dValue *= differentiableUnivariateFunctionArr2[i].value(d2);
                    i++;
                }
            }
        };
    }
}
