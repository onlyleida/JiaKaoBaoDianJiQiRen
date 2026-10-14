package cn.mucang.android.jiakaoyi.teachingk2.s0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class l extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<o, SimpleTeachingConfig> {
    public boolean s;
    public boolean t;
    public Wheel u;
    public cn.mucang.android.jiakaoyi.signal.pos.c v;

    public l(List<o> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<o> cVar) {
        this(list, cVar, false);
    }

    private void I(CarPos carPos, o oVar) {
        this.m = null;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.k)) {
            this.m = oVar.k;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.l)) {
            this.m = oVar.l;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.m)) {
            this.m = oVar.m;
        }
        if (this.m == null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, oVar.n)) {
            this.m = oVar.n;
        }
    }

    private void J(CarPos carPos, o oVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.k);
        this.u = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = oVar.k;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.l);
        this.u = wheelR2;
        if (wheelR2 != wheel) {
            this.l = oVar.l;
            return;
        }
        Wheel wheelR3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.m);
        this.u = wheelR3;
        if (wheelR3 != wheel) {
            this.l = oVar.m;
            return;
        }
        Wheel wheelR4 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, oVar.n);
        this.u = wheelR4;
        if (wheelR4 != wheel) {
            this.l = oVar.n;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, o oVar) {
        Line lineL = oVar.l();
        if (oVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, oVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, o oVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
            this.t = oVar.q;
            Pos pos = oVar.l.start;
            Line line = oVar.m;
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line.start, line.end);
            Line line2 = oVar.n;
            this.v = new cn.mucang.android.jiakaoyi.signal.pos.c(line2.end, oVar.k.start, posN, line2.start);
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(carPos, this.v)) {
            this.s = true;
        } else {
            this.s = false;
        }
        I(carPos, oVar);
        J(carPos, oVar);
        if (this.r == SubStep.Step1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, oVar.j)) {
            this.b = true;
            this.c = true;
            if (this.j) {
                return;
            }
            w.O();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.m = null;
        this.u = Wheel.None;
        this.r = SubStep.None;
    }

    public l(List<o> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<o> cVar, boolean z) {
        super(list, null, cVar, z);
        this.s = false;
        this.u = Wheel.None;
    }
}
