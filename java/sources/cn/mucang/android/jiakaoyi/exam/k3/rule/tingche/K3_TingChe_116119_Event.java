package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116119_Event extends d<K3TingCheStepConfig> {
    public K3_TingChe_116119_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC;
        TingCheStepData.State state = ((TingCheStepData) bVar.f()).state;
        if ((state != TingCheStepData.State.Start && state != TingCheStepData.State.Stopping) || (cVarC = eVar.b().c(Light.TurnLeftLight)) == null || cVarC.f5252d <= ((Integer) ((K3TingCheStepConfig) this.config).p216129.value).intValue() * 1000) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
