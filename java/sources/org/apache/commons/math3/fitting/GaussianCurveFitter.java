package org.apache.commons.math3.fitting;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresBuilder;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class GaussianCurveFitter extends AbstractCurveFitter {
    private static final Gaussian.Parametric FUNCTION = new Gaussian.Parametric() { // from class: org.apache.commons.math3.fitting.GaussianCurveFitter.1
        @Override // org.apache.commons.math3.analysis.function.Gaussian.Parametric, org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d2, double... dArr) {
            double[] dArr2 = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY};
            try {
                return super.gradient(d2, dArr);
            } catch (NotStrictlyPositiveException unused) {
                return dArr2;
            }
        }

        @Override // org.apache.commons.math3.analysis.function.Gaussian.Parametric, org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d2, double... dArr) {
            try {
                return super.value(d2, dArr);
            } catch (NotStrictlyPositiveException unused) {
                return Double.POSITIVE_INFINITY;
            }
        }
    };
    private final double[] initialGuess;
    private final int maxIter;

    public static class ParameterGuesser {
        private final double mean;
        private final double norm;
        private final double sigma;

        public ParameterGuesser(Collection<WeightedObservedPoint> collection) {
            if (collection == null) {
                throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
            }
            if (collection.size() < 3) {
                throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), 3, true);
            }
            double[] dArrBasicGuess = basicGuess((WeightedObservedPoint[]) sortObservations(collection).toArray(new WeightedObservedPoint[0]));
            this.norm = dArrBasicGuess[0];
            this.mean = dArrBasicGuess[1];
            this.sigma = dArrBasicGuess[2];
        }

        private double[] basicGuess(WeightedObservedPoint[] weightedObservedPointArr) {
            double x;
            int iFindMaxY = findMaxY(weightedObservedPointArr);
            double y = weightedObservedPointArr[iFindMaxY].getY();
            double x2 = weightedObservedPointArr[iFindMaxY].getX();
            double d2 = y + ((x2 - y) / 2.0d);
            try {
                x = interpolateXAtY(weightedObservedPointArr, iFindMaxY, 1, d2) - interpolateXAtY(weightedObservedPointArr, iFindMaxY, -1, d2);
            } catch (OutOfRangeException unused) {
                x = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
            }
            return new double[]{y, x2, x / (FastMath.sqrt(FastMath.log(2.0d) * 2.0d) * 2.0d)};
        }

        private int findMaxY(WeightedObservedPoint[] weightedObservedPointArr) {
            int i = 0;
            for (int i2 = 1; i2 < weightedObservedPointArr.length; i2++) {
                if (weightedObservedPointArr[i2].getY() > weightedObservedPointArr[i].getY()) {
                    i = i2;
                }
            }
            return i;
        }

        private WeightedObservedPoint[] getInterpolationPointsForY(WeightedObservedPoint[] weightedObservedPointArr, int i, int i2, double d2) throws OutOfRangeException {
            WeightedObservedPoint weightedObservedPoint;
            WeightedObservedPoint weightedObservedPoint2;
            if (i2 == 0) {
                throw new ZeroException();
            }
            do {
                int i3 = i + i2;
                if (i2 < 0) {
                    if (i3 < 0) {
                        throw new OutOfRangeException(Double.valueOf(d2), Double.valueOf(Double.NEGATIVE_INFINITY), Double.valueOf(Double.POSITIVE_INFINITY));
                    }
                    weightedObservedPoint = weightedObservedPointArr[i];
                    i += i2;
                    weightedObservedPoint2 = weightedObservedPointArr[i];
                } else {
                    if (i3 >= weightedObservedPointArr.length) {
                        throw new OutOfRangeException(Double.valueOf(d2), Double.valueOf(Double.NEGATIVE_INFINITY), Double.valueOf(Double.POSITIVE_INFINITY));
                    }
                    weightedObservedPoint = weightedObservedPointArr[i];
                    i += i2;
                    weightedObservedPoint2 = weightedObservedPointArr[i];
                }
            } while (!isBetween(d2, weightedObservedPoint.getY(), weightedObservedPoint2.getY()));
            return i2 < 0 ? new WeightedObservedPoint[]{weightedObservedPoint2, weightedObservedPoint} : new WeightedObservedPoint[]{weightedObservedPoint, weightedObservedPoint2};
        }

        private double interpolateXAtY(WeightedObservedPoint[] weightedObservedPointArr, int i, int i2, double d2) throws OutOfRangeException {
            if (i2 == 0) {
                throw new ZeroException();
            }
            WeightedObservedPoint[] interpolationPointsForY = getInterpolationPointsForY(weightedObservedPointArr, i, i2, d2);
            WeightedObservedPoint weightedObservedPoint = interpolationPointsForY[0];
            WeightedObservedPoint weightedObservedPoint2 = interpolationPointsForY[1];
            if (weightedObservedPoint.getY() == d2) {
                return weightedObservedPoint.getX();
            }
            return weightedObservedPoint2.getY() == d2 ? weightedObservedPoint2.getX() : weightedObservedPoint.getX() + (((d2 - weightedObservedPoint.getY()) * (weightedObservedPoint2.getX() - weightedObservedPoint.getX())) / (weightedObservedPoint2.getY() - weightedObservedPoint.getY()));
        }

        private boolean isBetween(double d2, double d3, double d4) {
            return (d2 >= d3 && d2 <= d4) || (d2 >= d4 && d2 <= d3);
        }

        private List<WeightedObservedPoint> sortObservations(Collection<WeightedObservedPoint> collection) {
            ArrayList arrayList = new ArrayList(collection);
            Collections.sort(arrayList, new Comparator<WeightedObservedPoint>() { // from class: org.apache.commons.math3.fitting.GaussianCurveFitter.ParameterGuesser.1
                @Override // java.util.Comparator
                public int compare(WeightedObservedPoint weightedObservedPoint, WeightedObservedPoint weightedObservedPoint2) {
                    if (weightedObservedPoint == null && weightedObservedPoint2 == null) {
                        return 0;
                    }
                    if (weightedObservedPoint == null) {
                        return -1;
                    }
                    if (weightedObservedPoint2 == null) {
                        return 1;
                    }
                    int iCompare = Double.compare(weightedObservedPoint.getX(), weightedObservedPoint2.getX());
                    if (iCompare < 0) {
                        return -1;
                    }
                    if (iCompare > 0) {
                        return 1;
                    }
                    int iCompare2 = Double.compare(weightedObservedPoint.getY(), weightedObservedPoint2.getY());
                    if (iCompare2 < 0) {
                        return -1;
                    }
                    if (iCompare2 > 0) {
                        return 1;
                    }
                    int iCompare3 = Double.compare(weightedObservedPoint.getWeight(), weightedObservedPoint2.getWeight());
                    if (iCompare3 < 0) {
                        return -1;
                    }
                    return iCompare3 > 0 ? 1 : 0;
                }
            });
            return arrayList;
        }

        public double[] guess() {
            return new double[]{this.norm, this.mean, this.sigma};
        }
    }

    private GaussianCurveFitter(double[] dArr, int i) {
        this.initialGuess = dArr;
        this.maxIter = i;
    }

    public static GaussianCurveFitter create() {
        return new GaussianCurveFitter(null, Integer.MAX_VALUE);
    }

    @Override // org.apache.commons.math3.fitting.AbstractCurveFitter
    protected LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection) {
        int size = collection.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i = 0;
        for (WeightedObservedPoint weightedObservedPoint : collection) {
            dArr[i] = weightedObservedPoint.getY();
            dArr2[i] = weightedObservedPoint.getWeight();
            i++;
        }
        AbstractCurveFitter.TheoreticalValuesFunction theoreticalValuesFunction = new AbstractCurveFitter.TheoreticalValuesFunction(FUNCTION, collection);
        double[] dArrGuess = this.initialGuess;
        if (dArrGuess == null) {
            dArrGuess = new ParameterGuesser(collection).guess();
        }
        return new LeastSquaresBuilder().maxEvaluations(Integer.MAX_VALUE).maxIterations(this.maxIter).start(dArrGuess).target(dArr).weight(new DiagonalMatrix(dArr2)).model(theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian()).build();
    }

    public GaussianCurveFitter withMaxIterations(int i) {
        return new GaussianCurveFitter(this.initialGuess, i);
    }

    public GaussianCurveFitter withStartPoint(double[] dArr) {
        return new GaussianCurveFitter((double[]) dArr.clone(), this.maxIter);
    }
}
