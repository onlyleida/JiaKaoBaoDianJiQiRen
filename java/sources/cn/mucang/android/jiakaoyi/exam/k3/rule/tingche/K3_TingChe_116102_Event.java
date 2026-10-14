package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116102_Event extends d<K3TingCheStepConfig> {
    private boolean hasBreakDown;

    public K3_TingChe_116102_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.hasBreakDown = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216111.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TingCheStepData.State state = ((TingCheStepData) bVar.f()).state;
        if (state == TingCheStepData.State.Start) {
            if (!(!eVar.d().f5269g)) {
                this.hasBreakDown = true;
            }
        } else if (state == TingCheStepData.State.Stopped) {
            if (!this.hasBreakDown) {
                return false;
            }
            setDoNotExecute(true);
            return true;
        }
        return true;
    }
}
