package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
interface BitrateAdjuster {
    int getAdjustedBitrateBps();

    int getCodecConfigFramerate();

    void reportEncodedFrame(int i);

    void setTargets(int i, int i2);
}
