package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.QiBuStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103127_Event extends d<K3QiBuStepConfig> {
    public K3_QiBu_103127_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().c()) {
            setDoNotExecute(true);
            return true;
        }
        long j = ((QiBuStepData) bVar.f()).startTime;
        return j <= 0 || examProcessor.i - j <= ((long) (((Integer) ((K3QiBuStepConfig) this.config).p203124.value).intValue() * 1000));
    }
}
