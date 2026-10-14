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
public class K3_Global_100204_Event extends d<K3GlobalStepConfig> {
    private long pressCenterDashLineTime;

    public K3_Global_100204_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.PressDashLine)) {
            this.pressCenterDashLineTime = 0L;
            return true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressCenterDashLine)) {
                if (this.pressCenterDashLineTime == 0) {
                    this.pressCenterDashLineTime = examProcessor.i;
                }
                if (examProcessor.i - this.pressCenterDashLineTime > ((Integer) ((K3GlobalStepConfig) this.config).p200197.value).intValue() * 1000) {
                    return false;
                }
            } else {
                this.pressCenterDashLineTime = 0L;
            }
        }
        return true;
    }
}
