package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_Step1 extends BaseFinishEvent<K3DiaoTouStepConfig> {
    private K3GlobalStepConfig globalStepConfig;

    public K3_DiaoTou_Step1(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3DiaoTouStepConfig) this.config).p210116.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        if (!this.isJudgeGlobalSpeed) {
            examProcessor.n.c(ConflictSignal.Speed);
        }
        examProcessor.n.c(ConflictSignal.TurnLightLongDistance);
        examProcessor.n.c(ConflictSignal.TurnLightLongTime);
        if (!((Boolean) ((K3DiaoTouStepConfig) this.config).p210138.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.ClutchTime);
            examProcessor.n.c(ConflictSignal.ClutchDistance);
        }
        if (this.globalStepConfig == null) {
            this.globalStepConfig = (K3GlobalStepConfig) examProcessor.r(Step.K3_Global);
        }
        K3GlobalStepConfig k3GlobalStepConfig = this.globalStepConfig;
        if (k3GlobalStepConfig != null && !((Boolean) k3GlobalStepConfig.p200253.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.TurnLight);
            examProcessor.n.c(ConflictSignal.TurnLightError);
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            examProcessor.n.c(ConflictSignal.LianXuBianDao);
        }
        if (((Boolean) ((K3DiaoTouStepConfig) this.config).p210140.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.HouLiu);
        }
        if (((Boolean) ((K3DiaoTouStepConfig) this.config).p210142.value).booleanValue()) {
            return;
        }
        examProcessor.n.c(ConflictSignal.LianXuBianDao);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3DiaoTouStepConfig) this.config).p210101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        if (((Integer) ((K3DiaoTouStepConfig) this.config).p210115.value).intValue() == 1) {
            return diaoTouStateData.state == DiaoTouStateData.State.after;
        }
        if (((Integer) ((K3DiaoTouStepConfig) this.config).p210115.value).intValue() == 2) {
            return diaoTouStateData.state == DiaoTouStateData.State.after || super.isEnd(eVar, examProcessor, bVar);
        }
        return super.isEnd(eVar, examProcessor, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3DiaoTouStepConfig) this.config).p210117.value).booleanValue();
    }
}
