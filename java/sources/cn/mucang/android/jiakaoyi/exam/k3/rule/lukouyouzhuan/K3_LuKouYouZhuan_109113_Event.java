package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouyouzhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouYouZhuan_109113_Event extends d<K3LuKouYouZhuanStepConfig> {
    public K3_LuKouYouZhuan_109113_Event(K3LuKouYouZhuanStepConfig k3LuKouYouZhuanStepConfig, Deduct deduct) {
        super(k3LuKouYouZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        Gear gear = eVar.d().m;
        if (examProcessor.x() && gear != Gear.Invalid) {
            YouZhuanStateData youZhuanStateData = (YouZhuanStateData) bVar.f();
            if (youZhuanStateData.state == YouZhuanStateData.State.Turning) {
                for (int i = Gear.Gear1.gear; i <= ((Integer) ((K3LuKouYouZhuanStepConfig) this.config).p209112.value).intValue(); i++) {
                    if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(i), youZhuanStateData.rpmRate)) {
                        return true;
                    }
                }
                if (gear.gear <= ((Integer) ((K3LuKouYouZhuanStepConfig) this.config).p209112.value).intValue()) {
                    return true;
                }
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
