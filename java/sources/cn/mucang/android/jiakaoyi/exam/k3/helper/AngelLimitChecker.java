package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.utils.d;

/* JADX INFO: loaded from: classes2.dex */
public class AngelLimitChecker {
    private static final int DEFAULT_ANGEL = -999999;
    private final float angelChangeScope;
    private float startAngel = -999999.0f;

    public AngelLimitChecker(float f2) {
        this.angelChangeScope = f2;
    }

    public boolean isDeduct(Float f2) {
        return Math.abs(d.a(f2.floatValue() - this.startAngel)) > this.angelChangeScope;
    }

    public void onStart(float f2) {
        if (this.startAngel == -999999.0f) {
            this.startAngel = f2;
        }
    }
}
