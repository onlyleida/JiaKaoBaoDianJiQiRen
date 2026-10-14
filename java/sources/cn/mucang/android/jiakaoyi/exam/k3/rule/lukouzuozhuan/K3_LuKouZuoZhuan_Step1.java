package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_Step1 extends BaseFinishEvent<K3LuKouZuoZhuanStepConfig> {
    private K3GlobalStepConfig globalStepConfig;

    public K3_LuKouZuoZhuan_Step1(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208116.value).intValue();
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
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3LuKouZuoZhuanStepConfig) this.config).p208101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        int iIntValue = ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208115.value).intValue();
        ZuoZhuanStateData zuoZhuanStateData = (ZuoZhuanStateData) bVar.f();
        if (iIntValue == 1) {
            return zuoZhuanStateData.state == ZuoZhuanStateData.State.TurningEND;
        }
        if (iIntValue == 2) {
            return zuoZhuanStateData.state == ZuoZhuanStateData.State.TurningEND || super.isEnd(eVar, examProcessor, bVar);
        }
        return super.isEnd(eVar, examProcessor, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208117.value).booleanValue();
    }
}
