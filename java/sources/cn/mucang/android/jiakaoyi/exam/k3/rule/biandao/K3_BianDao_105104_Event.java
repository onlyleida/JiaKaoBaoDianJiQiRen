package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105104_Event extends d<K3BianDaoStepConfig> {
    public K3_BianDao_105104_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        if (bianDaoStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (examProcessor.x() && eVar.d().m != Gear.Invalid) {
            for (int iIntValue = ((Integer) ((K3BianDaoStepConfig) this.config).p205107.value).intValue(); iIntValue < 7; iIntValue++) {
                if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(iIntValue), bianDaoStateData.rpmRate)) {
                    return true;
                }
            }
            if (eVar.d().m.gear >= Gear.Gear1.gear && eVar.d().m.gear <= Gear.Gear6.gear && eVar.d().m.gear < ((Integer) ((K3BianDaoStepConfig) this.config).p205107.value).intValue()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
