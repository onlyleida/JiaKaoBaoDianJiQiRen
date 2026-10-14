package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.QiangZhiLing;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106134_Event extends d<K3ChaoCheStepConfig> {
    private boolean hasQiang;

    public K3_ChaoChe_106134_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.hasQiang = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        c cVarB = eVar.b();
        Light light = Light.TurnLeftLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        if (!((Boolean) ((K3ChaoCheStepConfig) this.config).p206110.value).booleanValue() && !this.hasQiang && cVarC != null) {
            long j = cVarC.f5251a;
            if (j > 0 && j < bVar.p()) {
                QiangZhiLing.isQiang = true;
                this.hasQiang = true;
            }
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (chaoCheStateData.startTurningLeft && chaoCheStateData.state == ChaoCheStateData.State.turnLeft && eVar.d().j(light)) {
                return cVarC != null && cVarC.f5252d > 3000;
            }
            return true;
        }
        if (chaoCheStateData.state != ChaoCheStateData.State.turnLeft || !eVar.d().j(light)) {
            return true;
        }
        setDoNotExecute(true);
        return cVarC != null && cVarC.f5252d > 3000;
    }
}
