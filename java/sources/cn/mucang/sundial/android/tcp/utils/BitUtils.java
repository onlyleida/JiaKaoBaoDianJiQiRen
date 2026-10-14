package cn.mucang.sundial.android.tcp.utils;

/* JADX INFO: loaded from: classes5.dex */
public class BitUtils {
    private BitUtils() {
    }

    public static int setBitOn(int i, int i2, boolean z) {
        return z ? i | (1 << i2) : i & (~(1 << i2));
    }
}
