package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116132_Event extends d<K3TingCheStepConfig> {
    private boolean isInit;
    private boolean lastHandbrakeState;

    public K3_TingChe_116132_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.isInit = false;
        this.lastHandbrakeState = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!this.isInit) {
            this.lastHandbrakeState = eVar.d().f5268f;
            this.isInit = true;
            return true;
        }
        if (eVar.d().f5270h && !this.lastHandbrakeState && eVar.d().f5268f) {
            this.lastHandbrakeState = true;
            return false;
        }
        this.lastHandbrakeState = eVar.d().f5268f;
        return true;
    }
}
