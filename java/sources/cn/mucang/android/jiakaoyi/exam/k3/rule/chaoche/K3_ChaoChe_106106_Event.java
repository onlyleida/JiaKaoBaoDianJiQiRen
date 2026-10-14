package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106106_Event extends d<K3ChaoCheStepConfig> {
    public K3_ChaoChe_106106_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (!bVar.j()) {
            return true;
        }
        setDoNotExecute(true);
        return chaoCheStateData.hadTurnLeft;
    }
}
