package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107102_Event extends d<K3HuiCheStepConfig> {
    private static final float Factor = 0.85f;
    private int count;
    private float speed;

    public K3_HuiChe_107102_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
        this.count = 0;
        this.speed = -1.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        HuiCheStepData huiCheStepData = (HuiCheStepData) bVar.f();
        if (this.speed == -1.0f) {
            this.speed = eVar.d().b;
        }
        this.speed = (this.speed * Factor) + (eVar.d().b * 0.14999998f);
        return eVar.d().C - huiCheStepData.startEstimateDistance < ((float) (((Integer) ((K3HuiCheStepConfig) this.config).p207109.value).intValue() * 100)) || this.speed <= ((float) ((Integer) ((K3HuiCheStepConfig) this.config).p207114.value).intValue());
    }
}
