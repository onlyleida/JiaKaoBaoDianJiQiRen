package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_Step1 extends BaseFinishEvent<K3BianDaoStepConfig> {
    public K3_BianDao_Step1(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3BianDaoStepConfig) this.config).p205113.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.TurnLight);
        if (!this.isJudgeGlobalSpeed) {
            examProcessor.n.c(ConflictSignal.Speed);
        }
        examProcessor.n.c(ConflictSignal.ChangeLane);
        examProcessor.n.c(ConflictSignal.TurnLightError);
        if (((Boolean) ((K3BianDaoStepConfig) this.config).p205130.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressDashLine);
        }
        if (((Boolean) ((K3BianDaoStepConfig) this.config).p205131.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressFullLine);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3BianDaoStepConfig) this.config).p205101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        if (((Integer) ((K3BianDaoStepConfig) this.config).p205112.value).intValue() == 1) {
            return bianDaoStateData.bianDaoChecker.state == BianDaoState.after;
        }
        if (((Integer) ((K3BianDaoStepConfig) this.config).p205112.value).intValue() == 2) {
            return bianDaoStateData.bianDaoChecker.state == BianDaoState.after || super.isEnd(eVar, examProcessor, bVar);
        }
        return super.isEnd(eVar, examProcessor, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3BianDaoStepConfig) this.config).p205114.value).booleanValue();
    }
}
