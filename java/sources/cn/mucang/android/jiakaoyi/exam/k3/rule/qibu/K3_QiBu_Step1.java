package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_Step1 extends BaseFinishEvent<K3QiBuStepConfig> {
    public K3_QiBu_Step1(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3QiBuStepConfig) this.config).p203115.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.HighRpm);
        examProcessor.n.c(ConflictSignal.ClutchTime);
        examProcessor.n.c(ConflictSignal.ClutchDistance);
        examProcessor.n.c(ConflictSignal.EngineOff);
        examProcessor.n.c(ConflictSignal.TurnLightLongDistance);
        examProcessor.n.c(ConflictSignal.TurnLightLongTime);
        examProcessor.n.c(ConflictSignal.TurnLightError);
        examProcessor.n.c(ConflictSignal.SeatBelt);
        examProcessor.n.c(ConflictSignal.HouLiu);
        examProcessor.n.c(ConflictSignal.QiBuNoShouSha);
        if (((Boolean) ((K3QiBuStepConfig) this.config).p203126.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressFullLine);
        }
        if (((Boolean) ((K3QiBuStepConfig) this.config).p203135.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressDashLine);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3QiBuStepConfig) this.config).p203101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3QiBuStepConfig) this.config).p203116.value).booleanValue();
    }
}
