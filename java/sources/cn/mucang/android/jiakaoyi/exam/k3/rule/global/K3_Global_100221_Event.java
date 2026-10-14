package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100221_Event extends d<K3GlobalStepConfig> {
    private boolean isPressArea;

    public K3_Global_100221_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.isPressArea = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.PressFullLine)) {
            return true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h()) {
            this.isPressArea = K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressNoEnterArea);
        }
        return !this.isPressArea;
    }
}
