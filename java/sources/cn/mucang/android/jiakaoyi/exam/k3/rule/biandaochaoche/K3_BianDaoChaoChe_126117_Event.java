package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.exam.k3.helper.QiangZhiLing;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_126117_Event extends d<K3BianDaoChaoCheStepConfig> {
    private boolean hasQiang;

    public K3_BianDaoChaoChe_126117_Event(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
        this.hasQiang = false;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0044  */
    /* JADX WARN: Code duplicated, block: B:20:0x0057  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z;
        boolean z2;
        BianDaoChaoCheStateData bianDaoChaoCheStateData = (BianDaoChaoCheStateData) bVar.f();
        c cVarB = eVar.b();
        Light light = Light.TurnRightLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2 = eVar.b().c(Light.TurnLeftLight);
        if (!((Boolean) ((K3BianDaoChaoCheStepConfig) this.config).p226105.value).booleanValue() && !this.hasQiang) {
            if (cVarC != null) {
                long j = cVarC.f5251a;
                if (j <= 0 || j >= bVar.p()) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            if (cVarC2 != null) {
                long j2 = cVarC2.f5251a;
                if (j2 <= 0 || j2 >= bVar.p()) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            if (z || z2) {
                QiangZhiLing.isQiang = true;
                this.hasQiang = true;
            }
        }
        if (((Boolean) ((K3BianDaoChaoCheStepConfig) this.config).p226106.value).booleanValue() && cVarC != null && cVarC.f5252d >= ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226104.value).intValue() * 1000 && bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.before) {
            setDoNotExecute(true);
            return true;
        }
        if (((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226103.value).intValue() != 2) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                if (bianDaoChaoCheStateData.bianDaoChecker.startTurnRight && eVar.d().j(light)) {
                    return cVarC != null && cVarC.f5252d >= ((long) (((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226104.value).intValue() * 1000));
                }
            } else if (bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.turnRight && eVar.d().j(light)) {
                setDoNotExecute(true);
                return cVarC != null && cVarC.f5252d >= ((long) (((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226104.value).intValue() * 1000));
            }
        }
        return true;
    }
}
