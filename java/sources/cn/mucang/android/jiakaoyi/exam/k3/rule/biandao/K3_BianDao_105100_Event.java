package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105100_Event extends d<K3BianDaoStepConfig> {
    public K3_BianDao_105100_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
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
        c cVarB = eVar.b();
        Light light = Light.TurnLeftLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        if (((Boolean) ((K3BianDaoStepConfig) this.config).p205106.value).booleanValue() && cVarC != null && cVarC.f5252d >= ((Integer) ((K3BianDaoStepConfig) this.config).p205104.value).intValue() * 1000 && bianDaoStateData.bianDaoChecker.state == BianDaoState.before) {
            setDoNotExecute(true);
            return true;
        }
        if (((Integer) ((K3BianDaoStepConfig) this.config).p205103.value).intValue() != 1) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                if (bianDaoStateData.bianDaoChecker.startTurnLeft) {
                    return eVar.d().j(light);
                }
            } else if (bianDaoStateData.bianDaoChecker.state == BianDaoState.turnLeft) {
                setDoNotExecute(true);
                return eVar.d().j(light);
            }
        }
        return true;
    }
}
