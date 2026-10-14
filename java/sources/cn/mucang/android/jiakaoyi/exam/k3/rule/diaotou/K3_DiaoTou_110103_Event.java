package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110103_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110103_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (bVar.f3143f.f3086f) {
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.TurnLeftLight);
            return cVarC == null || cVarC.f5252d <= ((long) (((Integer) ((K3DiaoTouStepConfig) this.config).p210109.value).intValue() * 1000));
        }
        setDoNotExecute(true);
        return true;
    }
}
