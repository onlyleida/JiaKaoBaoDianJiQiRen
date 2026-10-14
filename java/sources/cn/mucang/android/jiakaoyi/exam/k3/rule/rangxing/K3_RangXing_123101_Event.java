package cn.mucang.android.jiakaoyi.exam.k3.rule.rangxing;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.RangXingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_RangXing_123101_Event extends d<K3RangXingStepConfig> {
    private long stopAtTime;

    public K3_RangXing_123101_Event(K3RangXingStepConfig k3RangXingStepConfig, Deduct deduct) {
        super(k3RangXingStepConfig, deduct);
        this.stopAtTime = -999999L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        RangXingStepData rangXingStepData = (RangXingStepData) bVar.f();
        long j = examProcessor.i;
        if (!rangXingStepData.hasStop) {
            return true;
        }
        if (this.stopAtTime == -999999) {
            this.stopAtTime = j;
        }
        return eVar.d().b <= 1.0f || j - this.stopAtTime >= ((long) (((Integer) ((K3RangXingStepConfig) this.config).p223105.value).intValue() * 1000));
    }
}
