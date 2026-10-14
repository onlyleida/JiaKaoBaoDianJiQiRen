package org.apache.commons.math3.fitting;

import org.apache.commons.math3.analysis.function.HarmonicOscillator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class HarmonicFitter extends CurveFitter<HarmonicOscillator.Parametric> {

    public static class ParameterGuesser {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final double f16183a;
        private final double omega;
        private final double phi;

        public ParameterGuesser(WeightedObservedPoint[] weightedObservedPointArr) {
            if (weightedObservedPointArr.length < 4) {
                throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(weightedObservedPointArr.length), 4, true);
            }
            WeightedObservedPoint[] weightedObservedPointArrSortObservations = sortObservations(weightedObservedPointArr);
            double[] dArrGuessAOmega = guessAOmega(weightedObservedPointArrSortObservations);
            this.f16183a = dArrGuessAOmega[0];
            this.omega = dArrGuessAOmega[1];
            this.phi = guessPhi(weightedObservedPointArrSortObservations);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x00a2  */
        /* JADX WARN: Code duplicated, block: B:18:0x00b6  */
        /* JADX WARN: Code duplicated, block: B:21:0x00c7  */
        /* JADX WARN: Code duplicated, block: B:23:0x00d1  */
        /* JADX WARN: Code duplicated, block: B:26:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:30:0x00e2  */
        /* JADX WARN: Code duplicated, block: B:35:0x00d7 A[SYNTHETIC] */
        private double[] guessAOmega(WeightedObservedPoint[] weightedObservedPointArr) {
            double x;
            double d2;
            double d3;
            int i;
            double y;
            double[] dArr = new double[2];
            double x2 = weightedObservedPointArr[0].getX();
            double y2 = weightedObservedPointArr[0].getY();
            double d4 = x2;
            double d5 = 0.0d;
            double d6 = 0.0d;
            double d7 = 0.0d;
            double d8 = 0.0d;
            double d9 = 0.0d;
            double d10 = 0.0d;
            double d11 = 0.0d;
            int i2 = 1;
            while (i2 < weightedObservedPointArr.length) {
                double x3 = weightedObservedPointArr[i2].getX();
                double y3 = weightedObservedPointArr[i2].getY();
                double d12 = x3 - d4;
                double d13 = y3 - y2;
                double d14 = ((((y2 * y2) + (y2 * y3)) + (y3 * y3)) * d12) / 3.0d;
                double d15 = x3 - x2;
                d10 += d14;
                d11 += (d13 * d13) / d12;
                d9 += d15 * d15;
                d5 += d10 * d10;
                d7 += d15 * d10;
                d6 += d15 * d11;
                d8 += d10 * d11;
                i2++;
                d4 = x3;
                y2 = y3;
            }
            double d16 = (d5 * d6) - (d7 * d8);
            double d17 = (d6 * d7) - (d8 * d9);
            double d18 = (d9 * d5) - (d7 * d7);
            double d19 = d16 / d17;
            if (d19 >= 0.0d) {
                double d20 = d17 / d18;
                if (d20 < 0.0d) {
                    x = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
                    if (x != 0.0d) {
                        throw new ZeroException();
                    }
                    dArr[1] = 6.283185307179586d / x;
                    d2 = Double.POSITIVE_INFINITY;
                    d3 = Double.NEGATIVE_INFINITY;
                    for (i = 1; i < weightedObservedPointArr.length; i++) {
                        y = weightedObservedPointArr[i].getY();
                        if (y < d2) {
                            d2 = y;
                        }
                        if (y > d3) {
                            d3 = y;
                        }
                    }
                    dArr[0] = (d3 - d2) * 0.5d;
                } else {
                    if (d17 == 0.0d) {
                        throw new MathIllegalStateException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
                    }
                    dArr[0] = FastMath.sqrt(d19);
                    dArr[1] = FastMath.sqrt(d20);
                }
            } else {
                x = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
                if (x != 0.0d) {
                    throw new ZeroException();
                }
                dArr[1] = 6.283185307179586d / x;
                d2 = Double.POSITIVE_INFINITY;
                d3 = Double.NEGATIVE_INFINITY;
                while (i < weightedObservedPointArr.length) {
                    y = weightedObservedPointArr[i].getY();
                    if (y < d2) {
                        d2 = y;
                    }
                    if (y > d3) {
                        d3 = y;
                    }
                }
                dArr[0] = (d3 - d2) * 0.5d;
            }
            return dArr;
        }

        private double guessPhi(WeightedObservedPoint[] weightedObservedPointArr) {
            double x = weightedObservedPointArr[0].getX();
            double y = weightedObservedPointArr[0].getY();
            int i = 1;
            double d2 = 0.0d;
            double d3 = 0.0d;
            while (i < weightedObservedPointArr.length) {
                double x2 = weightedObservedPointArr[i].getX();
                double y2 = weightedObservedPointArr[i].getY();
                double d4 = (y2 - y) / (x2 - x);
                double d5 = this.omega * x2;
                double dCos = FastMath.cos(d5);
                double dSin = FastMath.sin(d5);
                double d6 = this.omega;
                d3 += ((d6 * y2) * dCos) - (d4 * dSin);
                d2 += (d6 * y2 * dSin) + (d4 * dCos);
                i++;
                y = y2;
                x = x2;
            }
            return FastMath.atan2(-d2, d3);
        }

        private WeightedObservedPoint[] sortObservations(WeightedObservedPoint[] weightedObservedPointArr) {
            WeightedObservedPoint[] weightedObservedPointArr2 = (WeightedObservedPoint[]) weightedObservedPointArr.clone();
            WeightedObservedPoint weightedObservedPoint = weightedObservedPointArr2[0];
            for (int i = 1; i < weightedObservedPointArr2.length; i++) {
                WeightedObservedPoint weightedObservedPoint2 = weightedObservedPointArr2[i];
                if (weightedObservedPoint2.getX() < weightedObservedPoint.getX()) {
                    int i2 = i - 1;
                    WeightedObservedPoint weightedObservedPoint3 = weightedObservedPointArr2[i2];
                    while (i2 >= 0 && weightedObservedPoint2.getX() < weightedObservedPoint3.getX()) {
                        weightedObservedPointArr2[i2 + 1] = weightedObservedPoint3;
                        int i3 = i2 - 1;
                        if (i2 != 0) {
                            weightedObservedPoint3 = weightedObservedPointArr2[i3];
                        }
                        i2 = i3;
                    }
                    weightedObservedPointArr2[i2 + 1] = weightedObservedPoint2;
                    weightedObservedPoint = weightedObservedPointArr2[i];
                } else {
                    weightedObservedPoint = weightedObservedPoint2;
                }
            }
            return weightedObservedPointArr2;
        }

        public double[] guess() {
            return new double[]{this.f16183a, this.omega, this.phi};
        }
    }

    public HarmonicFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        super(multivariateVectorOptimizer);
    }

    public double[] fit(double[] dArr) {
        return fit(new HarmonicOscillator.Parametric(), dArr);
    }

    public double[] fit() {
        return fit(new ParameterGuesser(getObservations()).guess());
    }
}
