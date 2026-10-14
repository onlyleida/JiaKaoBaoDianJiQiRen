package cn.mucang.android.jiakaoyi.examk2.rule.quka;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.i;
import cn.mucang.android.jiakaoyi.examk2.collision.f;
import cn.mucang.android.jiakaoyi.examk2.config.K2QuKaConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_QuKa_307104_Event extends d<K2QuKaConfig> {
    public K2_QuKa_307104_Event(K2QuKaConfig k2QuKaConfig, Deduct deduct) {
        super(k2QuKaConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2QuKaConfig) this.config).p407107.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((f) ((i) bVar.f()).f3279a).h(-1, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !((f) ((i) bVar.f()).f3279a).t;
    }
}
