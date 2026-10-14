package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ChildStepData;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.ThreeTouchStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_101116_Event extends d<K3ShangCheStepConfig> {
    public K3_ShangChe_101116_Event(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
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
        if (((Boolean) ((K3ShangCheStepConfig) this.config).p201167.value).booleanValue()) {
            if (shangCheStepData.isFinishGlobalThreeTouch) {
                setDoNotExecute(true);
                return true;
            }
            if (bVar.j()) {
                return false;
            }
        } else {
            if (shangCheStepData.threeTouchStepChecker == null) {
                setDoNotExecute(true);
                return true;
            }
            ChildStepData childStepData = shangCheStepData.thereTouchStep;
            if (childStepData.isEnd) {
                ThreeTouchStepChecker threeTouchStepChecker = shangCheStepData.threeTouchStepChecker;
                if (threeTouchStepChecker.orderError || threeTouchStepChecker.countError) {
                    setDoNotExecute(true);
                    return false;
                }
            }
            if (bVar.j() && !childStepData.finish) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
