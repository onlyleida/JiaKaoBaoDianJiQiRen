package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2ETCConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e, K2ETCConfig> {
    public Wheel s;

    public c(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> list, K2ETCConfig k2ETCConfig) {
        super(list, k2ETCConfig);
        this.s = Wheel.None;
    }

    private void H(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.e eVar) {
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
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.e eVar2, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        H(carPos, eVar2);
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, eVar2.j)) {
            this.b = true;
            this.c = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.s = Wheel.None;
        this.r = SubStep.None;
    }
}
