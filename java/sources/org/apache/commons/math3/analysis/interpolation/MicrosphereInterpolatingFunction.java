package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class MicrosphereInterpolatingFunction implements MultivariateFunction {
    private final double brightnessExponent;
    private final int dimension;
    private final List<MicrosphereSurfaceElement> microsphere;
    private final Map<RealVector, Double> samples;

    private static class MicrosphereSurfaceElement {
        private double brightestIllumination;
        private Map.Entry<RealVector, Double> brightestSample;
        private final RealVector normal;

        MicrosphereSurfaceElement(double[] dArr) {
            this.normal = new ArrayRealVector(dArr);
        }

        double illumination() {
            return this.brightestIllumination;
        }

        RealVector normal() {
            return this.normal;
        }

        void reset() {
            this.brightestIllumination = 0.0d;
            this.brightestSample = null;
        }

        Map.Entry<RealVector, Double> sample() {
            return this.brightestSample;
        }

        void store(double d2, Map.Entry<RealVector, Double> entry) {
            if (d2 > this.brightestIllumination) {
                this.brightestIllumination = d2;
                this.brightestSample = entry;
            }
        }
    }

    public MicrosphereInterpolatingFunction(double[][] dArr, double[] dArr2, int i, int i2, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) throws NullArgumentException, NoDataException, DimensionMismatchException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr[0] == null) {
            throw new NullArgumentException();
        }
        this.dimension = dArr[0].length;
        this.brightnessExponent = i;
        this.samples = new HashMap(dArr2.length);
        for (int i3 = 0; i3 < dArr.length; i3++) {
            double[] dArr3 = dArr[i3];
            if (dArr3 == null) {
                throw new NullArgumentException();
            }
            if (dArr3.length != this.dimension) {
                throw new DimensionMismatchException(dArr3.length, this.dimension);
            }
            this.samples.put(new ArrayRealVector(dArr3), Double.valueOf(dArr2[i3]));
        }
        this.microsphere = new ArrayList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            this.microsphere.add(new MicrosphereSurfaceElement(unitSphereRandomVectorGenerator.nextVector()));
        }
    }

    private double cosAngle(RealVector realVector, RealVector realVector2) {
        return realVector.dotProduct(realVector2) / (realVector.getNorm() * realVector2.getNorm());
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) throws DimensionMismatchException {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        Iterator<MicrosphereSurfaceElement> it = this.microsphere.iterator();
        while (it.hasNext()) {
            it.next().reset();
        }
        for (Map.Entry<RealVector, Double> entry : this.samples.entrySet()) {
            RealVector realVectorSubtract = entry.getKey().subtract(arrayRealVector);
            double norm = realVectorSubtract.getNorm();
            if (FastMath.abs(norm) < FastMath.ulp(1.0d)) {
                return entry.getValue().doubleValue();
            }
            for (MicrosphereSurfaceElement microsphereSurfaceElement : this.microsphere) {
                microsphereSurfaceElement.store(cosAngle(realVectorSubtract, microsphereSurfaceElement.normal()) * FastMath.pow(norm, -this.brightnessExponent), entry);
            }
        }
        double dDoubleValue = 0.0d;
        double d2 = 0.0d;
        for (MicrosphereSurfaceElement microsphereSurfaceElement2 : this.microsphere) {
            double dIllumination = microsphereSurfaceElement2.illumination();
            Map.Entry<RealVector, Double> entrySample = microsphereSurfaceElement2.sample();
            if (entrySample != null) {
                dDoubleValue += entrySample.getValue().doubleValue() * dIllumination;
                d2 += dIllumination;
            }
        }
        return dDoubleValue / d2;
    }
}
