package org.apache.commons.math3.ml.neuralnet.sofm;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.ml.neuralnet.sofm.util.ExponentialDecayFunction;
import org.apache.commons.math3.ml.neuralnet.sofm.util.QuasiSigmoidDecayFunction;

/* JADX INFO: loaded from: classes6.dex */
public class LearningFactorFunctionFactory {
    private LearningFactorFunctionFactory() {
    }

    public static LearningFactorFunction exponentialDecay(double d2, double d3, long j) {
        if (d2 <= 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        return new LearningFactorFunction(d2, d3, j) { // from class: org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunctionFactory.1
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

            @Override // org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunction
            public double value(long j2) {
                return this.decay.value(j2);
            }
        };
    }

    public static LearningFactorFunction quasiSigmoidDecay(double d2, double d3, long j) {
        if (d2 <= 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        return new LearningFactorFunction(d2, d3, j) { // from class: org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunctionFactory.2
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

            @Override // org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunction
            public double value(long j2) {
                return this.decay.value(j2);
            }
        };
    }
}
