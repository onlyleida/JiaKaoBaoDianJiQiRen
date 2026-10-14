package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_Step1 extends BaseFinishEvent<K3HuiCheStepConfig> {
    public K3_HuiChe_Step1(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3HuiCheStepConfig) this.config).p207112.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        if (!this.isJudgeGlobalSpeed) {
            examProcessor.n.c(ConflictSignal.Speed);
        }
        if (((Boolean) ((K3HuiCheStepConfig) this.config).p207132.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressDashLine);
        }
        if (((Boolean) ((K3HuiCheStepConfig) this.config).p207133.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressFullLine);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3HuiCheStepConfig) this.config).p207101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zIsEnd = super.isEnd(eVar, examProcessor, bVar);
        HuiCheStepData huiCheStepData = (HuiCheStepData) bVar.f();
        if (((Integer) ((K3HuiCheStepConfig) this.config).p207136.value).intValue() == 1) {
            if (huiCheStepData.haveThanSpeed) {
                if (huiCheStepData.hadFootBrakeOn && huiCheStepData.reachRightOffset) {
                    return true;
                }
            } else if (huiCheStepData.reachRightOffset) {
                return true;
            }
        }
        return zIsEnd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3HuiCheStepConfig) this.config).p207113.value).booleanValue();
    }
}
