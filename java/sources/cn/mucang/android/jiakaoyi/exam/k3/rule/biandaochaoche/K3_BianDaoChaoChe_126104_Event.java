package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_126104_Event extends d<K3BianDaoChaoCheStepConfig> {
    public K3_BianDaoChaoChe_126104_Event(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.x() && eVar.d().m != Gear.Invalid) {
            BianDaoChaoCheStateData bianDaoChaoCheStateData = (BianDaoChaoCheStateData) bVar.f();
            for (int iIntValue = ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226107.value).intValue(); iIntValue < 7; iIntValue++) {
                if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(iIntValue), bianDaoChaoCheStateData.rpmRate)) {
                    return true;
                }
            }
            if (eVar.d().m.gear < ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226107.value).intValue()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
