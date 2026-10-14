package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_Step1 extends a<K2ShangPoQiBuConfig, k, ShangPoChecker> {
    public K2_ShangPoQiBu_Step1(ShangPoChecker shangPoChecker, K2ShangPoQiBuConfig k2ShangPoQiBuConfig) {
        super(shangPoChecker, k2ShangPoQiBuConfig.p404105, k2ShangPoQiBuConfig.p404104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.HouLiu);
        examProcessor.n.c(ConflictSignal.QiBuShaChe);
        examProcessor.n.c(ConflictSignal.BrakeNotSmooth);
        examProcessor.n.c(ConflictSignal.Backwards);
    }

    public String stepName() {
        return "半坡起步";
    }
}
