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
public class d extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e, SimpleTeachingConfig> {
    public Wheel s;

    public d(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> cVar) {
        this(list, cVar, false);
    }

    private void I(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.e eVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, eVar.l);
        this.s = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = eVar.l;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, eVar.m);
        this.s = wheelR2;
        if (wheelR2 != wheel) {
            this.l = eVar.m;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.e eVar2) {
        Line lineL = eVar2.l();
        if (lineL == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, eVar2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.e eVar2, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        I(carPos, eVar2);
        if (!this.f3695f || this.j) {
            return;
        }
        w.O();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.r = SubStep.None;
    }

    public d(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> cVar, boolean z) {
        super(list, null, cVar, z);
        this.s = Wheel.None;
    }
}
