package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class j extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<o, K2ZhiJiaoZhuanWanConfig> {
    public int A;
    private Line B;
    public boolean C;
    public double D;
    public boolean E;
    public boolean F;
    private boolean G;
    private boolean H;
    public boolean s;
    public Wheel t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public long z;

    public j(List<o> list, K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig) {
        super(list, k2ZhiJiaoZhuanWanConfig);
        this.t = Wheel.None;
        this.u = true;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = -1L;
        this.A = 0;
        this.C = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
    }

    private Line G(o oVar, float f2) {
        if (f2 <= -90.0f || f2 >= 180.0f) {
            return null;
        }
        if (f2 < 45.0f) {
            double dDistanceTo = oVar.k.start.distanceTo(oVar.n.end);
            if (f2 < (-((float) ((Math.acos(dDistanceTo / oVar.k.end.distanceTo(oVar.n.end)) * 180.0d) / 3.141592653589793d)))) {
                Line line = oVar.k;
                return new Line(oVar.k.end, cn.mucang.android.jiakaoyi.hpmap.d.a.s(oVar.n.end, oVar.k.start, -(Math.tan((((double) (f2 + 90.0f)) * 3.141592653589793d) / 180.0d) * line.start.distanceTo(line.end))));
            }
            Pos pos = oVar.k.end;
            Line line2 = oVar.n;
            return new Line(oVar.k.end, cn.mucang.android.jiakaoyi.hpmap.d.a.s(oVar.n.end, cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line2.start, line2.end), Math.tan((((double) f2) * 3.141592653589793d) / 180.0d) * dDistanceTo));
        }
        double dDistanceTo2 = oVar.k.end.distanceTo(oVar.m.start);
        double dDistanceTo3 = oVar.l.end.distanceTo(oVar.m.start);
        if (f2 > ((float) ((Math.acos(dDistanceTo3 / dDistanceTo2) * 180.0d) / 3.141592653589793d)) + 90.0f) {
            Line line3 = oVar.l;
            return new Line(oVar.k.end, cn.mucang.android.jiakaoyi.hpmap.d.a.s(oVar.m.start, oVar.l.end, -(Math.tan((((double) (180.0f - f2)) * 3.141592653589793d) / 180.0d) * line3.start.distanceTo(line3.end))));
        }
        double dTan = Math.tan((((double) (f2 - 90.0f)) * 3.141592653589793d) / 180.0d) * dDistanceTo3;
        Pos pos2 = oVar.k.end;
        Line line4 = oVar.m;
        return new Line(oVar.k.end, cn.mucang.android.jiakaoyi.hpmap.d.a.s(oVar.m.end, cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos2, line4.start, line4.end), dTan));
    }

    private void J(CarPos carPos, o oVar) {
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.k);
        this.s = zB;
        if (zB) {
            this.m = oVar.k;
            return;
        }
        boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.l);
        this.s = zB2;
        if (zB2) {
            this.m = oVar.l;
            return;
        }
        boolean zB3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.m);
        this.s = zB3;
        if (zB3) {
            this.m = oVar.m;
            return;
        }
        boolean zB4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.n);
        this.s = zB4;
        if (zB4) {
            this.m = oVar.n;
        }
    }

    private void K(CarPos carPos, o oVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.k);
        this.t = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = oVar.k;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.l);
        this.t = wheelR2;
        if (wheelR2 != wheel) {
            this.l = oVar.l;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.m);
        this.t = wheelR3;
        if (wheelR3 != wheel) {
            this.l = oVar.m;
            return;
        }
        Wheel wheelR4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.n);
        this.t = wheelR4;
        if (wheelR4 != wheel) {
            this.l = oVar.n;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    public boolean A() {
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405129.value).booleanValue()) {
            return false;
        }
        return super.A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, o oVar) {
        Line line;
        return (!((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405129.value).booleanValue() || (line = oVar.o) == null) ? super.f(eVar, carPos, oVar) : cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, o oVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            if (eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight)) {
                this.E = true;
            }
            this.r = SubStep.Step1;
        }
        this.u = oVar.q;
        if (this.B == null) {
            this.B = G(oVar, cn.mucang.android.jiakaoyi.signal.utils.d.d(((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405123.value).intValue()));
        }
        if (this.B != null) {
            this.C = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), this.B);
        }
        Line line = oVar.k;
        double degrees = Math.toDegrees(line.start.angleTo(line.end));
        Pos pos = oVar.k.end;
        Line line2 = oVar.m;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line2.start, line2.end);
        double degrees2 = Math.toDegrees(carPos.back.angleTo(carPos.front));
        double dAbs = Math.abs(cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, oVar.m));
        if (!this.u ? degrees2 - degrees >= 15.0d : degrees - degrees2 >= 15.0d) {
            int i = (dAbs > (dK + 30.0d) ? 1 : (dAbs == (dK + 30.0d) ? 0 : -1));
        }
        if (!this.w) {
            this.w = cn.mucang.android.jiakaoyi.hpmap.a.b.a.c(carPos, oVar.k.end, oVar.m.end);
        }
        boolean zB = false;
        if (!this.v) {
            Wheel wheelS = cn.mucang.android.jiakaoyi.hpmap.a.b.a.s(carPos, oVar.k.end, oVar.m.end);
            this.v = wheelS == Wheel.LeftBack || wheelS == Wheel.RightBack;
        }
        if (this.u) {
            this.x = !eVar.d().j(Light.TurnLeftLight);
        } else {
            this.x = !eVar.d().j(Light.TurnRightLight);
        }
        if (this.x) {
            this.z = -1L;
        } else if (this.z == -1) {
            this.z = eVar.d().L;
            this.A++;
        }
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405110.value).booleanValue()) {
            this.D = cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(eVar.c(), oVar.j);
        }
        Pos posMeanWith = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
        Line line3 = oVar.j;
        double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(posMeanWith, line3.start, line3.end);
        if (((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405113.value).intValue() < 0) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, oVar.j.middle()) && dK2 <= Math.abs(((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405113.value).intValue())) {
                this.y = true;
            }
        } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.j) && dK2 >= ((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405113.value).intValue()) {
            this.y = true;
        }
        J(carPos, oVar);
        K(carPos, oVar);
        if (s()) {
            if (((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405130.value).intValue() == 0) {
                if (!this.F) {
                    this.F = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.j);
                }
                zB = oVar.v(carPos);
            } else if (((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405130.value).intValue() == 1) {
                if (!this.H) {
                    this.H = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.LeftFront, carPos, oVar.j);
                }
                if (!this.G) {
                    this.G = cn.mucang.android.jiakaoyi.hpmap.a.b.a.v(Wheel.RightFront, carPos, oVar.j);
                }
                if (this.H && this.G) {
                    zB = true;
                }
            } else if (((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405130.value).intValue() == 2) {
                zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.j);
            }
            if (zB) {
                this.b = true;
                if (((Integer) ((K2ZhiJiaoZhuanWanConfig) this.f3693d).p405130.value).intValue() == 0) {
                    this.c = this.F;
                } else {
                    this.c = true;
                }
            }
        }
        SubStep subStep = SubStep.Step1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return super.d(eVar, carPos, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.t = Wheel.None;
        this.s = false;
        this.r = SubStep.None;
    }
}
