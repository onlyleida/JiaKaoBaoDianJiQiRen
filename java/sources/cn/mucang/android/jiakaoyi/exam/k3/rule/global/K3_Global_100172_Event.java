package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.g.b;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100172_Event extends d<K3GlobalStepConfig> {
    public K3_Global_100172_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isSuccess(e eVar, Light light, IntegerValue integerValue) {
        b.c cVarC = eVar.b().c(light);
        return cVarC == null || !cVarC.c || cVarC.f5253e <= ((float) ((Integer) integerValue.value).intValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (examProcessor.n.b(ConflictSignal.TurnLightLongDistance)) {
            return true;
        }
        IntegerValue integerValue = ((K3GlobalStepConfig) this.config).p200144;
        return isSuccess(eVar, Light.TurnLeftLight, integerValue) && isSuccess(eVar, Light.TurnRightLight, integerValue);
    }
}
