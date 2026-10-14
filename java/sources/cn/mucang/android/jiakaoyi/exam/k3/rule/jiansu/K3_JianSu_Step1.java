package cn.mucang.android.jiakaoyi.exam.k3.rule.jiansu;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JianSuStepConfig;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JianSu_Step1 extends BaseFinishEvent<K3JianSuStepConfig> {
    public K3_JianSu_Step1(K3JianSuStepConfig k3JianSuStepConfig, Deduct deduct) {
        super(k3JianSuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3JianSuStepConfig) this.config).p217107.value).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3JianSuStepConfig) this.config).p217101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3JianSuStepConfig) this.config).p217108.value).booleanValue();
    }
}
