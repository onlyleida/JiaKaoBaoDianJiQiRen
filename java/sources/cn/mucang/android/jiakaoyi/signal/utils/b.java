package cn.mucang.android.jiakaoyi.signal.utils;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Pos f5828a;
    private final double b;
    private final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f5829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f5831f;

    @Deprecated
    public b(Pos pos, Pos pos2, Pos pos3) {
        this(pos, pos2, pos3, 1000.0d / pos.distanceTo(pos2), true);
    }

    public Pos a(Pos pos) {
        double d2 = pos.x;
        Pos pos2 = this.f5828a;
        double d3 = d2 - pos2.x;
        double d4 = this.f5829d;
        double d5 = d3 * d4;
        double d6 = (pos.y - pos2.y) * d4;
        double d7 = this.c;
        double d8 = this.b;
        Pos pos3 = new Pos((d6 * d8) + (d5 * d7), ((-d5) * d8) + (d6 * d7), Math.round(pos.z * 10.0d) / 10.0d);
        if (!this.f5830e) {
            pos3.y = -pos3.y;
        }
        pos3.x = Math.round(pos3.x * 100.0d) / 100.0d;
        pos3.y = Math.round(pos3.y * 100.0d) / 100.0d;
        return pos3;
    }

    public Pos b(Pos pos, Pos pos2) {
        double d2 = pos.x;
        Pos pos3 = this.f5828a;
        double d3 = d2 - pos3.x;
        double d4 = this.f5829d;
        double d5 = d3 * d4;
        double d6 = (pos.y - pos3.y) * d4;
        double d7 = this.c;
        double d8 = this.b;
        Pos pos4 = pos2.setPos((d5 * d7) + (d6 * d8), ((-d5) * d8) + (d6 * d7), Math.round(pos.z * 10.0d) / 10.0d);
        if (!this.f5830e) {
            pos4.y = -pos4.y;
        }
        pos4.x = Math.round(pos4.x * 100.0d) / 100.0d;
        pos4.y = Math.round(pos4.y * 100.0d) / 100.0d;
        return pos4;
    }

    public Pos c(Pos pos) {
        double d2 = this.f5830e ? pos.y : -pos.y;
        double d3 = pos.x;
        double d4 = this.c;
        double d5 = this.b;
        return new Pos((d3 * d4) - (d2 * d5), (d2 * d4) + (d3 * d5), pos.z).scale(1.0d / this.f5829d).translate(this.f5828a);
    }

    public b(Pos pos, Pos pos2, Pos pos3, double d2, boolean z) {
        this.f5828a = pos3;
        this.f5829d = d2;
        this.f5830e = z;
        double dAngleTo = pos.angleTo(pos2);
        this.f5831f = (180.0d * dAngleTo) / 3.141592653589793d;
        this.b = Math.sin(dAngleTo);
        this.c = Math.cos(dAngleTo);
    }

    public b(Pos pos, double d2, boolean z) {
        this.f5828a = pos;
        this.f5829d = 1.0d;
        this.f5831f = d2;
        this.f5830e = z;
        this.b = Math.sin(Math.toRadians(d2));
        this.c = Math.cos(Math.toRadians(d2));
    }
}
