package cn.mucang.android.core.jni;

/* JADX INFO: loaded from: classes.dex */
public class Riddle {
    static {
        System.loadLibrary("tnpn");
    }

    public static native void c();

    public static native byte[] d(byte[] bArr, String str);

    public static native byte[] e(byte[] bArr);

    public static native boolean isAdExpired(Object obj);

    public static native void nativeClear(String str);

    public static native void nativeFasterClear(int i, Object obj);

    public static native byte[] s(String str, String str2);
}
