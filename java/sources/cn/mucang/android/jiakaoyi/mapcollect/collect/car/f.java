package cn.mucang.android.jiakaoyi.mapcollect.collect.car;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.i.a f4773a;
    private final a b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Pos f4774a;
        private final double b;
        private final double c;

        a(Pos pos, Pos pos2, Pos pos3) {
            this.f4774a = pos3;
            double dAngleTo = pos.angleTo(pos2);
            this.b = Math.sin(dAngleTo);
            this.c = Math.cos(dAngleTo);
        }

        public Pos a(Pos pos) {
            double d2 = pos.x;
            Pos pos2 = this.f4774a;
            double d3 = d2 - pos2.x;
            double d4 = pos.y - pos2.y;
            double d5 = this.c;
            double d6 = this.b;
            Pos pos3 = new Pos((d3 * d5) + (d4 * d6), ((-d3) * d6) + (d4 * d5), Math.round(pos.z * 10.0d) / 10.0d);
            pos3.x = Math.round(pos3.x * 100.0d) / 100.0d;
            pos3.y = Math.round(pos3.y * 100.0d) / 100.0d;
            return pos3;
        }

        public Pos b(Pos pos) {
            double d2 = pos.x;
            double d3 = this.c;
            double d4 = pos.y;
            double d5 = this.b;
            return new Pos((d2 * d3) - (d4 * d5), (d4 * d3) + (d2 * d5), pos.z).translate(this.f4774a);
        }
    }

    public f(Gps gps, double d2) {
        this.f4773a = new cn.mucang.android.jiakaoyi.signal.i.b(gps);
        Pos pos = new Pos(0.0d, 0.0d);
        this.b = new a(pos, new Pos(Math.cos(Math.toRadians(d2)) * 100.0d, Math.sin(Math.toRadians(d2)) * 100.0d), pos);
    }

    Gps a(Gps gps, CarSrcData carSrcData) {
        f fVar = new f(carSrcData.mainPoint, carSrcData.mainPosDegree);
        return fVar.f4773a.b(fVar.b.b(this.b.a(this.f4773a.a(gps))));
    }
}
