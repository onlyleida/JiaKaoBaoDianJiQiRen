package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.b;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_Step1 extends a<K2CeFangTingCheConfig, b, cn.mucang.android.jiakaoyi.examk2.collision.b> {
    public K2_CeFangTingChe_Step1(cn.mucang.android.jiakaoyi.examk2.collision.b bVar, K2CeFangTingCheConfig k2CeFangTingCheConfig) {
        super(bVar, k2CeFangTingCheConfig.p406105, k2CeFangTingCheConfig.p406104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.QiBuShaChe);
    }

    public String stepName() {
        return "侧方停车";
    }
}
