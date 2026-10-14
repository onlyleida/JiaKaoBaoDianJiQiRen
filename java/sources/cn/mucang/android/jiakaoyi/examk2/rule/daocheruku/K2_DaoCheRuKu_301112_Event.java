package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301112_Event extends d<K2DaoCheRuKuConfig> {
    private boolean step2HasJudge;

    public K2_DaoCheRuKu_301112_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.step2HasJudge = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402110.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        if (((DaoKuChecker) bVar2.f3279a).r == SubStep.Step2 && eVar.d().c() && eVar.d().F.isBack() && !this.step2HasJudge) {
            this.step2HasJudge = true;
            C c = bVar2.f3279a;
            if (((DaoKuChecker) c).C != null && !((DaoKuChecker) c).C.booleanValue()) {
                return false;
            }
        } else if (((DaoKuChecker) bVar2.f3279a).r == SubStep.Step5 && eVar.d().c() && eVar.d().F.isBack()) {
            setDoNotExecute(true);
            C c2 = bVar2.f3279a;
            if (((DaoKuChecker) c2).C != null && !((DaoKuChecker) c2).C.booleanValue()) {
                return false;
            }
        }
        return true;
    }
}
