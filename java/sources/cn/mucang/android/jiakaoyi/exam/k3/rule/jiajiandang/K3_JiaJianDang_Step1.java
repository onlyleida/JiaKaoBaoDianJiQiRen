package cn.mucang.android.jiakaoyi.exam.k3.rule.jiajiandang;

import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiaJianDang_Step1 extends BaseFinishEvent<K3JiaJianDangStepConfig> {
    private float startDistance;

    public K3_JiaJianDang_Step1(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct) {
        super(k3JiaJianDangStepConfig, deduct);
        this.startDistance = -1.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected float configDistance() {
        return ((Integer) ((K3JiaJianDangStepConfig) this.config).p212125.value).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.GearSpeedNotMatch);
        examProcessor.n.c(ConflictSignal.YueJiJiaJianDang);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected StringValue finishVoiceTips() {
        return ((K3JiaJianDangStepConfig) this.config).p212101;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean isEnd(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((JiaJianDangStateData) bVar.f()).success && this.startDistance <= BitmapDescriptorFactory.HUE_RED) {
            this.startDistance = eVar.d().C;
        }
        if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212122.value).intValue() == 1) {
            return this.startDistance > BitmapDescriptorFactory.HUE_RED && eVar.d().C - this.startDistance > ((float) ((Integer) ((K3JiaJianDangStepConfig) this.config).p212123.value).intValue());
        }
        if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212122.value).intValue() == 2) {
            return (this.startDistance > BitmapDescriptorFactory.HUE_RED && eVar.d().C - this.startDistance > ((float) ((Integer) ((K3JiaJianDangStepConfig) this.config).p212123.value).intValue())) || super.isEnd(eVar, examProcessor, bVar);
        }
        return super.isEnd(eVar, examProcessor, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.common.BaseFinishEvent
    protected boolean needVoiceTip() {
        return ((Boolean) ((K3JiaJianDangStepConfig) this.config).p212126.value).booleanValue();
    }
}
