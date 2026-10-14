package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122112_Event extends d<K3LinTingStepConfig> {
    private boolean hasLightOn;

    public K3_LinTing_122112_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.hasLightOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3LinTingStepConfig) this.config).p222104.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        c cVarB = eVar.b();
        Light light = Light.TurnRightLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        if (eVar.d().j(light)) {
            this.hasLightOn = true;
        }
        if (cVarC == null || cVarC.f5252d <= 3000) {
            return (this.hasLightOn && ((LinTingStepData) bVar.f()).state == LinTingStepData.State.Stopped) ? false : true;
        }
        setDoNotExecute(true);
        return true;
    }
}
