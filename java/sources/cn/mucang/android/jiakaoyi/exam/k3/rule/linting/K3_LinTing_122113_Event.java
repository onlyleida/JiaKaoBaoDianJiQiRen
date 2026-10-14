package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122113_Event extends d<K3LinTingStepConfig> {
    private boolean hasLightOn;

    public K3_LinTing_122113_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.hasLightOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3LinTingStepConfig) this.config).p222113.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        LinTingStepData.State state = ((LinTingStepData) bVar.f()).state;
        if (state == LinTingStepData.State.Stopped) {
            CarModel carModelD = eVar.d();
            Light light = Light.TurnLeftLight;
            if (carModelD.j(light)) {
                this.hasLightOn = true;
            }
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(light);
            if (cVarC != null && cVarC.f5252d > 3000) {
                setDoNotExecute(true);
                return true;
            }
        } else if (state == LinTingStepData.State.Start && this.hasLightOn) {
            setDoNotExecute(true);
            return false;
        }
        return true;
    }
}
