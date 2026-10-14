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
public class g extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i, SimpleTeachingConfig> {
    public boolean s;
    public Wheel t;
    public double u;
    public boolean v;

    public g(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i> cVar) {
        this(list, cVar, false);
    }

    private void I(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.i iVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, iVar.l);
        this.t = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = iVar.l;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, iVar.m);
        this.t = wheelR2;
        if (wheelR2 != wheel) {
            this.l = iVar.m;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.i iVar) {
        Line lineL = iVar.l();
        if (lineL == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, lineL)) {
            return super.f(eVar, carPos, iVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.i iVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.l);
        this.s = zB;
        if (zB) {
            this.m = iVar.l;
        } else {
            boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.m);
            this.s = zB2;
            if (zB2) {
                this.m = iVar.m;
            }
        }
        I(carPos, iVar);
        if (this.f3695f) {
            this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.a.i(carPos, iVar.l);
            this.v = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, iVar.k);
            if (this.j) {
                return;
            }
            w.O();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.r = SubStep.None;
    }

    public g(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i> list, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i> cVar, boolean z) {
        super(list, null, cVar, z);
        this.t = Wheel.None;
        this.u = 0.0d;
    }
}
