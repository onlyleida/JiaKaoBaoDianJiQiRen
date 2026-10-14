package com.alivc.live.pusher;

/* JADX INFO: loaded from: classes5.dex */
public class JNIUtils {
    public static int AudioChannelFromNative(int i) {
        return i == 2 ? 12 : 16;
    }

    public static int AudioChannelToNative(int i) {
        return i == 2 ? 2 : 1;
    }

    public static int AudioFormatFromNative(int i) {
        if (i == 1) {
            return 2;
        }
        if (i == 0) {
            return 3;
        }
        return i == 7 ? 4 : 2;
    }

    public static int AudioFormatToNative(int i) {
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 0;
        }
        return i == 4 ? 7 : 1;
    }

    static int VideoFormatFromNative(int i) {
        if (i == 7) {
            return 17;
        }
        if (i == 5) {
            return 35;
        }
        return i == 12 ? 40 : 17;
    }

    public static int VideoFormatToNative(int i) {
        if (i == 17) {
            return 7;
        }
        if (i == 35) {
            return 5;
        }
        if (i == 40) {
            return 12;
        }
        if (i == 842094169) {
            return 6;
        }
        if (i == 42) {
            return 4;
        }
        if (i == 41) {
            return 1;
        }
        return i == 39 ? 5 : 7;
    }
}
