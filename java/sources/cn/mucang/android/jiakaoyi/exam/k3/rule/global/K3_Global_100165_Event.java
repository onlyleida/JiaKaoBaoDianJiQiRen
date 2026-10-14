package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100165_Event extends d<K3GlobalStepConfig> {
    private boolean isTingChe;

    public K3_Global_100165_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.isTingChe = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.SeatBelt)) {
            return true;
        }
        if (examProcessor.y(Step.K3_TingChe)) {
            if (!eVar.d().c()) {
                this.isTingChe = true;
            }
        } else if (eVar.d().b()) {
            this.isTingChe = false;
        }
        if (this.isTingChe) {
            return true;
        }
        if (eVar.d().p == KeyState.ON || eVar.d().f5265a > 0) {
            return eVar.d().f5266d;
        }
        return true;
    }
}
