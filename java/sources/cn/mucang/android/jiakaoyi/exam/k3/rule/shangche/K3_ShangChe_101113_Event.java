package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepData;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_101113_Event extends d<K3ShangCheStepConfig> {
    public K3_ShangChe_101113_Event(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
        super(k3ShangCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3ShangCheStepConfig) this.config).p201111.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ShangCheStepData shangCheStepData = (ShangCheStepData) bVar.f();
        if (shangCheStepData.threeTouchStepChecker == null) {
            setDoNotExecute(true);
            return true;
        }
        ChildStepData childStepData = shangCheStepData.thereTouchStep;
        if (childStepData.startTime == 0 || !childStepData.isTimeOut || childStepData.finish) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
