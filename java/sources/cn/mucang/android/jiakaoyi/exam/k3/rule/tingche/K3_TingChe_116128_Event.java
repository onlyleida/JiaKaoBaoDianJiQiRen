package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.GlobalThreeTouchChecker;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116128_Event extends d<K3TingCheStepConfig> {
    private GlobalThreeTouchChecker globalThreeTouchChecker;
    public boolean isFinishThreeTouch;
    private boolean lastDoorClose;

    public K3_TingChe_116128_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216153.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        K3ShangCheStepConfig k3ShangCheStepConfig;
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        if (tingCheStepData.state == TingCheStepData.State.Stopped && (k3ShangCheStepConfig = (K3ShangCheStepConfig) examProcessor.r(Step.K3_ShangChe)) != null && this.globalThreeTouchChecker == null) {
            this.globalThreeTouchChecker = new GlobalThreeTouchChecker(k3ShangCheStepConfig, false);
        }
        GlobalThreeTouchChecker globalThreeTouchChecker = this.globalThreeTouchChecker;
        if (globalThreeTouchChecker != null) {
            globalThreeTouchChecker.check(eVar, bVar, examProcessor);
            if (tingCheStepData.state == TingCheStepData.State.OpenDoor) {
                setDoNotExecute(true);
                return this.globalThreeTouchChecker.touchSensorList.contains(TouchSensor.OutsideMirror);
            }
        }
        return true;
    }
}
