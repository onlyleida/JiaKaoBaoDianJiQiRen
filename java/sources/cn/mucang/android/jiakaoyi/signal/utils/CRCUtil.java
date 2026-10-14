package cn.mucang.android.jiakaoyi.signal.utils;

/* JADX INFO: loaded from: classes3.dex */
public class CRCUtil {
    static {
        System.loadLibrary("crc-lib");
    }

    public static int a(byte[] bArr) {
        return crc(bArr, 0, bArr.length);
    }

    public static native int crc(byte[] bArr, int i, int i2);
}
