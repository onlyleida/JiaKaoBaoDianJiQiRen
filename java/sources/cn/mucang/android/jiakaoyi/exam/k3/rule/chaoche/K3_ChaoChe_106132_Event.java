package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106132_Event extends d<K3ChaoCheStepConfig> {
    public long startCahocheTime;

    public K3_ChaoChe_106132_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (!examProcessor.x() || eVar.d().m == Gear.Invalid) {
            setDoNotExecute(true);
            return true;
        }
        for (int iIntValue = ((Integer) ((K3ChaoCheStepConfig) this.config).p206141.value).intValue() + 1; iIntValue < 7; iIntValue++) {
            if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(iIntValue), chaoCheStateData.rpmRate)) {
                return true;
            }
        }
        if (eVar.d().m.gear < Gear.Gear1.gear || eVar.d().m.gear > Gear.Gear5.gear || eVar.d().m.gear >= ((Integer) ((K3ChaoCheStepConfig) this.config).p206141.value).intValue() + 1) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
