package net.surina.soundtouch;

/* JADX INFO: loaded from: classes6.dex */
public final class SoundTouch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f16161a;

    static {
        System.loadLibrary("soundtouch");
    }

    public SoundTouch() {
        this.f16161a = 0L;
        this.f16161a = newInstance();
    }

    private final native void deleteInstance(long j);

    public static final native String getErrorString();

    public static final native String getVersionString();

    private static final native long newInstance();

    private final native int processFile(long j, String str, String str2);

    private final native void setPitchSemiTones(long j, float f2);

    private final native void setSpeed(long j, float f2);

    private final native void setTempo(long j, float f2);

    public int a(String str, String str2) {
        return processFile(this.f16161a, str, str2);
    }

    public void b(float f2) {
        setTempo(this.f16161a, f2);
    }
}
