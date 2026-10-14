package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110114_Event extends d<K3DiaoTouStepConfig> {
    private boolean hasOn;

    public K3_DiaoTou_110114_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
        this.hasOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zJ;
        if (!bVar.f3143f.f3086f) {
            setDoNotExecute(true);
            return true;
        }
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        Light light = Light.TurnLeftLight;
        Light light2 = !diaoTouStateData.isLeftDiaoTou ? Light.TurnRightLight : light;
        if (((Boolean) ((K3DiaoTouStepConfig) this.config).p210126.value).booleanValue()) {
            zJ = eVar.d().j(light) || eVar.d().j(Light.TurnRightLight);
        } else {
            zJ = eVar.d().j(light2);
        }
        boolean z = this.hasOn || zJ;
        this.hasOn = z;
        if (z) {
            setDoNotExecute(true);
            return true;
        }
        if (examProcessor.i - bVar.p() >= ((Integer) ((K3DiaoTouStepConfig) this.config).p210118.value).intValue() * 1000) {
            return this.hasOn;
        }
        return true;
    }
}
