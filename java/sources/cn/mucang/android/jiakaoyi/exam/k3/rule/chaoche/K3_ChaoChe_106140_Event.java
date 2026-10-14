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
public class K3_ChaoChe_106140_Event extends d<K3ChaoCheStepConfig> {
    private int farLightCount;
    private boolean lastFarLight;

    public K3_ChaoChe_106140_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.lastFarLight = false;
        this.farLightCount = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return !((Boolean) ((K3ChaoCheStepConfig) this.config).p206147.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        boolean zJ = eVar.d().j(Light.FarLight);
        ChaoCheStateData.State state = chaoCheStateData.state;
        if (state == ChaoCheStateData.State.before || state == ChaoCheStateData.State.preTurnLeft) {
            if (!this.lastFarLight && zJ) {
                this.farLightCount++;
            }
            if (this.farLightCount >= 2) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            this.farLightCount = 0;
        }
        this.lastFarLight = zJ;
        if (state != ChaoCheStateData.State.turnLeft) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        this.lastFarLight = eVar.d().j(Light.FarLight);
    }
}
