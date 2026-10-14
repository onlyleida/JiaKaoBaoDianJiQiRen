package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301111_Event extends d<K2DaoCheRuKuConfig> {
    private long lightLeftStartTime;
    private long lightRightStartTime;

    public K2_DaoCheRuKu_301111_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.lightLeftStartTime = 0L;
        this.lightRightStartTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        C c = bVar2.f3279a;
        if (((DaoKuChecker) c).r == SubStep.Step3) {
            boolean zJ = ((DaoKuChecker) c).W ? eVar.d().j(Light.TurnRightLight) : eVar.d().j(Light.TurnLeftLight);
            if (eVar.d().c()) {
                if (eVar.d().m.isFront() && eVar.d().F.isForward() && eVar.d().b()) {
                    return this.lightLeftStartTime != 0 && eVar.d().L - this.lightLeftStartTime >= ((long) ((((Integer) ((K2DaoCheRuKuConfig) this.config).p402148.value).intValue() * 1000) + (-200)));
                }
            } else if (!zJ) {
                this.lightLeftStartTime = 0L;
            } else if (this.lightLeftStartTime == 0) {
                this.lightLeftStartTime = eVar.d().L;
            }
        }
        C c2 = bVar2.f3279a;
        if (((DaoKuChecker) c2).r == SubStep.Step6) {
            boolean zJ2 = ((DaoKuChecker) c2).W ? eVar.d().j(Light.TurnLeftLight) : eVar.d().j(Light.TurnRightLight);
            if (eVar.d().c()) {
                if (eVar.d().m.isFront() && eVar.d().F.isForward() && eVar.d().b()) {
                    return this.lightRightStartTime != 0 && eVar.d().L - this.lightRightStartTime >= ((long) ((((Integer) ((K2DaoCheRuKuConfig) this.config).p402148.value).intValue() * 1000) + (-200)));
                }
            } else if (!zJ2) {
                this.lightRightStartTime = 0L;
            } else if (this.lightRightStartTime == 0) {
                this.lightRightStartTime = eVar.d().L;
            }
        }
        return true;
    }
}
