package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.framework.utils.u;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Pos> f3918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<Pos> f3919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<Pos> f3920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Line f3921g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Line f3922h;
    public Line i;
    public boolean j;
    public boolean k;
    public int l;

    private boolean c(CarPos carPos, Pos pos, Pos pos2) {
        if (!cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos, pos2)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, carPos.carPoints) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos2, carPos.carPoints)) {
            return true;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.c(carPos, pos, pos2);
    }

    private double e(CarPos carPos, boolean z, Pos pos, Pos pos2, double d2, Pos pos3, Pos pos4) {
        double dMin;
        if (!cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos3, pos4)) {
            return d2;
        }
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(carPos.carRect, pos3, pos4)) {
            return g(pos2, g(pos, d2, pos3, pos4), pos3, pos4);
        }
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, pos3, pos4);
        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos2, pos3, pos4);
        Pos posVectorTo = pos.vectorTo(pos2);
        Pos posVectorTo2 = pos.vectorTo(posN);
        Pos posVectorTo3 = pos.vectorTo(posN2);
        double dDistanceTo = posN.distanceTo(pos);
        if (posVectorTo.cross(posVectorTo2) > 0.0d) {
            dMin = z ? Math.min(dDistanceTo, d2) : Math.min(-dDistanceTo, d2);
        } else {
            dMin = z ? Math.min(-dDistanceTo, d2) : Math.min(dDistanceTo, d2);
        }
        double dDistanceTo2 = posN2.distanceTo(pos2);
        if (posVectorTo.cross(posVectorTo3) > 0.0d) {
            return z ? Math.min(dDistanceTo2, dMin) : Math.min(-dDistanceTo2, dMin);
        }
        return z ? Math.min(-dDistanceTo2, dMin) : Math.min(dDistanceTo2, dMin);
    }

    private double f(CarPos carPos, Pos pos, double d2, int i) {
        Pos pos2 = this.f3919e.get(i);
        Pos pos3 = this.f3919e.get(i - 1);
        return cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos3, pos2) ? g(pos, d2, pos3, pos2) : d2;
    }

    private double g(Pos pos, double d2, Pos pos2, Pos pos3) {
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, pos2, pos3);
        if (u.b()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(this.b + "betweenTwoPoint " + cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN, pos2, pos3) + " dis1 " + posN.distanceTo(pos2) + " dis2 " + posN.distanceTo(pos3) + " dis3 " + posN.distanceTo(pos));
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN, pos2, pos3) ? Math.min(d2, posN.distanceTo(pos)) : d2;
    }

    private boolean j(CarPos carPos, Pos pos, Pos pos2) {
        if (!cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos, pos2)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.e(carPos, pos, pos2)) {
            return true;
        }
        Wheel wheelS = cn.mucang.android.jiakaoyi.hpmap.a.b.a.s(carPos, pos, pos2);
        return (wheelS == null || wheelS == Wheel.None) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, K3CollisionModel.TriggerType triggerType) {
        CarPos carPosC = eVar.c();
        if (carPosC.bound.h(this.c)) {
            return false;
        }
        if (triggerType != K3CollisionModel.TriggerType.WheelPressLine) {
            if (!this.j) {
                return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.f3921g) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.i);
            }
            for (int i = 1; i < this.f3918d.size(); i++) {
                if (c(carPosC, this.f3918d.get(i - 1), this.f3918d.get(i))) {
                    return true;
                }
            }
            for (int i2 = 1; i2 < this.f3920f.size(); i2++) {
                if (c(carPosC, this.f3920f.get(i2 - 1), this.f3920f.get(i2))) {
                    return true;
                }
            }
            return false;
        }
        if (!this.j) {
            cn.mucang.android.jiakaoyi.signal.pos.a aVar = carPosC.bigBound;
            Line line = this.f3922h;
            if (!cn.mucang.android.jiakaoyi.k3collect.collision.a.d(aVar, line.start, line.end)) {
                return false;
            }
            Line line2 = this.f3922h;
            if (cn.mucang.android.jiakaoyi.k3collect.collision.a.e(carPosC, line2.start, line2.end)) {
                return true;
            }
            Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3921g);
            Wheel wheel = Wheel.None;
            return (wheelR == wheel && cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.i) == wheel) ? false : true;
        }
        for (int i3 = 1; i3 < this.f3918d.size(); i3++) {
            if (j(carPosC, this.f3918d.get(i3 - 1), this.f3918d.get(i3))) {
                return true;
            }
        }
        for (int i4 = 1; i4 < this.f3920f.size(); i4++) {
            if (j(carPosC, this.f3920f.get(i4 - 1), this.f3920f.get(i4))) {
                return true;
            }
        }
        return false;
    }

    public double d(CarPos carPos, boolean z) {
        Pos posMeanWith;
        Pos posMeanWith2;
        if (z) {
            posMeanWith = new Pos(carPos.wheelRightFront).meanWith(carPos.carRect.b);
            posMeanWith2 = new Pos(carPos.wheelRightBack).meanWith(carPos.carRect.f5820a);
        } else {
            posMeanWith = new Pos(carPos.wheelLeftFront).meanWith(carPos.carRect.c);
            posMeanWith2 = new Pos(carPos.wheelLeftBack).meanWith(carPos.carRect.f5821d);
        }
        Pos pos = posMeanWith;
        Pos pos2 = posMeanWith2;
        if (!this.j) {
            double d2 = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a;
            Line line = this.f3922h;
            double dE = e(carPos, z, pos2, pos, d2, line.start, line.end);
            return ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a) - dE < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dE - (((double) this.l) * 0.5d);
        }
        double dE2 = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a;
        for (int i = 1; i < this.f3919e.size(); i++) {
            dE2 = e(carPos, z, pos2, pos, dE2, this.f3919e.get(i - 1), this.f3919e.get(i));
        }
        return ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a) - dE2 < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dE2 - (((double) this.l) * 0.5d);
    }

    public double h(CarPos carPos, Pos pos) {
        double dG;
        double d2 = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a;
        if (this.j) {
            dG = d2;
            for (int i = 1; i < this.f3919e.size(); i++) {
                dG = f(carPos, pos, dG, i);
            }
        } else {
            Line line = this.f3922h;
            dG = g(pos, d2, line.start, line.end);
        }
        return ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a) - dG < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dG - (((double) this.l) * 0.5d);
    }

    public double i(CarPos carPos, Pos pos) {
        double dG = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a;
        if (this.j) {
            for (int i = 1; i < this.f3919e.size(); i++) {
                Pos pos2 = this.f3919e.get(i);
                Pos pos3 = this.f3919e.get(i - 1);
                if (cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos3, pos2)) {
                    dG = g(pos, dG, pos3, pos2);
                }
            }
            if (((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a) - dG < 0.001d) {
                for (Pos pos4 : this.f3919e) {
                    if (carPos.bigBound.g(pos4)) {
                        dG = Math.min(dG, pos.distanceTo(pos4));
                    }
                }
            }
        } else {
            Line line = this.f3922h;
            dG = g(pos, dG, line.start, line.end);
        }
        return ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.f3883a) - dG < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dG;
    }
}
