package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pos f5969a;
    public double b;
    public final Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pos f5970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f5971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f5972f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f5973g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f5974h = new Pos();
    private boolean i;

    public a(Pos pos, double d2, Pos pos2, Pos pos3) {
        this.f5969a = pos;
        this.b = d2;
        this.c = pos2;
        this.f5970d = pos3;
        this.f5971e = pos.vectorTo(pos2);
        this.f5972f = pos.vectorTo(pos3);
    }

    public boolean a(Pos pos, Pos pos2) {
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(this.f5969a, pos, pos2);
        double d2 = this.b;
        if (dK > d2) {
            return false;
        }
        double d3 = pos.y;
        double d4 = d3 - pos2.y;
        if (d4 == 0.0d) {
            Pos pos3 = this.f5969a;
            double d5 = pos3.x;
            double d6 = (-2.0d) * d5;
            double d7 = pos3.y;
            double d8 = (d6 * d6) - (4.0d * (((d5 * d5) + ((d3 - d7) * (d3 - d7))) - (d2 * d2)));
            if (d8 < 0.0d) {
                return false;
            }
            double dSqrt = Math.sqrt(d8);
            double d9 = (dSqrt - d6) / 2.0d;
            double d10 = pos.y;
            this.f5973g.setPos(d9, d10);
            this.f5969a.vectorTo(this.f5973g, this.f5974h);
            if (this.f5971e.cross(this.f5974h) >= 0.0d && this.f5972f.cross(this.f5974h) <= 0.0d) {
                return cn.mucang.android.jiakaoyi.hpmap.d.a.x(d9, d10, pos, pos2);
            }
            double d11 = ((-dSqrt) - d6) / 2.0d;
            double d12 = pos.y;
            this.f5973g.setPos(d11, d12);
            this.f5969a.vectorTo(this.f5973g, this.f5974h);
            return this.f5971e.cross(this.f5974h) >= 0.0d && this.f5972f.cross(this.f5974h) <= 0.0d && cn.mucang.android.jiakaoyi.hpmap.d.a.x(d11, d12, pos, pos2);
        }
        double d13 = pos.x;
        double d14 = (d13 - pos2.x) / d4;
        Pos pos4 = this.f5969a;
        double d15 = (d13 - pos4.x) - (d3 * d14);
        double d16 = (d14 * d14) + 1.0d;
        double d17 = pos4.y;
        double d18 = ((d14 * d15) - d17) * 2.0d;
        double d19 = (d18 * d18) - ((4.0d * d16) * (((d15 * d15) + (d17 * d17)) - (d2 * d2)));
        if (d19 < 0.0d) {
            return false;
        }
        double dSqrt2 = Math.sqrt(d19);
        double d20 = d16 * 2.0d;
        double d21 = (dSqrt2 - d18) / d20;
        double d22 = pos.x + ((d21 - pos.y) * d14);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.x(d22, d21, pos, pos2)) {
            this.f5973g.setPos(d22, d21);
            this.f5969a.vectorTo(this.f5973g, this.f5974h);
            double dCross = this.f5971e.cross(this.f5974h);
            double dCross2 = this.f5972f.cross(this.f5974h);
            boolean z = this.i;
            if (z && dCross >= 0.0d && dCross2 <= 0.0d) {
                return true;
            }
            if (!z && dCross <= 0.0d && dCross2 >= 0.0d) {
                return true;
            }
        }
        double d23 = ((-dSqrt2) - d18) / d20;
        double d24 = (d14 * (d23 - pos.y)) + pos.x;
        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.x(d24, d23, pos, pos2)) {
            return false;
        }
        this.f5973g.setPos(d24, d23);
        this.f5969a.vectorTo(this.f5973g, this.f5974h);
        double dCross3 = this.f5971e.cross(this.f5974h);
        double dCross4 = this.f5972f.cross(this.f5974h);
        boolean z2 = this.i;
        return (z2 && dCross3 >= 0.0d && dCross4 <= 0.0d) || (!z2 && dCross3 <= 0.0d && dCross4 >= 0.0d);
    }

    public void b(boolean z) {
        this.i = z;
    }

    public void c() {
        this.f5969a.vectorTo(this.c, this.f5971e);
        this.f5969a.vectorTo(this.f5970d, this.f5972f);
        this.b = this.c.distanceTo(this.f5969a);
    }
}
