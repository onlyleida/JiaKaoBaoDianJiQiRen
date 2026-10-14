package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_101115_Event extends d<K3ShangCheStepConfig> {
    private boolean isInit;
    private K3GlobalStepConfig k3GlobalStepConfig;
    private boolean lastEngineStart;
    private boolean lastKeyStarting;

    public K3_ShangChe_101115_Event(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
        super(k3ShangCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3ShangCheStepConfig) this.config).p201125.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!this.isInit) {
            this.isInit = true;
            this.lastEngineStart = eVar.d().f();
            this.lastKeyStarting = eVar.d().J;
            this.k3GlobalStepConfig = (K3GlobalStepConfig) examProcessor.r(Step.K3_Global);
            return true;
        }
        CarModel carModelD = eVar.d();
        K3GlobalStepConfig k3GlobalStepConfig = this.k3GlobalStepConfig;
        if (k3GlobalStepConfig != null && ((Boolean) k3GlobalStepConfig.p200235.value).booleanValue()) {
            if (!this.lastKeyStarting && carModelD.J && carModelD.j(Light.FarLight)) {
                this.lastKeyStarting = eVar.d().J;
                return false;
            }
            this.lastKeyStarting = eVar.d().J;
            return true;
        }
        if (carModelD.p == KeyState.Start && carModelD.j(Light.FarLight)) {
            this.lastEngineStart = eVar.d().f();
            return false;
        }
        if (!this.lastEngineStart && eVar.d().f() && carModelD.j(Light.FarLight)) {
            this.lastEngineStart = eVar.d().f();
            return false;
        }
        this.lastEngineStart = eVar.d().f();
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
