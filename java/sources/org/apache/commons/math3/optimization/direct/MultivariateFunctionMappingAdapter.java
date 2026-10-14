package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Logit;
import org.apache.commons.math3.analysis.function.Sigmoid;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class MultivariateFunctionMappingAdapter implements MultivariateFunction {
    private final MultivariateFunction bounded;
    private final Mapper[] mappers;

    private static class LowerBoundMapper implements Mapper {
        private final double lower;

        LowerBoundMapper(double d2) {
            this.lower = d2;
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double boundedToUnbounded(double d2) {
            return FastMath.log(d2 - this.lower);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double unboundedToBounded(double d2) {
            return this.lower + FastMath.exp(d2);
        }
    }

    private static class LowerUpperBoundMapper implements Mapper {
        private final UnivariateFunction boundingFunction;
        private final UnivariateFunction unboundingFunction;

        LowerUpperBoundMapper(double d2, double d3) {
            this.boundingFunction = new Sigmoid(d2, d3);
            this.unboundingFunction = new Logit(d2, d3);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double boundedToUnbounded(double d2) {
            return this.unboundingFunction.value(d2);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double unboundedToBounded(double d2) {
            return this.boundingFunction.value(d2);
        }
    }

    private interface Mapper {
        double boundedToUnbounded(double d2);

        double unboundedToBounded(double d2);
    }

    private static class NoBoundsMapper implements Mapper {
        NoBoundsMapper() {
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double boundedToUnbounded(double d2) {
            return d2;
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double unboundedToBounded(double d2) {
            return d2;
        }
    }

    private static class UpperBoundMapper implements Mapper {
        private final double upper;

        UpperBoundMapper(double d2) {
            this.upper = d2;
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double boundedToUnbounded(double d2) {
            return -FastMath.log(this.upper - d2);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.Mapper
        public double unboundedToBounded(double d2) {
            return this.upper - FastMath.exp(-d2);
        }
    }

    public MultivariateFunctionMappingAdapter(MultivariateFunction multivariateFunction, double[] dArr, double[] dArr2) {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        for (int i = 0; i < dArr.length; i++) {
            if (dArr2[i] < dArr[i]) {
                throw new NumberIsTooSmallException(Double.valueOf(dArr2[i]), Double.valueOf(dArr[i]), true);
            }
        }
        this.bounded = multivariateFunction;
        this.mappers = new Mapper[dArr.length];
        for (int i2 = 0; i2 < this.mappers.length; i2++) {
            if (Double.isInfinite(dArr[i2])) {
                if (Double.isInfinite(dArr2[i2])) {
                    this.mappers[i2] = new NoBoundsMapper();
                } else {
                    this.mappers[i2] = new UpperBoundMapper(dArr2[i2]);
                }
            } else if (Double.isInfinite(dArr2[i2])) {
                this.mappers[i2] = new LowerBoundMapper(dArr[i2]);
            } else {
                this.mappers[i2] = new LowerUpperBoundMapper(dArr[i2], dArr2[i2]);
            }
        }
    }

    public double[] boundedToUnbounded(double[] dArr) {
        double[] dArr2 = new double[this.mappers.length];
        int i = 0;
        while (true) {
            Mapper[] mapperArr = this.mappers;
            if (i >= mapperArr.length) {
                return dArr2;
            }
            dArr2[i] = mapperArr[i].boundedToUnbounded(dArr[i]);
            i++;
        }
    }

    public double[] unboundedToBounded(double[] dArr) {
        double[] dArr2 = new double[this.mappers.length];
        int i = 0;
        while (true) {
            Mapper[] mapperArr = this.mappers;
            if (i >= mapperArr.length) {
                return dArr2;
            }
            dArr2[i] = mapperArr[i].unboundedToBounded(dArr[i]);
            i++;
        }
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        return this.bounded.value(unboundedToBounded(dArr));
    }
}
