package org.apache.commons.math3.stat.interval;

import com.iflytek.speech.VoiceWakeuperAidl;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class ConfidenceInterval {
    private double confidenceLevel;
    private double lowerBound;
    private double upperBound;

    public ConfidenceInterval(double d2, double d3, double d4) {
        checkParameters(d2, d3, d4);
        this.lowerBound = d2;
        this.upperBound = d3;
        this.confidenceLevel = d4;
    }

    private void checkParameters(double d2, double d3, double d4) {
        if (d2 >= d3) {
            throw new MathIllegalArgumentException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d2), Double.valueOf(d3));
        }
        if (d4 <= 0.0d || d4 >= 1.0d) {
            throw new MathIllegalArgumentException(LocalizedFormats.OUT_OF_BOUNDS_CONFIDENCE_LEVEL, Double.valueOf(d4), 0, 1);
        }
    }

    public double getConfidenceLevel() {
        return this.confidenceLevel;
    }

    public double getLowerBound() {
        return this.lowerBound;
    }

    public double getUpperBound() {
        return this.upperBound;
    }

    public String toString() {
        return "[" + this.lowerBound + VoiceWakeuperAidl.PARAMS_SEPARATE + this.upperBound + "] (confidence level:" + this.confidenceLevel + ")";
    }
}
