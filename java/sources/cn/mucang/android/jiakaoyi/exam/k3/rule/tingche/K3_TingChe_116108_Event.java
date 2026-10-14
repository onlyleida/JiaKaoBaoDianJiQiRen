package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116108_Event extends d<K3TingCheStepConfig> {
    public K3_TingChe_116108_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216104.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.TurnRightLight);
        if (cVarC != null && cVarC.f5252d > ((Integer) ((K3TingCheStepConfig) this.config).p216105.value).intValue() * 1000) {
            setDoNotExecute(true);
            return true;
        }
        if (!((Boolean) ((K3TingCheStepConfig) this.config).p216144.value).booleanValue() && !((Boolean) ((K3TingCheStepConfig) this.config).p216145.value).booleanValue()) {
            TingCheStepData.State state = tingCheStepData.state;
            if (state == TingCheStepData.State.Stopping || (state == TingCheStepData.State.Stopped && !carModelD.f5268f)) {
                setDoNotExecute(true);
                return false;
            }
        } else {
            if (((Boolean) ((K3TingCheStepConfig) this.config).p216144.value).booleanValue() && tingCheStepData.state == TingCheStepData.State.Stopped && !carModelD.f5268f) {
                setDoNotExecute(true);
                return false;
            }
            if (((Boolean) ((K3TingCheStepConfig) this.config).p216145.value).booleanValue() && tingCheStepData.state == TingCheStepData.State.Stopped && !carModelD.f()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return !bVar.j();
    }
}
