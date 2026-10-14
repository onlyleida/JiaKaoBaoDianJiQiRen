package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.e;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private double b;
    private double k;
    private double l;
    private double m;
    private double n;
    private double o;
    private double p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f8071a = null;
    private Line q = null;
    private Line r = null;
    private cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b s = null;
    private cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b t = null;
    private final Pos u = new Pos();
    private final Pos v = new Pos();
    private final Pos c = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f8072d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f8073e = new Pos();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f8074f = new Pos();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f8075g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f8076h = new Pos();
    private final Pos i = new Pos();
    private final Pos j = new Pos();

    private b c(e eVar, c cVar, double d2) {
        this.k = d(eVar, cVar, d2);
        Pos posMiddle = cVar.l.middle();
        Pos posMiddle2 = cVar.m.middle();
        double dAngleTo = posMiddle2.angleTo(posMiddle);
        this.q = new Line(new Pos(this.k, -this.m), new Pos(this.k - 500.0d, -this.m));
        this.r = new Line(new Pos(this.k, this.m), new Pos(this.k - 500.0d, this.m));
        this.s = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b();
        this.t = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b();
        CarPos carPosC = eVar.c();
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
        double dDistanceTo = cVar2.f5820a.distanceTo(cVar2.f5821d) * 0.5d;
        double dDistanceTo2 = carPosC.rearAxlePoint.distanceTo(new Pos(carPosC.carRect.f5820a).meanWith(carPosC.carRect.f5821d));
        double d3 = d2 + dDistanceTo;
        this.o = Math.sqrt((d3 * d3) + (dDistanceTo2 * dDistanceTo2));
        this.p = d2 - dDistanceTo;
        f.o("往库位深入:" + this.k + "厘米 , R:" + d2 + " , 左右间隙:" + this.l + " , halfKuWei:" + this.m + " , halfCar:" + this.n);
        return new b(cn.mucang.android.jiakaoyi.hpmap.d.a.t(posMiddle, posMiddle2, this.k), Math.toDegrees(dAngleTo), true);
    }

    private double d(e eVar, c cVar, double d2) {
        CarPos carPosC = eVar.c();
        Line line = cVar.k;
        this.m = (line.start.distanceTo(line.end) * 0.5d) + 15.0d;
        double dDistanceTo = carPosC.wheelLeftBack.distanceTo(carPosC.wheelRightBack) * 0.5d;
        this.n = dDistanceTo;
        this.l = Math.max(25.0d, this.m - dDistanceTo);
        double d3 = d2 - this.n;
        double d4 = d2 - this.m;
        return Math.sqrt((d3 * d3) - (d4 * d4));
    }

    private boolean e(double d2) {
        this.u.setPos(this.i).move(this.b, Math.toRadians(((double) (d2 > 0.0d ? 90 : -90)) + d2));
        double d3 = -d2;
        this.v.setPos(this.i).rotate(this.u, Math.cos(Math.toRadians(d3)), Math.sin(Math.toRadians(d3)));
        Pos pos = this.v;
        if (pos.x >= 80.0d && Math.abs(pos.y) < this.l * 0.95d) {
            return true;
        }
        double d4 = (-this.l) * 0.85d * ((double) cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(this.i.y));
        Pos pos2 = this.v;
        double d5 = pos2.x;
        if (d5 > this.k - 50.0d) {
            double d6 = pos2.y;
            if (d6 * (d6 - d4) <= 0.0d) {
                return true;
            }
        }
        Pos pos3 = d2 < 0.0d ? this.q.start : this.r.start;
        if (d5 > 0.0d && Math.abs(pos2.y) < this.l) {
            double dDistanceSquare = this.u.distanceSquare(pos3);
            double d7 = this.b;
            double d8 = this.n;
            return dDistanceSquare <= (d7 - d8) * (d7 - d8);
        }
        double[] dArr = {d4, 0.0d};
        Pos pos4 = this.v;
        if (pos4.x > this.k - 50.0d && Math.abs(pos4.y) < this.l + 10.0d) {
            for (int i = 0; i < 2; i++) {
                double dAbs = Math.abs(dArr[i] - this.v.y);
                double d9 = this.b;
                double d10 = 1.0d - (dAbs / (d9 * 2.0d));
                if (d10 <= 1.0d && d10 >= 0.0d && d9 * 2.0d * Math.sqrt(1.0d - (d10 * d10)) <= this.v.x + 40.0d) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean a(e eVar, c cVar, b bVar, double d2) {
        boolean z;
        double dTan;
        bVar.b(eVar.c().rearAxlePoint, this.i);
        double dC = d.c((float) (eVar.c().degree - bVar.f5831f));
        if ((Math.abs(this.i.y) < this.l && Math.abs(dC) < 15.0d) || this.i.x <= this.k * 0.9d) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = eVar.c().carRect;
        Line line = cVar.l;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar2, line.start, line.end)) {
            return true;
        }
        this.j.setPos(Math.cos(Math.toRadians(dC)), Math.sin(Math.toRadians(dC)));
        double radians = Math.toRadians(dC + 90.0d);
        double radians2 = Math.toRadians(dC - 90.0d);
        double dSin = this.i.y + (Math.sin(radians) * d2);
        double dSin2 = this.i.y + (Math.sin(radians2) * d2);
        if (Math.abs(dSin) < Math.abs(dSin2)) {
            z = true;
        } else {
            radians = radians2;
            dSin = dSin2;
            z = false;
        }
        this.c.setPos(this.i.x + (Math.cos(radians) * d2), dSin);
        double d3 = -dC;
        this.f8072d.setPos(this.i).rotate(this.c, Math.cos(Math.toRadians(d3)), Math.sin(Math.toRadians(d3)));
        if (Math.abs(dC) <= 90.0d) {
            double d4 = (d2 * 2.0d) - 1.0d;
            if (Math.abs(this.f8072d.y) >= d4 && this.f8072d.x >= d4) {
                return true;
            }
        }
        Pos pos = this.f8073e;
        Pos pos2 = this.i;
        pos.setPos(pos2.x - (pos2.y / Math.tan(Math.toRadians(1.0E-7d + dC))), 0.0d);
        if (this.i.vectorTo(this.f8073e).dot(this.j) < 0.0d) {
            dTan = d2 / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(dC)))) * 0.5d));
            if (dTan < 0.0d) {
                dTan = -dTan;
            }
            Pos pos3 = this.f8073e;
            if ((pos3.x - dTan > -15.0d && this.i.distanceSquare(pos3) - (dTan * dTan) >= -2500.0d) || e(dC)) {
                return true;
            }
        } else {
            dTan = 0.0d;
        }
        Pos pos4 = this.f8074f;
        double d5 = this.f8072d.y * 0.5d;
        pos4.y = d5;
        Pos pos5 = this.c;
        double d6 = pos5.x;
        double d7 = (-2.0d) * d6;
        double d8 = pos5.y;
        double d9 = (d7 * d7) - (4.0d * (((d6 * d6) + ((d5 - d8) * (d5 - d8))) - (d2 * d2)));
        boolean z2 = z;
        if (d9 < 0.0d) {
            f.o("和x轴交点坐标:" + this.f8073e + ",距离:" + dTan + ",当前点坐标:" + this.i + ",当前角度:" + dC + ",R:" + d2);
            f.o("后退入库：不可倒库1");
            return false;
        }
        double dSqrt = Math.sqrt(d9);
        double d10 = -d7;
        double d11 = (d10 + dSqrt) / 2.0d;
        double d12 = (d10 - dSqrt) / 2.0d;
        if (d11 <= this.f8072d.x) {
            this.f8074f.x = d11;
        } else {
            this.f8074f.x = d12;
        }
        Pos pos6 = this.f8076h;
        Pos pos7 = this.f8074f;
        double d13 = pos7.x * 2.0d;
        Pos pos8 = this.c;
        double d14 = d13 - pos8.x;
        pos6.x = d14;
        pos6.y = (pos7.y * 2.0d) - pos8.y;
        Pos pos9 = this.f8075g;
        pos9.x = d14;
        pos9.y = 0.0d;
        if (d14 >= 0.0d && pos7.x <= this.i.x) {
            return true;
        }
        if (d14 >= -50.0d) {
            double d15 = pos7.x;
            Pos pos10 = this.i;
            if (d15 <= pos10.x + 30.0d || pos7.distanceSquare(pos10) < 1600.0d) {
                this.s.f5975a.b(!z2);
                this.s.f5976d.b(z2);
                this.t.f5975a.b(!z2);
                this.t.f5976d.b(z2);
                this.s.f5975a.f5969a.setPos(this.c);
                this.s.f5975a.c.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.c, this.i, this.p));
                this.s.f5975a.f5970d.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.c, this.f8074f, this.p));
                this.t.f5975a.f5969a.setPos(this.c);
                this.t.f5975a.c.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.c, this.i, this.o));
                this.t.f5975a.f5970d.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.c, this.f8074f, this.o));
                this.s.f5976d.f5969a.setPos(this.f8076h);
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b bVar2 = this.s;
                bVar2.f5976d.c.setPos(bVar2.f5975a.f5970d);
                this.s.f5976d.f5970d.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.f8076h, this.f8075g, this.p));
                this.t.f5976d.f5969a.setPos(this.f8076h);
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b bVar3 = this.t;
                bVar3.f5976d.c.setPos(bVar3.f5975a.f5970d);
                this.t.f5976d.f5970d.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.f8076h, this.f8075g, this.o));
                this.s.f5975a.c();
                this.t.f5975a.c();
                this.s.f5976d.c();
                this.t.f5976d.c();
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b bVar4 = this.s;
                bVar4.b.setPos(bVar4.f5975a.f5970d);
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b bVar5 = this.s;
                bVar5.c.setPos(bVar5.f5976d.f5970d);
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b bVar6 = this.t;
                bVar6.b.setPos(bVar6.f5975a.f5970d);
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.b bVar7 = this.t;
                bVar7.c.setPos(bVar7.f5976d.f5970d);
                return (this.s.a(this.q) || this.s.a(this.r) || this.t.a(this.q) || this.t.a(this.r)) ? false : true;
            }
        }
        f.o("和x轴交点坐标:" + this.f8073e + ",距离:" + dTan + ",当前点坐标:" + this.i + ",当前角度:" + dC + ",R:" + d2);
        f.o("后退入库：不可倒库2, B:" + this.f8074f + ",C:" + this.f8075g + ",D:" + this.f8072d + ",O1:" + this.c + ",O2:" + this.f8076h);
        return false;
    }

    public boolean b(e eVar, c cVar) {
        if (this.f8071a == null) {
            double dMin = Math.min(360.0d, RuntimeWheelAndR.a(eVar.c().L).R);
            this.b = dMin;
            this.f8071a = c(eVar, cVar, dMin);
        }
        return a(eVar, cVar, this.f8071a, this.b);
    }
}
