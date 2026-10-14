package cn.mucang.android.jiakaoyi.k3collect.collision.impl;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i extends K3CollisionModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Pos> f3913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<Pos> f3914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Line f3915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Line f3916g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3917h;
    public int i;

    private boolean c(CarPos carPos, Pos pos, Pos pos2) {
        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos, pos2)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, carPos.carPoints) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos2, carPos.carPoints) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.c(carPos, pos, pos2);
        }
        return false;
    }

    private double e(CarPos carPos, Pos pos, double d2, int i, List<Pos> list) {
        Pos pos2 = list.get(i);
        Pos pos3 = list.get(i - 1);
        return cn.mucang.android.jiakaoyi.k3collect.collision.a.d(carPos.bigBound, pos3, pos2) ? f(pos, d2, pos3, pos2) : d2;
    }

    private double f(Pos pos, double d2, Pos pos2, Pos pos3) {
        return Math.min(cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, pos2, pos3), d2);
    }

    private boolean h(CarPos carPos, Pos pos, Pos pos2) {
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
            if (!this.f3917h) {
                return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.f3915f) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPosC, this.f3916g);
            }
            for (int i = 1; i < this.f3913d.size(); i++) {
                if (c(carPosC, this.f3913d.get(i - 1), this.f3913d.get(i))) {
                    return true;
                }
            }
            for (int i2 = 1; i2 < this.f3914e.size(); i2++) {
                if (c(carPosC, this.f3914e.get(i2 - 1), this.f3914e.get(i2))) {
                    return true;
                }
            }
            return false;
        }
        if (this.f3917h) {
            for (int i3 = 1; i3 < this.f3913d.size(); i3++) {
                if (h(carPosC, this.f3913d.get(i3 - 1), this.f3913d.get(i3))) {
                    return true;
                }
            }
            for (int i4 = 1; i4 < this.f3914e.size(); i4++) {
                if (h(carPosC, this.f3914e.get(i4 - 1), this.f3914e.get(i4))) {
                    return true;
                }
            }
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVar = carPosC.bigBound;
        Line line = this.f3915f;
        if (!cn.mucang.android.jiakaoyi.k3collect.collision.a.d(aVar, line.start, line.end)) {
            return false;
        }
        Line line2 = this.f3915f;
        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.e(carPosC, line2.start, line2.end)) {
            return true;
        }
        Line line3 = this.f3916g;
        if (cn.mucang.android.jiakaoyi.k3collect.collision.a.e(carPosC, line3.start, line3.end)) {
            return true;
        }
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3915f);
        Wheel wheel = Wheel.None;
        return (wheelR == wheel && cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPosC, this.f3916g) == wheel) ? false : true;
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
        if (!this.f3917h) {
            Line line = this.f3915f;
            double dF = f(pos2, Double.MAX_VALUE, line.start, line.end);
            Line line2 = this.f3915f;
            double dF2 = f(pos, dF, line2.start, line2.end);
            Line line3 = this.f3916g;
            double dF3 = f(pos2, dF2, line3.start, line3.end);
            Line line4 = this.f3916g;
            double dF4 = f(pos, dF3, line4.start, line4.end);
            return Double.MAX_VALUE - dF4 < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dF4 - (((double) this.i) * 0.5d);
        }
        double dE = Double.MAX_VALUE;
        int i = 1;
        while (i < this.f3913d.size()) {
            int i2 = i;
            dE = e(carPos, pos, e(carPos, pos2, dE, i, this.f3913d), i2, this.f3913d);
            i = i2 + 1;
        }
        int i3 = 1;
        while (i3 < this.f3914e.size()) {
            int i4 = i3;
            dE = e(carPos, pos, e(carPos, pos2, dE, i3, this.f3914e), i4, this.f3914e);
            i3 = i4 + 1;
        }
        return Double.MAX_VALUE - dE < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dE - (((double) this.i) * 0.5d);
    }

    public double g(CarPos carPos, Pos pos) {
        if (!this.f3917h) {
            Line line = this.f3915f;
            double dF = f(pos, Double.MAX_VALUE, line.start, line.end);
            Line line2 = this.f3916g;
            double dF2 = f(pos, dF, line2.start, line2.end);
            return Double.MAX_VALUE - dF2 < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dF2 - (((double) this.i) * 0.5d);
        }
        double dE = Double.MAX_VALUE;
        for (int i = 1; i < this.f3913d.size(); i++) {
            dE = e(carPos, pos, dE, i, this.f3913d);
        }
        for (int i2 = 1; i2 < this.f3914e.size(); i2++) {
            dE = e(carPos, pos, dE, i2, this.f3914e);
        }
        return Double.MAX_VALUE - dE < 0.001d ? cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b : dE - (((double) this.i) * 0.5d);
    }
}
