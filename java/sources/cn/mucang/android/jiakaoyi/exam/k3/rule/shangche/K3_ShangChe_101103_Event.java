package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_101103_Event extends d<K3ShangCheStepConfig> {
    private long openTime;

    public K3_ShangChe_101103_Event(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
        super(k3ShangCheStepConfig, deduct);
        this.openTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().j) {
            this.openTime = 0L;
        } else {
            if (this.openTime <= 0) {
                this.openTime = examProcessor.i;
            }
            if (examProcessor.i - this.openTime > ((Integer) ((K3ShangCheStepConfig) this.config).p201147.value).intValue() * 1000) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
