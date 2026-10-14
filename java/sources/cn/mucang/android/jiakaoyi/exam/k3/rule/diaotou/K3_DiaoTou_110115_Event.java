package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.QiangZhiLing;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110115_Event extends d<K3DiaoTouStepConfig> {
    private boolean hasQiang;
    private long turnLightTime;

    public K3_DiaoTou_110115_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
        this.turnLightTime = 0L;
        this.hasQiang = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        Light light;
        boolean z;
        if (!bVar.f3143f.f3086f) {
            setDoNotExecute(true);
            return true;
        }
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        if (diaoTouStateData.isLeftDiaoTou) {
            light = Light.TurnLeftLight;
            z = !((Boolean) ((K3DiaoTouStepConfig) this.config).p210126.value).booleanValue();
        } else {
            light = Light.TurnRightLight;
            z = true;
        }
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(light);
        if (!((Boolean) ((K3DiaoTouStepConfig) this.config).p210106.value).booleanValue() && !this.hasQiang && cVarC != null) {
            long j = cVarC.f5251a;
            if (j > 0 && j < bVar.p()) {
                this.hasQiang = true;
                QiangZhiLing.isQiang = true;
            }
        }
        if (z) {
            if (diaoTouStateData.isLeftDiaoTou ? eVar.d().j(Light.TurnRightLight) : eVar.d().j(Light.TurnLeftLight)) {
                if (this.turnLightTime <= 0) {
                    this.turnLightTime = examProcessor.i;
                }
                if (examProcessor.i - this.turnLightTime > ((Integer) ((K3DiaoTouStepConfig) this.config).p210119.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                this.turnLightTime = 0L;
            }
        }
        return true;
    }
}
