package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_Step1 extends BaseFinishEvent<K3ChaoCheStepConfig> {
    private K3GlobalStepConfig globalStepConfig;
    private boolean reachLeaveDis;

    public K3_ChaoChe_Step1(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.reachLeaveDis = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3ChaoCheStepConfig) this.config).p206117.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        if (!this.isJudgeGlobalSpeed) {
            examProcessor.n.c(ConflictSignal.Speed);
        }
        examProcessor.n.c(ConflictSignal.TurnLight);
        examProcessor.n.c(ConflictSignal.ChangeLane);
        examProcessor.n.c(ConflictSignal.TurnLightError);
        if (this.globalStepConfig == null) {
            this.globalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global);
        }
        if (((Boolean) this.globalStepConfig.p200199.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.LianXuBianDao);
        }
        if (((Boolean) ((K3ChaoCheStepConfig) this.config).p206153.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressDashLine);
        }
        if (((Boolean) ((K3ChaoCheStepConfig) this.config).p206154.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressFullLine);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3ChaoCheStepConfig) this.config).p206101;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001e  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        boolean zIsEnd = false;
        if (((Integer) ((K3ChaoCheStepConfig) this.config).p206116.value).intValue() == 1) {
            if (chaoCheStateData.state == ChaoCheStateData.State.after) {
                zIsEnd = true;
            }
        } else if (((Integer) ((K3ChaoCheStepConfig) this.config).p206116.value).intValue() != 2) {
            zIsEnd = super.isEnd(eVar, examProcessor, bVar);
        } else if (chaoCheStateData.state == ChaoCheStateData.State.after || super.isEnd(eVar, examProcessor, bVar)) {
            zIsEnd = true;
        }
        if (zIsEnd) {
            return true;
        }
        if (this.reachLeaveDis || !chaoCheStateData.isChaoCheDaoIn || !((Boolean) ((K3ChaoCheStepConfig) this.config).p206130.value).booleanValue() || chaoCheStateData.chaoCheDaoInDistance <= BitmapDescriptorFactory.HUE_RED || eVar.d().C - chaoCheStateData.chaoCheDaoInDistance <= ((Integer) ((K3ChaoCheStepConfig) this.config).p206129.value).intValue()) {
            return zIsEnd;
        }
        this.reachLeaveDis = true;
        return !chaoCheStateData.hadTurnRight;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3ChaoCheStepConfig) this.config).p206118.value).booleanValue();
    }
}
