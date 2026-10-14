package com.google.android.exoplayer2.ui;

/* JADX INFO: loaded from: classes5.dex */
final class SubtitleViewUtils {
    private SubtitleViewUtils() {
    }

    public static float resolveTextSize(int i, float f2, int i2, int i3) {
        float f3;
        if (f2 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i == 0) {
            f3 = i3;
        } else {
            if (i != 1) {
                if (i != 2) {
                    return -3.4028235E38f;
                }
                return f2;
            }
            f3 = i2;
        }
        return f2 * f3;
    }
}
