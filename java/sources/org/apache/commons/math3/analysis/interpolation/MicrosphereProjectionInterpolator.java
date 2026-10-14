package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;

/* JADX INFO: loaded from: classes6.dex */
public class MicrosphereProjectionInterpolator implements MultivariateInterpolator {
    private final double exponent;
    private final InterpolatingMicrosphere microsphere;
    private final double noInterpolationTolerance;
    private final boolean sharedSphere;

    public MicrosphereProjectionInterpolator(int i, int i2, double d2, double d3, double d4, double d5, boolean z, double d6) {
        this(new InterpolatingMicrosphere(i, i2, d2, d3, d4, new UnitSphereRandomVectorGenerator(i)), d5, z, d6);
    }

    @Override // org.apache.commons.math3.analysis.interpolation.MultivariateInterpolator
    public MultivariateFunction interpolate(final double[][] dArr, final double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
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
        int dimension = this.microsphere.getDimension();
        if (dimension != dArr[0].length) {
            throw new DimensionMismatchException(dArr[0].length, dimension);
        }
        final InterpolatingMicrosphere interpolatingMicrosphereCopy = this.sharedSphere ? this.microsphere : this.microsphere.copy();
        return new MultivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.MicrosphereProjectionInterpolator.1
            @Override // org.apache.commons.math3.analysis.MultivariateFunction
            public double value(double[] dArr3) {
                return interpolatingMicrosphereCopy.value(dArr3, dArr, dArr2, MicrosphereProjectionInterpolator.this.exponent, MicrosphereProjectionInterpolator.this.noInterpolationTolerance);
            }
        };
    }

    public MicrosphereProjectionInterpolator(InterpolatingMicrosphere interpolatingMicrosphere, double d2, boolean z, double d3) throws NotPositiveException {
        if (d2 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d2));
        }
        this.microsphere = interpolatingMicrosphere;
        this.exponent = d2;
        this.sharedSphere = z;
        this.noInterpolationTolerance = d3;
    }
}
