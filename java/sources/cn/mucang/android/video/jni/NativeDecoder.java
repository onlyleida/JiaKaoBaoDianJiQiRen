package cn.mucang.android.video.jni;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public class NativeDecoder implements DecoderImpl {
    private long mPtr;

    static {
        System.loadLibrary("tnpn");
        loadClass();
    }

    public NativeDecoder() {
        nInit();
    }

    private static native void loadClass();

    @Override // cn.mucang.android.video.jni.DecoderImpl
    public native void d(byte[] bArr, int i, int i2, long j);

    @Override // cn.mucang.android.video.jni.DecoderImpl
    public native int h(byte[] bArr);

    public native void nInit();

    @Override // cn.mucang.android.video.jni.DecoderImpl
    public native int p(byte[] bArr);
}
