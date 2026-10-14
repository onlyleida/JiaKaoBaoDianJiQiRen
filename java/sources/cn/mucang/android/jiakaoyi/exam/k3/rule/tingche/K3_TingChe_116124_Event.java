package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116124_Event extends d<K3TingCheStepConfig> {
    private boolean hadTurnLeftLight;

    public K3_TingChe_116124_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TingCheStepData.State state = ((TingCheStepData) bVar.f()).state;
        if (state == TingCheStepData.State.Stopped || state == TingCheStepData.State.OpenDoor) {
            if (eVar.d().j(Light.TurnLeftLight)) {
                this.hadTurnLeftLight = true;
            }
            if (eVar.d().f() && eVar.d().c()) {
                setDoNotExecute(true);
                return this.hadTurnLeftLight;
            }
        }
        return true;
    }
}
