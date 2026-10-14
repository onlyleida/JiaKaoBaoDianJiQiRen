package cn.mucang.android.jiakaoyi.signal.communicate.utils;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5478a;
    public float b;
    public float c;

    public b(float f2, float f3, float f4, float f5) {
        float f6 = f4 * f4;
        this.c = (float) Math.atan2(((f2 * f3) + (f4 * f5)) * 2.0f, 1.0f - (((f3 * f3) + f6) * 2.0f));
        float f7 = ((f2 * f4) - (f5 * f3)) * 2.0f;
        if (Math.abs(f7) >= 1.0f) {
            this.f5478a = Math.copySign(1.57075f, f7);
        } else {
            this.f5478a = (float) Math.asin(f7);
        }
        this.b = (float) Math.atan2(((f2 * f5) + (f3 * f4)) * 2.0f, 1.0f - ((f6 + (f5 * f5)) * 2.0f));
    }

    public String toString() {
        return "EulerAngles{pitch=" + Math.toDegrees(this.f5478a) + ", yaw=" + Math.toDegrees(this.b) + ", roll=" + Math.toDegrees(this.c) + '}';
    }
}
