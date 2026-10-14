package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ThreeTouchStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_101101_Event extends d<K3ShangCheStepConfig> {
    public K3_ShangChe_101101_Event(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
        super(k3ShangCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3ShangCheStepConfig) this.config).p201111.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ShangCheStepData shangCheStepData = (ShangCheStepData) bVar.f();
        ThreeTouchStepChecker threeTouchStepChecker = shangCheStepData.threeTouchStepChecker;
        if (threeTouchStepChecker == null) {
            setDoNotExecute(true);
            return true;
        }
        if (shangCheStepData.thereTouchStep.startTime == 0) {
            return true;
        }
        ArrayList<Integer> arrayList = threeTouchStepChecker.orderList;
        TouchSensor touchSensor = TouchSensor.InsideMirror;
        if (!arrayList.contains(Integer.valueOf(touchSensor.id + 1))) {
            setDoNotExecute(true);
            return true;
        }
        if (examProcessor.i - shangCheStepData.thereTouchStep.startTime <= ((Integer) ((K3ShangCheStepConfig) this.config).p201115.value).intValue() * 1000 && !shangCheStepData.thereTouchStep.isEnd) {
            return true;
        }
        setDoNotExecute(true);
        return shangCheStepData.threeTouchStepChecker.touchSensorList.contains(touchSensor);
    }
}
