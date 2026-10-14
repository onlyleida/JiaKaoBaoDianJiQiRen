package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
class DynamicBitrateAdjuster extends BaseBitrateAdjuster {
    private static final double BITRATE_ADJUSTMENT_MAX_SCALE = 4.0d;
    private static final double BITRATE_ADJUSTMENT_SEC = 3.0d;
    private static final int BITRATE_ADJUSTMENT_STEPS = 20;
    private static final double BITS_PER_BYTE = 8.0d;
    private int bitrateAdjustmentScaleExp;
    private double deviationBytes;
    private double timeSinceLastAdjustmentMs;

    DynamicBitrateAdjuster() {
    }

    private double getBitrateAdjustmentScale() {
        return Math.pow(BITRATE_ADJUSTMENT_MAX_SCALE, ((double) this.bitrateAdjustmentScaleExp) / 20.0d);
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public int getAdjustedBitrateBps() {
        return (int) (((double) this.targetBitrateBps) * getBitrateAdjustmentScale());
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void reportEncodedFrame(int i) {
        int i2 = this.targetFps;
        if (i2 == 0) {
            return;
        }
        int i3 = this.targetBitrateBps;
        double d2 = this.deviationBytes + (((double) i) - ((((double) i3) / BITS_PER_BYTE) / ((double) i2)));
        this.deviationBytes = d2;
        this.timeSinceLastAdjustmentMs += 1000.0d / ((double) i2);
        double d3 = ((double) i3) / BITS_PER_BYTE;
        double d4 = BITRATE_ADJUSTMENT_SEC * d3;
        double dMin = Math.min(d2, d4);
        this.deviationBytes = dMin;
        double dMax = Math.max(dMin, -d4);
        this.deviationBytes = dMax;
        if (this.timeSinceLastAdjustmentMs <= 3000.0d) {
            return;
        }
        if (dMax > d3) {
            int i4 = this.bitrateAdjustmentScaleExp - ((int) ((dMax / d3) + 0.5d));
            this.bitrateAdjustmentScaleExp = i4;
            this.bitrateAdjustmentScaleExp = Math.max(i4, -20);
            this.deviationBytes = d3;
        } else {
            double d5 = -d3;
            if (dMax < d5) {
                int i5 = this.bitrateAdjustmentScaleExp + ((int) (((-dMax) / d3) + 0.5d));
                this.bitrateAdjustmentScaleExp = i5;
                this.bitrateAdjustmentScaleExp = Math.min(i5, 20);
                this.deviationBytes = d5;
            }
        }
        this.timeSinceLastAdjustmentMs = 0.0d;
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void setTargets(int i, int i2) {
        int i3 = this.targetBitrateBps;
        if (i3 > 0 && i < i3) {
            this.deviationBytes = (this.deviationBytes * ((double) i)) / ((double) i3);
        }
        super.setTargets(i, i2);
    }
}
