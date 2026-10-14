package com.serenegiant.media;

import com.alivc.live.pusher.AlivcLivePushConstants;

/* JADX INFO: loaded from: classes6.dex */
public class VideoConfig {
    private static float BPP = 0.25f;
    public static float BPP_MAX = 0.3f;
    public static final float BPP_MIN = 0.01f;
    public static final int FPS_MAX = 121;
    public static final int FPS_MIN = 2;
    private static float IFRAME_INTERVAL = 10.0f;
    private static final int IFRAME_MAX = 30;
    private static final int IFRAME_MIN = 1;
    private static int captureFps = 15;
    public static long maxDuration = 30000;
    public static int maxRepeats = 1;
    public static long repeatInterval = 60000;
    private static float IFI = 10.0f * 30.0f;
    public static boolean sUseMediaMuxer = false;
    public static boolean sIsSurfaceCapture = false;

    public static float bpp() {
        return BPP;
    }

    public static float calcBPP(int i, int i2, int i3) {
        return calcBPP(i, i2, getCaptureFps(), i3);
    }

    public static float calcBPP(int i, int i2, int i3, int i4) {
        return i4 / ((i3 * i) * i2);
    }

    public static int calcBitrate(int i, int i2, int i3, float f2) {
        int iFloor = ((int) (Math.floor(((((f2 * i3) * i) * i2) / 1000.0f) / 100.0f) * 100.0d)) * 1000;
        if (iFloor < 200000) {
            return 200000;
        }
        return iFloor > 20000000 ? AlivcLivePushConstants.DEFAULT_UPBPS_REQUEST_FREE_DURATION : iFloor;
    }

    public static int getBitrate(int i, int i2) {
        return calcBitrate(i, i2, getCaptureFps(), BPP);
    }

    public static int getCaptureFps() {
        int i = captureFps;
        if (i > 121) {
            return 121;
        }
        if (i < 2) {
            return 2;
        }
        return i;
    }

    public static final int getIFrame() {
        float fCeil;
        int captureFps2 = getCaptureFps();
        float f2 = 1.0f;
        if (captureFps2 < 2) {
            fCeil = 1.0f;
        } else {
            try {
                fCeil = (float) Math.ceil(IFI / captureFps2);
            } catch (Exception unused) {
                fCeil = IFRAME_INTERVAL;
            }
        }
        int i = (int) fCeil;
        if (i >= 1) {
            f2 = i > 30 ? 30.0f : fCeil;
        }
        return (int) f2;
    }

    public static int getSizeRate(int i, int i2) {
        return (getBitrate(i, i2) * 60) / 8;
    }

    public static void setBPP(int i, int i2, int i3) throws IllegalArgumentException {
        setBPP(calcBPP(i, i2, i3));
    }

    public static void setCaptureFps(int i) {
        if (i > 121) {
            i = 121;
        } else if (i < 2) {
            i = 2;
        }
        captureFps = i;
    }

    public static void setIFrame(float f2) {
        IFRAME_INTERVAL = f2;
        IFI = f2 * 30.0f;
    }

    public static int getBitrate(int i, int i2, int i3) {
        return calcBitrate(i, i2, i3, BPP);
    }

    public static void setBPP(float f2) throws IllegalArgumentException {
        if (f2 < 0.01f || f2 > BPP_MAX) {
            throw new IllegalArgumentException("bpp should be within [BPP_MIN, BPP_MAX]");
        }
        BPP = f2;
    }

    public static int getBitrate(int i, int i2, int i3, float f2) {
        return calcBitrate(i, i2, i3, f2);
    }
}
