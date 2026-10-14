package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106131_Event extends d<K3ChaoCheStepConfig> {
    public long startCahocheTime;

    public K3_ChaoChe_106131_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
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
        if (chaoCheStateData.state == ChaoCheStateData.State.chaoCheDao && this.startCahocheTime == 0) {
            this.startCahocheTime = examProcessor.i;
        }
        if (eVar.d().j(Light.TurnRightLight)) {
            setDoNotExecute(true);
            return true;
        }
        long j = this.startCahocheTime;
        if (j <= 0 || examProcessor.i - j <= ((Integer) ((K3ChaoCheStepConfig) this.config).p206140.value).intValue() * 1000) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
