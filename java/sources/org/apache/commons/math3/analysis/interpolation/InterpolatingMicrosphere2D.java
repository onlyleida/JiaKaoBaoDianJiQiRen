package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class InterpolatingMicrosphere2D extends InterpolatingMicrosphere {
    private static final int DIMENSION = 2;

    public InterpolatingMicrosphere2D(int i, double d2, double d3, double d4) {
        super(2, i, d2, d3, d4);
        for (int i2 = 0; i2 < i; i2++) {
            double d5 = (((double) i2) * 6.283185307179586d) / ((double) i);
            add(new double[]{FastMath.cos(d5), FastMath.sin(d5)}, false);
        }
    }

    @Override // org.apache.commons.math3.analysis.interpolation.InterpolatingMicrosphere
    public InterpolatingMicrosphere2D copy() {
        return new InterpolatingMicrosphere2D(this);
    }

    protected InterpolatingMicrosphere2D(InterpolatingMicrosphere2D interpolatingMicrosphere2D) {
        super(interpolatingMicrosphere2D);
    }
}
