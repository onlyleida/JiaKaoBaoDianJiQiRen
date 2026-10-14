package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_Step1 extends BaseFinishEvent<K3BianDaoChaoCheStepConfig> {
    public K3_BianDaoChaoChe_Step1(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226113.value).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.TurnLight);
        if (!this.isJudgeGlobalSpeed) {
            examProcessor.n.c(ConflictSignal.Speed);
        }
        examProcessor.n.c(ConflictSignal.ChangeLane);
        examProcessor.n.c(ConflictSignal.TurnLightError);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3BianDaoChaoCheStepConfig) this.config).p226101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoChaoCheStateData bianDaoChaoCheStateData = (BianDaoChaoCheStateData) bVar.f();
        if (((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226112.value).intValue() == 1) {
            return bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.after;
        }
        if (((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226112.value).intValue() == 2) {
            return bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.after || super.isEnd(eVar, examProcessor, bVar);
        }
        return super.isEnd(eVar, examProcessor, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3BianDaoChaoCheStepConfig) this.config).p226102.value).booleanValue();
    }
}
