package cn.mucang.android.jiakaoyi.exam.k3.rule.teshuquyu;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TeShuQuYuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TeShuQuYu_Step1 extends BaseFinishEvent<K3TeShuQuYuStepConfig> {
    public K3_TeShuQuYu_Step1(K3TeShuQuYuStepConfig k3TeShuQuYuStepConfig, Deduct deduct) {
        super(k3TeShuQuYuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3TeShuQuYuStepConfig) this.config).p227105.value).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        if (((Boolean) ((K3TeShuQuYuStepConfig) this.config).p227106.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.GeneralChangeLane);
            examProcessor.n.c(ConflictSignal.LianXuBianDao);
        }
        if (((Boolean) ((K3TeShuQuYuStepConfig) this.config).p227108.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressDashLine);
        }
        if (((Boolean) ((K3TeShuQuYuStepConfig) this.config).p227109.value).booleanValue()) {
            examProcessor.n.c(ConflictSignal.PressFullLine);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3TeShuQuYuStepConfig) this.config).p227102;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3TeShuQuYuStepConfig) this.config).p227103.value).booleanValue();
    }
}
