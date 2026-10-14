package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class InterpolatingMicrosphere {
    private final double background;
    private final double darkThreshold;
    private final int dimension;
    private final double maxDarkFraction;
    private final List<Facet> microsphere;
    private final List<FacetData> microsphereData;
    private final int size;

    private static class Facet {
        private final double[] normal;

        Facet(double[] dArr) {
            this.normal = dArr;
        }

        public double[] getNormal() {
            return this.normal;
        }
    }

    private static class FacetData {
        private final double illumination;
        private final double sample;

        FacetData(double d2, double d3) {
            this.illumination = d2;
            this.sample = d3;
        }

        public double illumination() {
            return this.illumination;
        }

        public double sample() {
            return this.sample;
        }
    }

    protected InterpolatingMicrosphere(int i, int i2, double d2, double d3, double d4) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (i2 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i2));
        }
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d3 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d3));
        }
        this.dimension = i;
        this.size = i2;
        this.maxDarkFraction = d2;
        this.darkThreshold = d3;
        this.background = d4;
        this.microsphere = new ArrayList(i2);
        this.microsphereData = new ArrayList(i2);
    }

    private void clear() {
        for (int i = 0; i < this.size; i++) {
            this.microsphereData.set(i, new FacetData(0.0d, 0.0d));
        }
    }

    private void illuminate(double[] dArr, double d2, double d3) {
        for (int i = 0; i < this.size; i++) {
            double dCosAngle = MathArrays.cosAngle(this.microsphere.get(i).getNormal(), dArr);
            if (dCosAngle > 0.0d) {
                double d4 = dCosAngle * d3;
                if (d4 > this.darkThreshold && d4 > this.microsphereData.get(i).illumination()) {
                    this.microsphereData.set(i, new FacetData(d4, d2));
                }
            }
        }
    }

    private double interpolate() {
        int i = 0;
        double dSample = 0.0d;
        double d2 = 0.0d;
        for (FacetData facetData : this.microsphereData) {
            double dIllumination = facetData.illumination();
            if (dIllumination != 0.0d) {
                dSample += facetData.sample() * dIllumination;
                d2 += dIllumination;
            } else {
                i++;
            }
        }
        return ((double) i) / ((double) this.size) <= this.maxDarkFraction ? dSample / d2 : this.background;
    }

    protected void add(double[] dArr, boolean z) {
        if (this.microsphere.size() >= this.size) {
            throw new MaxCountExceededException(Integer.valueOf(this.size));
        }
        if (dArr.length > this.dimension) {
            throw new DimensionMismatchException(dArr.length, this.dimension);
        }
        List<Facet> list = this.microsphere;
        if (z) {
            dArr = (double[]) dArr.clone();
        }
        list.add(new Facet(dArr));
        this.microsphereData.add(new FacetData(0.0d, 0.0d));
    }

    public InterpolatingMicrosphere copy() {
        return new InterpolatingMicrosphere(this);
    }

    public int getDimension() {
        return this.dimension;
    }

    public int getSize() {
        return this.size;
    }

    public double value(double[] dArr, double[][] dArr2, double[] dArr3, double d2, double d3) {
        if (d2 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d2));
        }
        clear();
        int length = dArr2.length;
        for (int i = 0; i < length; i++) {
            double[] dArrEbeSubtract = MathArrays.ebeSubtract(dArr2[i], dArr);
            double dSafeNorm = MathArrays.safeNorm(dArrEbeSubtract);
            if (FastMath.abs(dSafeNorm) < d3) {
                return dArr3[i];
            }
            illuminate(dArrEbeSubtract, dArr3[i], FastMath.pow(dSafeNorm, -d2));
        }
        return interpolate();
    }

    public InterpolatingMicrosphere(int i, int i2, double d2, double d3, double d4, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) {
        this(i, i2, d2, d3, d4);
        for (int i3 = 0; i3 < i2; i3++) {
            add(unitSphereRandomVectorGenerator.nextVector(), false);
        }
    }

    protected InterpolatingMicrosphere(InterpolatingMicrosphere interpolatingMicrosphere) {
        this.dimension = interpolatingMicrosphere.dimension;
        int i = interpolatingMicrosphere.size;
        this.size = i;
        this.maxDarkFraction = interpolatingMicrosphere.maxDarkFraction;
        this.darkThreshold = interpolatingMicrosphere.darkThreshold;
        this.background = interpolatingMicrosphere.background;
        this.microsphere = interpolatingMicrosphere.microsphere;
        this.microsphereData = new ArrayList(i);
        for (FacetData facetData : interpolatingMicrosphere.microsphereData) {
            this.microsphereData.add(new FacetData(facetData.illumination(), facetData.sample()));
        }
    }
}
