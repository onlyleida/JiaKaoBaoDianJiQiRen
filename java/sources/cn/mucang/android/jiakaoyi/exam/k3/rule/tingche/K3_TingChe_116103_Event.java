package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116103_Event extends d<K3TingCheStepConfig> {
    private boolean hasStopped;

    public K3_TingChe_116103_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        if (tingCheStepData.state == TingCheStepData.State.Stopped) {
            this.hasStopped = true;
        }
        if (bVar.j()) {
            return this.hasStopped;
        }
        if (eVar.d().C - tingCheStepData.startEstimateDistance <= ((Integer) ((K3TingCheStepConfig) this.config).p216124.value).intValue()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
