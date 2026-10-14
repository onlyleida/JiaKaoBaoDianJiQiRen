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
public class K3_ChaoChe_106118_Event extends d<K3ChaoCheStepConfig> {
    private boolean hasOn;

    public K3_ChaoChe_106118_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.hasOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((ChaoCheStateData) bVar.f()).isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        boolean z = this.hasOn || (eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight));
        this.hasOn = z;
        if (z) {
            setDoNotExecute(true);
            return true;
        }
        if (examProcessor.i - bVar.p() > ((Integer) ((K3ChaoCheStepConfig) this.config).p206120.value).intValue() * 1000) {
            return this.hasOn;
        }
        return true;
    }
}
