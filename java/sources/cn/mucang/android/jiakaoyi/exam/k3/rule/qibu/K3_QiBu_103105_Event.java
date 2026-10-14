package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103105_Event extends d<K3QiBuStepConfig> {
    private long atTime;

    public K3_QiBu_103105_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
        this.atTime = -999999L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        long j = examProcessor.i;
        boolean z = eVar.d().f5268f;
        if (eVar.d().c() && !z && this.atTime == -999999) {
            this.atTime = j;
        }
        if (!z) {
            return true;
        }
        long j2 = this.atTime;
        if (j2 == -999999 || j - j2 >= ((Integer) ((K3QiBuStepConfig) this.config).p203118.value).intValue() * 1000) {
            this.atTime = -999999L;
            return true;
        }
        this.atTime = -999999L;
        return false;
    }
}
