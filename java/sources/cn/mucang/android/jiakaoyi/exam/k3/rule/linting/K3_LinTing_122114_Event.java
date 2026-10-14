package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStoppedChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122114_Event extends d<K3LinTingStepConfig> {
    private boolean startCheck;
    private CarStoppedChecker stoppedChecker;

    public K3_LinTing_122114_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.stoppedChecker = new CarStoppedChecker();
        this.startCheck = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        LinTingStepData linTingStepData = (LinTingStepData) bVar.f();
        if (!((Boolean) ((K3LinTingStepConfig) this.config).p222126.value).booleanValue() || !linTingStepData.carStop || !K3CollisionManager.getInstance().hasHpCollision(eVar)) {
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
