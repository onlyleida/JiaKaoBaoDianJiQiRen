package org.apache.commons.math3.ml.neuralnet;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Constant;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.distribution.UniformRealDistribution;
import org.apache.commons.math3.random.RandomGenerator;

/* JADX INFO: loaded from: classes6.dex */
public class FeatureInitializerFactory {
    private FeatureInitializerFactory() {
    }

    public static FeatureInitializer function(UnivariateFunction univariateFunction, double d2, double d3) {
        return new FeatureInitializer(d2, univariateFunction, d3) { // from class: org.apache.commons.math3.ml.neuralnet.FeatureInitializerFactory.1
            private double arg;
            final /* synthetic */ UnivariateFunction val$f;
            final /* synthetic */ double val$inc;
            final /* synthetic */ double val$init;

            {
                this.val$init = d2;
                this.val$f = univariateFunction;
                this.val$inc = d3;
                this.arg = d2;
            }

            @Override // org.apache.commons.math3.ml.neuralnet.FeatureInitializer
            public double value() {
                double dValue = this.val$f.value(this.arg);
                this.arg += this.val$inc;
                return dValue;
            }
        };
    }

    public static FeatureInitializer randomize(final RealDistribution realDistribution, final FeatureInitializer featureInitializer) {
        return new FeatureInitializer() { // from class: org.apache.commons.math3.ml.neuralnet.FeatureInitializerFactory.2
            @Override // org.apache.commons.math3.ml.neuralnet.FeatureInitializer
            public double value() {
                return featureInitializer.value() + realDistribution.sample();
            }
        };
    }

    public static FeatureInitializer uniform(RandomGenerator randomGenerator, double d2, double d3) {
        return randomize(new UniformRealDistribution(randomGenerator, d2, d3), function(new Constant(0.0d), 0.0d, 0.0d));
    }

    public static FeatureInitializer uniform(double d2, double d3) {
        return randomize(new UniformRealDistribution(d2, d3), function(new Constant(0.0d), 0.0d, 0.0d));
    }
}
