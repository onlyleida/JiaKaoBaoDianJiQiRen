package cn.mucang.android.jiakaoyi.teachingk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.i;
import cn.mucang.android.jiakaoyi.teachingk2.u0.a;

/* JADX INFO: loaded from: classes4.dex */
public class ShangPoStep1 extends a<i> {
    public ShangPoStep1(i iVar) {
        super(iVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.u0.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.BrakeNotSmooth);
    }

    public String stepName() {
        return Step.K2_ShangPoQiBu.getStepName();
    }
}
