package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110113_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110113_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.x() && eVar.d().m != Gear.Invalid) {
            DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
            if (diaoTouStateData.state == DiaoTouStateData.State.diaotou) {
                for (int i = Gear.Gear1.gear; i <= ((Integer) ((K3DiaoTouStepConfig) this.config).p210112.value).intValue(); i++) {
                    if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(i), diaoTouStateData.rpmRate)) {
                        return true;
                    }
                }
                if (eVar.d().m.gear > Gear.Gear5.gear || eVar.d().m.gear <= ((Integer) ((K3DiaoTouStepConfig) this.config).p210112.value).intValue()) {
                    return true;
                }
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
