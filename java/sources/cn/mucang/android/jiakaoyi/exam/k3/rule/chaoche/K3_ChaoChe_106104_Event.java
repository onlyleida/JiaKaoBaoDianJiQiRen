package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106104_Event extends d<K3ChaoCheStepConfig> {
    public K3_ChaoChe_106104_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.j()) {
            return true;
        }
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            if (chaoCheStateData.isFinishTurnLight) {
                return true;
            }
            setDoNotExecute(true);
            return false;
        }
        if (((Boolean) ((K3ChaoCheStepConfig) this.config).p206107.value).booleanValue()) {
            return chaoCheStateData.state == ChaoCheStateData.State.after;
        }
        ChaoCheStateData.State state = chaoCheStateData.state;
        return state == ChaoCheStateData.State.chaoCheDao || state == ChaoCheStateData.State.turnRightToBack || state == ChaoCheStateData.State.after;
    }
}
