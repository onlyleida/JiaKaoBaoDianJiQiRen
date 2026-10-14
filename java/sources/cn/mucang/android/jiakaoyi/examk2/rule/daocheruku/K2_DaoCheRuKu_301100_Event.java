package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301100_Event extends d<K2DaoCheRuKuConfig> {
    private boolean hasLeaveLine;

    public K2_DaoCheRuKu_301100_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.hasLeaveLine = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        C c = ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a;
        return ((DaoKuChecker) c).h(((DaoKuChecker) c).w.wheel, eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        if (!this.hasLeaveLine) {
            C c = bVar2.f3279a;
            if (((DaoKuChecker) c).r == SubStep.Step1 && ((DaoKuChecker) c).u0 == DaoKuChecker.StartByLine.Line18) {
                if (((DaoKuChecker) c).w0) {
                    this.hasLeaveLine = true;
                }
                return true;
            }
        }
        return !(((DaoKuChecker) bVar2.f3279a).r != SubStep.Step7 || ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402123.value).booleanValue() || ((DaoKuChecker) bVar2.f3279a).x == Wheel.None) || ((DaoKuChecker) bVar2.f3279a).w == Wheel.None;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
