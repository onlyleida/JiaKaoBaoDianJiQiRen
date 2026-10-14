package cn.mucang.android.jiakaoyi.exam.k3.helper;

/* JADX INFO: loaded from: classes2.dex */
public class DistanceLimitChecker {
    private final float limitDistance;
    private float DEFAULT_VALUE = -999999.0f;
    private float startDistance = -999999.0f;

    public DistanceLimitChecker(float f2) {
        this.limitDistance = f2;
    }

    public boolean isDeduct(float f2) {
        return f2 - this.startDistance > this.limitDistance;
    }

    public void onStart(float f2) {
        if (this.startDistance == this.DEFAULT_VALUE) {
            this.startDistance = f2;
        }
    }
}
