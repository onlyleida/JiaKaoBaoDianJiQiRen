package cn.mucang.android.jiakaoyi.teachingk2.s0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class e extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f, SimpleTeachingConfig> {
    public boolean s;
    public Wheel t;
    public boolean u;
    public boolean v;
    public double w;

    public e(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> cVar) {
        this(list, cVar, false);
    }

    private void H(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, fVar.i)) {
            this.s = true;
            this.m = fVar.s;
            return;
        }
        if (cn.mucang.android.core.utils.g.d(fVar.j)) {
            boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, fVar.j);
            this.s = zG;
            if (zG) {
                this.m = fVar.t;
                return;
            }
        }
        boolean zG2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, fVar.k);
        this.s = zG2;
        if (zG2) {
            this.m = fVar.u;
        }
    }

    private void J(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar) {
        Wheel wheelT = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, fVar.i);
        this.t = wheelT;
        Wheel wheel = Wheel.None;
        if (wheelT != wheel) {
            this.l = fVar.s;
            return;
        }
        if (cn.mucang.android.core.utils.g.d(fVar.j)) {
            Wheel wheelT2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, fVar.j);
            this.t = wheelT2;
            if (wheelT2 != wheel) {
                this.l = fVar.t;
                return;
            }
        }
        Wheel wheelT3 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, fVar.k);
        this.t = wheelT3;
        if (wheelT3 != wheel) {
            this.l = fVar.u;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar) {
        Line lineL = fVar.l();
        if (fVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, fVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.f fVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        H(carPos, fVar);
        J(carPos, fVar);
        if (eVar.d().f5269g) {
            this.u = true;
        }
        if (this.r == SubStep.Step1) {
            if (!this.v) {
                this.v = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, fVar.l);
            }
            Pos pos = carPos.carRect.b;
            Line line = fVar.m;
            double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line.start, line.end);
            Pos pos2 = carPos.carRect.c;
            Line line2 = fVar.m;
            this.w = Math.min(dK, cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos2, line2.start, line2.end));
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, fVar.m)) {
                this.b = true;
                this.c = true;
                if (this.j) {
                    return;
                }
                w.O();
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        return bVar.l() != null && super.d(eVar, carPos, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.t = Wheel.None;
        this.s = false;
        this.r = SubStep.None;
    }

    public e(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> cVar, boolean z) {
        super(list, null, cVar, z);
        this.t = Wheel.None;
        this.u = false;
        this.v = false;
        this.w = 0.0d;
    }
}
