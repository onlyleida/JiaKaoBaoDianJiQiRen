package cn.mucang.android.jiakaoyi.exam.k3.rule.gongqiao;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;

/* JADX INFO: loaded from: classes2.dex */
public class K3_GongQiao_Step1 extends BaseFinishEvent<K3GongQiaoStepConfig> {
    public K3_GongQiao_Step1(K3GongQiaoStepConfig k3GongQiaoStepConfig, Deduct deduct) {
        super(k3GongQiaoStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3GongQiaoStepConfig) this.config).p220106.value).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3GongQiaoStepConfig) this.config).p220101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3GongQiaoStepConfig) this.config).p220107.value).booleanValue();
    }
}
