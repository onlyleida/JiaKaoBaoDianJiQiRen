package cn.mucang.android.voice.interaction.speex;

/* JADX INFO: loaded from: classes4.dex */
public class Speex {
    static {
        System.loadLibrary("mcSpeex");
    }

    public native int resampleDestroy();

    public native int resampleFile(String str, String str2, int i, int i2, int i3);

    public native int resampleFrame(int i, byte[] bArr, byte[] bArr2, int i2, int i3);

    public native int resampleInit(int i, int i2);

    public native int speexDestroy();

    public native int speexFft(byte[] bArr, float[] fArr);

    public native int speexInit(int i, int i2);

    public native int speexProcess(byte[] bArr, int i, int i2);
}
