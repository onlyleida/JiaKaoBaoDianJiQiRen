package cn.mucang.android.jiakaoyi.exam.k3.rule.rangxing;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.RangXingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_RangXing_123105_Event extends d<K3RangXingStepConfig> {
    public K3_RangXing_123105_Event(K3RangXingStepConfig k3RangXingStepConfig, Deduct deduct) {
        super(k3RangXingStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.i - bVar.p() < ((Integer) ((K3RangXingStepConfig) this.config).p223115.value).intValue() * 1000 || !((RangXingStepData) bVar.f()).carStop) {
            return !bVar.j();
        }
        setDoNotExecute(true);
        return true;
    }
}
