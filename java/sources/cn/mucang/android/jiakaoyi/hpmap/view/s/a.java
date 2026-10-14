package cn.mucang.android.jiakaoyi.hpmap.view.s;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static float a(float f2, float f3, float f4, float f5) {
        return (float) Math.toDegrees(Math.atan2(f3 - f5, f2 - f4));
    }

    public static float b(float f2, float f3, float f4, float f5) {
        return (float) Math.sqrt(Math.pow(f4 - f2, 2.0d) + Math.pow(f5 - f3, 2.0d));
    }

    public static PointF c(float f2, float f3, float f4, float f5) {
        return new PointF((f2 + f4) * 0.5f, (f3 + f5) * 0.5f);
    }
}
