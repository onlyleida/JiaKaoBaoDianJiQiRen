package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103126_Event extends d<K3QiBuStepConfig> {
    private long handbrakeOpenTime;

    public K3_QiBu_103126_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
        this.handbrakeOpenTime = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        boolean z = carModelD.f5268f;
        if (!z) {
            this.handbrakeOpenTime = -1L;
        }
        if (!z) {
            return true;
        }
        if (carModelD.c()) {
            setDoNotExecute(true);
            return true;
        }
        if (this.handbrakeOpenTime == -1) {
            this.handbrakeOpenTime = examProcessor.i;
        }
        return examProcessor.i - this.handbrakeOpenTime <= ((long) (((Integer) ((K3QiBuStepConfig) this.config).p203123.value).intValue() * 1000));
    }
}
