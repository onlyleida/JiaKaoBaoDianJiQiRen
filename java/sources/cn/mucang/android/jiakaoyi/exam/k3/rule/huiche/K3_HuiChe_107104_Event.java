package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107104_Event extends d<K3HuiCheStepConfig> {
    private long time;

    public K3_HuiChe_107104_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
        this.time = Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().C - ((HuiCheStepData) bVar.f()).startEstimateDistance <= ((Integer) ((K3HuiCheStepConfig) this.config).p207109.value).intValue()) {
            return true;
        }
        if (eVar.d().b > ((Integer) ((K3HuiCheStepConfig) this.config).p207115.value).intValue()) {
            this.time = Long.MAX_VALUE;
        } else if (this.time == Long.MAX_VALUE) {
            this.time = examProcessor.i;
        }
        if (examProcessor.i - this.time < ((Integer) ((K3HuiCheStepConfig) this.config).p207116.value).intValue() * 1000) {
            return !bVar.j();
        }
        setDoNotExecute(true);
        return true;
    }
}
