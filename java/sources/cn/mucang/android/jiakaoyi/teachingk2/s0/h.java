package cn.mucang.android.jiakaoyi.teachingk2.s0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class h extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j, SimpleTeachingConfig> {
    public boolean s;
    public Wheel t;

    public h(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> cVar) {
        this(list, cVar, false);
    }

    private void H(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar) {
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, jVar.i)) {
            this.s = true;
            this.m = jVar.t;
            return;
        }
        boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, jVar.j);
        this.s = zG;
        if (zG) {
            this.m = jVar.u;
        }
    }

    private void J(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar) {
        Wheel wheelT = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, jVar.i);
        this.t = wheelT;
        Wheel wheel = Wheel.None;
        if (wheelT != wheel) {
            this.l = jVar.t;
            return;
        }
        Wheel wheelT2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.t(carPos, jVar.j);
        this.t = wheelT2;
        if (wheelT2 != wheel) {
            this.l = jVar.u;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar) {
        Line lineL = jVar.l();
        if (jVar.l() == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, jVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        H(carPos, jVar);
        J(carPos, jVar);
        if (this.r == SubStep.Step1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, jVar.l)) {
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
        this.t = Wheel.None;
        this.s = false;
        this.r = SubStep.None;
    }

    public h(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> cVar, boolean z) {
        super(list, null, cVar, z);
        this.t = Wheel.None;
    }
}
