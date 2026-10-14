package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.e.a;
import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f5991g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f5992h;
    private Line k;
    private Line l;
    private Line m;
    private Line n;
    private double o;
    private double p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f5987a = null;
    private RuntimeWheelAndR.WheelAndR b = null;
    private Pos c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f5988d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f5989e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Pos f5990f = null;
    private b i = null;
    private b j = null;
    private a q = null;

    /* JADX WARN: Code duplicated, block: B:71:0x0438  */
    public boolean a(cn.mucang.android.jiakaoyi.signal.c.e eVar, c cVar) {
        double d2;
        double d3;
        if (this.q == null) {
            this.q = new a();
        }
        a aVar = this.q;
        if (aVar != null) {
            return aVar.b(eVar, cVar);
        }
        if (this.f5987a == null) {
            Pos posMiddle = cVar.k.middle();
            this.f5987a = new b(posMiddle, Math.toDegrees(cVar.m.middle().angleTo(posMiddle)), true);
            this.c = new Pos();
            this.f5988d = new Pos();
            this.b = RuntimeWheelAndR.a(eVar.c().L);
            CarPos carPosC = eVar.c();
            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
            this.p = cVar2.f5820a.distanceTo(cVar2.f5821d) * 0.5d;
            double dDistanceTo = carPosC.rearAxlePoint.distanceTo(new Pos(carPosC.carRect.f5820a).meanWith(carPosC.carRect.f5821d));
            this.o = dDistanceTo;
            double d4 = this.b.R;
            double d5 = this.p;
            this.f5991g = Math.sqrt(((d4 + d5) * (d4 + d5)) + (dDistanceTo * dDistanceTo));
            this.f5992h = this.b.R - this.p;
            this.i = new b();
            this.j = new b();
            this.k = new Line(this.f5987a.a(cVar.n.start), this.f5987a.a(cn.mucang.android.jiakaoyi.hpmap.d.a.t(cVar.l.start, cVar.n.start, 10.0d)));
            this.l = new Line(this.f5987a.a(cn.mucang.android.jiakaoyi.hpmap.d.a.t(cVar.l.end, cVar.q.end, 10.0d)), this.f5987a.a(cVar.q.end));
            this.m = new Line(this.k.end, this.f5987a.a(cVar.m.start));
            this.n = new Line(this.f5987a.a(cVar.m.end), this.l.start);
            this.f5989e = new Pos();
            this.f5990f = new Pos();
        }
        double dMin = Math.min(this.b.R, 360.0d);
        double dC = d.c((float) ((eVar.c().degree - this.f5987a.f5831f) + 1.0E-7d));
        Pos posB = this.f5987a.b(eVar.c().rearAxlePoint, this.f5988d);
        posB.vectorTo(this.f5987a.a(eVar.c().center), this.f5989e);
        if ((Math.abs(posB.y) < 25.0d && Math.abs(dC) < 10.0d) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), cVar.n) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), cVar.q)) {
            return true;
        }
        Pos pos = new Pos();
        double radians = Math.toRadians(((double) (posB.y > 0.0d ? -90 : 90)) + dC);
        pos.setPos(posB.x + (Math.cos(radians) * dMin), posB.y + (Math.sin(radians) * dMin));
        double dMin2 = Math.min(Math.max(90.0d - Math.abs(dC), 0.0d), 30.0d);
        double d6 = dMin2 - 0.0d;
        double dMax = d6 / ((double) Math.max(1, Math.min((int) d6, 10)));
        Pos pos2 = new Pos();
        double d7 = 0.0d;
        while (true) {
            double d8 = dMin;
            this.i.f5975a.b(posB.y >= 0.0d);
            this.i.f5976d.b(posB.y >= 0.0d);
            this.j.f5975a.b(posB.y >= 0.0d);
            this.j.f5976d.b(posB.y >= 0.0d);
            double d9 = ((double) (posB.y > 0.0d ? 1 : -1)) * d7;
            double dCos = Math.cos(Math.toRadians(d9));
            double dSin = Math.sin(Math.toRadians(d9));
            Pos pos3 = pos2;
            pos2.setPos(posB).rotate(pos, dCos, dSin);
            double d10 = dMin2;
            double d11 = d9 + dC;
            double dTan = pos3.x - (pos3.y / Math.tan(Math.toRadians(d11) + 1.0E-10d));
            double d12 = dC;
            this.f5990f.setPos(dTan - posB.x, 0.0d - posB.y);
            if (this.f5990f.dot(this.f5989e) <= 0.0d) {
                double d13 = dTan - pos3.x;
                double d14 = pos3.y;
                double dSqrt = Math.sqrt((d13 * d13) + (d14 * d14));
                double dAbs = Math.abs(d8 / Math.tan(Math.toRadians((180.0d - Math.abs(d11)) * 0.5d)));
                double d15 = dSqrt - dAbs;
                d2 = dMax;
                double dAbs2 = 30.0d / (Math.abs(Math.cos(Math.toRadians(90.0d - Math.abs(d11)))) + 1.0E-10d);
                double d16 = dTan - dAbs;
                if (d16 >= -15.0d && d15 > (-dAbs2)) {
                    break;
                }
                double d17 = this.o;
                if (d16 >= (-d17) && d15 >= (-dAbs2) * 1.5d && dTan > (-d17)) {
                    this.i.f5975a.f5969a.setPos(pos);
                    this.f5987a.b(eVar.c().carRect.f5820a, this.i.f5975a.c);
                    a aVar2 = this.i.f5975a;
                    aVar2.f5970d.setPos(aVar2.c).rotate(pos, dCos, dSin);
                    this.j.f5975a.f5969a.setPos(pos);
                    this.f5987a.b(eVar.c().carRect.f5821d, this.j.f5975a.c);
                    a aVar3 = this.j.f5975a;
                    aVar3.f5970d.setPos(aVar3.c).rotate(pos, dCos, dSin);
                    d3 = d8;
                    this.i.f5976d.f5969a.setPos(d16, posB.y > 0.0d ? d3 : -d3);
                    this.j.f5976d.f5969a.setPos(this.i.f5976d.f5969a);
                    this.i.f5976d.c.setPos(d16, this.p);
                    this.j.f5976d.c.setPos(d16, -this.p);
                    double dCos2 = Math.cos(Math.toRadians(d11));
                    double dSin2 = Math.sin(Math.toRadians(d11));
                    a aVar4 = this.i.f5976d;
                    aVar4.f5970d.setPos(aVar4.c).rotate(this.i.f5976d.f5969a, dCos2, dSin2);
                    a aVar5 = this.j.f5976d;
                    aVar5.f5970d.setPos(aVar5.c).rotate(this.j.f5976d.f5969a, dCos2, dSin2);
                    b bVar = this.i;
                    if (Math.abs(bVar.f5975a.f5970d.y - bVar.f5976d.f5970d.y) <= 40.0d) {
                        this.i.f5975a.c();
                        this.j.f5975a.c();
                        this.i.f5976d.c();
                        this.j.f5976d.c();
                        b bVar2 = this.i;
                        bVar2.b.setPos(bVar2.f5975a.f5970d);
                        b bVar3 = this.i;
                        bVar3.c.setPos(bVar3.f5976d.f5970d);
                        b bVar4 = this.j;
                        bVar4.b.setPos(bVar4.f5975a.f5970d);
                        b bVar5 = this.j;
                        bVar5.c.setPos(bVar5.f5976d.f5970d);
                        if (!this.i.a(this.k)) {
                            break;
                            break;
                        }
                    } else {
                        a aVar6 = this.i.f5976d;
                        Pos posVectorTo = aVar6.c.vectorTo(aVar6.f5970d, this.f5989e);
                        b bVar6 = this.i;
                        if (posVectorTo.dot(bVar6.f5976d.f5970d.vectorTo(bVar6.f5975a.f5970d, this.f5990f)) >= 0.0d) {
                            this.i.f5975a.c();
                            this.j.f5975a.c();
                            this.i.f5976d.c();
                            this.j.f5976d.c();
                            b bVar7 = this.i;
                            bVar7.b.setPos(bVar7.f5975a.f5970d);
                            b bVar8 = this.i;
                            bVar8.c.setPos(bVar8.f5976d.f5970d);
                            b bVar9 = this.j;
                            bVar9.b.setPos(bVar9.f5975a.f5970d);
                            b bVar10 = this.j;
                            bVar10.c.setPos(bVar10.f5976d.f5970d);
                            if (!this.i.a(this.k) && !this.i.a(this.l) && !this.i.a(this.m) && !this.i.a(this.n) && !this.j.a(this.k) && !this.j.a(this.l) && !this.j.a(this.m) && !this.j.a(this.n)) {
                                break;
                            }
                        }
                    }
                } else {
                    d3 = d8;
                }
                d7 += d2;
            } else {
                d7 += dMax;
                d2 = dMax;
                d3 = d8;
            }
            if (d7 >= d10) {
                return false;
            }
            dMin = d3;
            dMin2 = d10;
            dC = d12;
            dMax = d2;
            pos2 = pos3;
        }
        return true;
    }
}
