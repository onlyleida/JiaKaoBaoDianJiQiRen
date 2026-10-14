package cn.mucang.android.jiakaoyi.exam.k3.rule.shangche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.childstep.AroundCarStepChecker;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ShangCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ShangChe_101108_Event extends d<K3ShangCheStepConfig> {
    public K3_ShangChe_101108_Event(K3ShangCheStepConfig k3ShangCheStepConfig, Deduct deduct) {
        super(k3ShangCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3ShangCheStepConfig) this.config).p201123.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.p().isAuto()) {
            setDoNotExecute(true);
            return true;
        }
        AroundCarStepChecker aroundCarStepChecker = ((ShangCheStepData) bVar.f()).aroundCarStepChecker;
        if (aroundCarStepChecker == null) {
            setDoNotExecute(true);
            return true;
        }
        if (!aroundCarStepChecker.startAround || eVar.d().m == Gear.Invalid) {
            return true;
        }
        if (eVar.d().m != Gear.GearN && eVar.d().m != Gear.GearP) {
            return false;
        }
        setDoNotExecute(true);
        return true;
    }
}
