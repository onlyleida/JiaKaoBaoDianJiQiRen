package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116127_Event extends d<K3TingCheStepConfig> {
    private boolean startCheck;

    public K3_TingChe_116127_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.startCheck = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        if (!((Boolean) ((K3TingCheStepConfig) this.config).p216151.value).booleanValue() || !tingCheStepData.carStop || !K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            return true;
        }
        if (this.startCheck) {
            return K3CollisionManager.getInstance().carBodyInArea(eVar, examProcessor, PressLineType.FullInTingCheArea);
        }
        if (eVar.d().M != 3) {
            return true;
        }
        this.startCheck = true;
        return K3CollisionManager.getInstance().carBodyInArea(eVar, examProcessor, PressLineType.FullInTingCheArea);
    }
}
