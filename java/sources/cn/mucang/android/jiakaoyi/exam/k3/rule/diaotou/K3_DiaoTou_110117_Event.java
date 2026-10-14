package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110117_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110117_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.f3143f.f3086f) {
            setDoNotExecute(true);
            return true;
        }
        if (((Boolean) ((K3DiaoTouStepConfig) this.config).p210121.value).booleanValue() && bVar.j()) {
            return (eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight)) ? false : true;
        }
        return true;
    }
}
