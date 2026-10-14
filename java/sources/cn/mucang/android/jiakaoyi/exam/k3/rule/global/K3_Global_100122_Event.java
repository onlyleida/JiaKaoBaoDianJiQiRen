package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100122_Event extends d<K3GlobalStepConfig> {
    private long startTime;

    public K3_Global_100122_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().b >= ((Integer) ((K3GlobalStepConfig) this.config).p200131.value).intValue()) {
            if (this.startTime <= 0) {
                this.startTime = examProcessor.i;
            }
            if (examProcessor.i - this.startTime >= ((Integer) ((K3GlobalStepConfig) this.config).p200133.value).intValue() * 1000) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            this.startTime = -1L;
        }
        return !examProcessor.w();
    }
}
