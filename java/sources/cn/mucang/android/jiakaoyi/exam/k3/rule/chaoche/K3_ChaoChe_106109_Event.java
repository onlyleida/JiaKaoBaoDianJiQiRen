package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106109_Event extends d<K3ChaoCheStepConfig> {
    public K3_ChaoChe_106109_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (((Boolean) ((K3ChaoCheStepConfig) this.config).p206105.value).booleanValue()) {
            if (((Integer) ((K3ChaoCheStepConfig) this.config).p206106.value).intValue() == 0 && chaoCheStateData.state == ChaoCheStateData.State.turnLeft) {
                if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                    setDoNotExecute(true);
                }
                return chaoCheStateData.labaBefore;
            }
            if (((Integer) ((K3ChaoCheStepConfig) this.config).p206106.value).intValue() == 1 && chaoCheStateData.state == ChaoCheStateData.State.turnRightToBack) {
                if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                    setDoNotExecute(true);
                }
                return chaoCheStateData.labaChacheDao;
            }
            if (((Integer) ((K3ChaoCheStepConfig) this.config).p206106.value).intValue() == 2 && bVar.j()) {
                if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                    setDoNotExecute(true);
                }
                return chaoCheStateData.laba;
            }
        }
        return true;
    }
}
