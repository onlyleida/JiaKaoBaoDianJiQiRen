package cn.mucang.android.jiakaoyi.exam.k3.rule.jinting;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JinTingStepConfig;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JinTing_Step1 extends BaseFinishEvent<K3JinTingStepConfig> {
    public K3_JinTing_Step1(K3JinTingStepConfig k3JinTingStepConfig, Deduct deduct) {
        super(k3JinTingStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3JinTingStepConfig) this.config).p225107.value).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3JinTingStepConfig) this.config).p225101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3JinTingStepConfig) this.config).p225102.value).booleanValue();
    }
}
