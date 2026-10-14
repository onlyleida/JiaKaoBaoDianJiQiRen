package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_126112_Event extends d<K3BianDaoChaoCheStepConfig> {
    private boolean hasOn;

    public K3_BianDaoChaoChe_126112_Event(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
        this.hasOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z = this.hasOn || eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight);
        this.hasOn = z;
        if (z) {
            setDoNotExecute(true);
            return true;
        }
        if (examProcessor.i - bVar.p() >= ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226115.value).intValue() * 1000) {
            return this.hasOn;
        }
        return true;
    }
}
