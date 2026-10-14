package org.apache.commons.math3.ml.neuralnet.sofm;

import org.apache.commons.math3.ml.neuralnet.sofm.util.ExponentialDecayFunction;
import org.apache.commons.math3.ml.neuralnet.sofm.util.QuasiSigmoidDecayFunction;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class NeighbourhoodSizeFunctionFactory {
    private NeighbourhoodSizeFunctionFactory() {
    }

    public static NeighbourhoodSizeFunction exponentialDecay(double d2, double d3, long j) {
        return new NeighbourhoodSizeFunction(d2, d3, j) { // from class: org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunctionFactory.1
            private final ExponentialDecayFunction decay;
            final /* synthetic */ double val$initValue;
            final /* synthetic */ long val$numCall;
            final /* synthetic */ double val$valueAtNumCall;

            {
                this.val$initValue = d2;
                this.val$valueAtNumCall = d3;
                this.val$numCall = j;
                this.decay = new ExponentialDecayFunction(d2, d3, j);
            }

            @Override // org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunction
            public int value(long j2) {
                return (int) FastMath.rint(this.decay.value(j2));
            }
        };
    }

    public static NeighbourhoodSizeFunction quasiSigmoidDecay(double d2, double d3, long j) {
        return new NeighbourhoodSizeFunction(d2, d3, j) { // from class: org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunctionFactory.2
            private final QuasiSigmoidDecayFunction decay;
            final /* synthetic */ double val$initValue;
            final /* synthetic */ long val$numCall;
            final /* synthetic */ double val$slope;

            {
                this.val$initValue = d2;
                this.val$slope = d3;
                this.val$numCall = j;
                this.decay = new QuasiSigmoidDecayFunction(d2, d3, j);
            }

            @Override // org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunction
            public int value(long j2) {
                return (int) FastMath.rint(this.decay.value(j2));
            }
        };
    }
}
