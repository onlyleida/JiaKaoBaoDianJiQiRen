package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_126100_Event extends d<K3BianDaoChaoCheStepConfig> {
    public K3_BianDaoChaoChe_126100_Event(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoChaoCheStateData bianDaoChaoCheStateData = (BianDaoChaoCheStateData) bVar.f();
        c cVarB = eVar.b();
        Light light = Light.TurnLeftLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        if (((Boolean) ((K3BianDaoChaoCheStepConfig) this.config).p226106.value).booleanValue() && cVarC != null && cVarC.f5252d >= ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226104.value).intValue() * 1000 && bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.before) {
            setDoNotExecute(true);
            return true;
        }
        if (((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226103.value).intValue() != 1) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                if (bianDaoChaoCheStateData.bianDaoChecker.startTurnLeft) {
                    return eVar.d().j(light);
                }
            } else if (bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.turnLeft) {
                setDoNotExecute(true);
                return eVar.d().j(light);
            }
        }
        return true;
    }
}
