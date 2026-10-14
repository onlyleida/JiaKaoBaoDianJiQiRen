package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j, K2SQuXianStepConfig> {
    public boolean s;
    public Wheel t;
    public boolean u;

    public g(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> list, K2SQuXianStepConfig k2SQuXianStepConfig) {
        super(list, k2SQuXianStepConfig);
    }

    private void H(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar) {
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
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar, ExamProcessor examProcessor) {
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, jVar.i);
        this.s = zG;
        if (zG) {
            this.m = jVar.t;
        }
        if (!zG) {
            boolean zG2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(carPos, jVar.j);
            this.s = zG2;
            if (zG2) {
                this.m = jVar.u;
            }
        }
        H(carPos, jVar);
        if (this.r == SubStep.Step1) {
            boolean zV = false;
            if (((Integer) ((K2SQuXianStepConfig) this.f3693d).p403115.value).intValue() == 0) {
                zV = jVar.v(carPos);
                if (!this.u) {
                    this.u = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, jVar.l);
                }
            } else if (((Integer) ((K2SQuXianStepConfig) this.f3693d).p403115.value).intValue() == 1 && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, jVar.l) && (((Integer) ((K2SQuXianStepConfig) this.f3693d).p403116.value).intValue() != 0 || new Pos(carPos.carRect.b).meanWith(carPos.carRect.c).distanceTo(jVar.l.middle()) > ((Integer) ((K2SQuXianStepConfig) this.f3693d).p403117.value).intValue())) {
                zV = true;
            }
            if (zV) {
                this.b = true;
                if (((Integer) ((K2SQuXianStepConfig) this.f3693d).p403115.value).intValue() == 0) {
                    this.c = this.u;
                } else {
                    this.c = true;
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.t = Wheel.None;
        this.s = false;
        this.r = SubStep.None;
    }
}
