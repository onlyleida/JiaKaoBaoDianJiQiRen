package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100176_Event extends d<K3GlobalStepConfig> {
    private boolean haveUsedTurnLeftLight;
    private boolean haveUsedTurnRightLight;

    public K3_Global_100176_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.haveUsedTurnLeftLight = false;
        this.haveUsedTurnRightLight = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        c cVarB = eVar.b();
        Light light = Light.TurnRightLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        c cVarB2 = eVar.b();
        Light light2 = Light.TurnLeftLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2 = cVarB2.c(light2);
        if (cVarC == null || cVarC2 == null) {
            return true;
        }
        if (eVar.d().j(light) && eVar.d().j(light2)) {
            return true;
        }
        int iIntValue = ((Integer) ((K3GlobalStepConfig) this.config).p200191.value).intValue() * 1000;
        if (cVarC.c) {
            long j = cVarC2.f5254f;
            if (j < bVar.f().startTime) {
                j = 0;
            }
            return j <= 0 || cVarC.f5251a - j > ((long) iIntValue);
        }
        if (!cVarC2.c) {
            return true;
        }
        long j2 = cVarC.f5254f;
        if (j2 < bVar.f().startTime) {
            j2 = 0;
        }
        return j2 <= 0 || cVarC2.f5251a - j2 > ((long) iIntValue);
    }
}
