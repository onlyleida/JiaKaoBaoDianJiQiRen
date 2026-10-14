package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108114_Event extends d<K3LuKouZuoZhuanStepConfig> {
    public K3_LuKouZuoZhuan_108114_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.x() && eVar.d().m != Gear.Invalid) {
            ZuoZhuanStateData zuoZhuanStateData = (ZuoZhuanStateData) bVar.f();
            if (zuoZhuanStateData.state == ZuoZhuanStateData.State.Turning) {
                for (int i = Gear.Gear1.gear; i <= ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208112.value).intValue(); i++) {
                    if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(i), zuoZhuanStateData.rpmRate)) {
                        return true;
                    }
                }
                int i2 = eVar.d().m.gear;
                if (i2 > Gear.Gear5.gear || i2 <= ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208112.value).intValue()) {
                    return true;
                }
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
