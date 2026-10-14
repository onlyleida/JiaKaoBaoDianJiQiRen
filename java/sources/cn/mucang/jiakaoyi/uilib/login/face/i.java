package cn.mucang.jiakaoyi.uilib.login.face;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9385a = 0;
    private final PointF b;
    private final PointF c;

    public i(double d2, double d3, double d4, double d5) {
        PointF pointF = new PointF();
        this.b = pointF;
        PointF pointF2 = new PointF();
        this.c = pointF2;
        pointF.x = (float) d2;
        pointF.y = (float) d3;
        pointF2.x = (float) d4;
        pointF2.y = (float) d5;
    }

    public static double a(double d2, double d3, double d4, double d5, double d6) {
        double d7 = 1.0d - d2;
        double d8 = d2 * d2;
        double d9 = d7 * d7;
        return (d9 * d7 * d3) + (d9 * 3.0d * d2 * d4) + (d7 * 3.0d * d8 * d5) + (d8 * d2 * d6);
    }

    public float b(float f2) {
        float f3 = f2;
        for (int i = this.f9385a; i < 4096; i++) {
            f3 = (i * 1.0f) / 4096.0f;
            if (a(f3, 0.0d, this.b.x, this.c.x, 1.0d) >= f2) {
                this.f9385a = i;
                break;
            }
        }
        double dA = a(f3, 0.0d, this.b.y, this.c.y, 1.0d);
        if (dA > 0.999d) {
            dA = 1.0d;
            this.f9385a = 0;
        }
        return (float) dA;
    }
}
