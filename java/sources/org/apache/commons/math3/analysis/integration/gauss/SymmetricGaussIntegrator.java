package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class SymmetricGaussIntegrator extends GaussIntegrator {
    public SymmetricGaussIntegrator(double[] dArr, double[] dArr2) throws NonMonotonicSequenceException, DimensionMismatchException {
        super(dArr, dArr2);
    }

    @Override // org.apache.commons.math3.analysis.integration.gauss.GaussIntegrator
    public double integrate(UnivariateFunction univariateFunction) {
        int numberOfPoints = getNumberOfPoints();
        int i = 0;
        if (numberOfPoints == 1) {
            return getWeight(0) * univariateFunction.value(0.0d);
        }
        int i2 = numberOfPoints / 2;
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (i < i2) {
            double point = getPoint(i);
            double weight = (getWeight(i) * (univariateFunction.value(point) + univariateFunction.value(-point))) - d2;
            double d4 = d3 + weight;
            i++;
            d2 = (d4 - d3) - weight;
            d3 = d4;
        }
        return numberOfPoints % 2 != 0 ? d3 + ((getWeight(i2) * univariateFunction.value(0.0d)) - d2) : d3;
    }

    public SymmetricGaussIntegrator(Pair<double[], double[]> pair) throws NonMonotonicSequenceException {
        this(pair.getFirst(), pair.getSecond());
    }
}
