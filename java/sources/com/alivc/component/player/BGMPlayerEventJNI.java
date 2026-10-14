package com.alivc.component.player;

/* JADX INFO: loaded from: classes5.dex */
public class BGMPlayerEventJNI {
    public static final int kCompleted = 6;
    public static final int kPaused = 4;
    public static final int kStarted = 3;
    public static final int kStopped = 5;
    private static long listener_handler_;

    public static long getListenerHandler() {
        return listener_handler_;
    }

    private static native boolean onAudioData(long j, byte[][] bArr, long j2, int i, int i2, int i3, int i4);

    private static native void onError(long j, int i, String str, String str2);

    public static void onErrorEvent(int i, String str, String str2) {
        long j = listener_handler_;
        if (j == 0) {
            return;
        }
        onError(j, i, str, str2);
    }

    private static native void onPlayProgress(long j, long j2, long j3);

    public static void onPlayProgressEvent(long j) {
        long j2 = listener_handler_;
        if (j2 == 0) {
            return;
        }
        onPlayProgress(j2, j, BGMPlayerJNI.getDuration());
    }

    public static boolean onRenderAudioFrameEvent(byte[][] bArr, long j, int i, int i2, int i3, int i4) {
        long j2 = listener_handler_;
        if (j2 == 0) {
            return false;
        }
        return onAudioData(j2, bArr, j, i, i2, i3, i4);
    }

    public static void onStateChangedEvent(int i) {
        long j = listener_handler_;
        if (j == 0) {
            return;
        }
        if (i == 3 || i == 4 || i == 5 || i == 6) {
            onStatusChanged(j, i);
        }
    }

    private static native void onStatusChanged(long j, int i);

    public static void setListenerHandler(long j) {
        listener_handler_ = j;
    }
}
