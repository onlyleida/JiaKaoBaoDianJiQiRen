package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.QiBuStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103128_Event extends d<K3QiBuStepConfig> {
    private boolean hadTurnLeftLight;
    private boolean haveQiBu;
    private boolean isLight3s;

    public K3_QiBu_103128_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        QiBuStepData qiBuStepData = (QiBuStepData) bVar.f();
        c cVarB = eVar.b();
        Light light = Light.TurnLeftLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        if (eVar.d().j(light)) {
            this.hadTurnLeftLight = true;
        }
        if (!this.isLight3s) {
            this.isLight3s = cVarC != null && cVarC.f5252d >= 3000;
        }
        int iIntValue = ((Integer) ((K3QiBuStepConfig) this.config).p203109.value).intValue();
        if (qiBuStepData.isCarOn && eVar.d().c()) {
            if (!this.haveQiBu) {
                this.haveQiBu = true;
            }
            if (iIntValue == 0) {
                setDoNotExecute(true);
                if (this.hadTurnLeftLight) {
                    return this.isLight3s;
                }
            } else if (iIntValue == 2) {
                setDoNotExecute(true);
                if (this.hadTurnLeftLight) {
                    return this.isLight3s && cVarC != null && cVarC.c;
                }
            }
        }
        if (this.haveQiBu && iIntValue == 1) {
            if (cVarC != null && cVarC.c && cVarC.f5252d >= 3000) {
                setDoNotExecute(true);
                return true;
            }
            if (this.hadTurnLeftLight) {
                if (eVar.d().j(light)) {
                    return !bVar.j();
                }
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
