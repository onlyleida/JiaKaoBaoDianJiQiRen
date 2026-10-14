package cn.mucang.android.jiakaoyi.examk2.rule.squxian;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.g;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.j;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SQuXian_Step1 extends a<K2SQuXianStepConfig, j, g> {
    public K2_SQuXian_Step1(g gVar, K2SQuXianStepConfig k2SQuXianStepConfig) {
        super(gVar, k2SQuXianStepConfig.p403105, k2SQuXianStepConfig.p403104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.Backwards);
    }

    public String stepName() {
        return "曲线行驶";
    }
}
