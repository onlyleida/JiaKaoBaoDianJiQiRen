package cn.mucang.android.jiakaoyi.examk2.rule.squxian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SQuXian_303105_Event extends d<K2SQuXianStepConfig> {
    public K2_SQuXian_303105_Event(K2SQuXianStepConfig k2SQuXianStepConfig, Deduct deduct) {
        super(k2SQuXianStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.i - ((j) bVar.f()).startTime <= ((Integer) ((K2SQuXianStepConfig) this.config).p403108.value).intValue() * 1000 || bVar.j()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
