package cn.mucang.android.jiakaoyi.exam.k3.rule.rangxing;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.RangXingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_RangXing_123103_Event extends d<K3RangXingStepConfig> {
    private final long minTime;

    public K3_RangXing_123103_Event(K3RangXingStepConfig k3RangXingStepConfig, Deduct deduct) {
        super(k3RangXingStepConfig, deduct);
        this.minTime = 3000L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3RangXingStepConfig) this.config).p223107.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        RangXingStepData rangXingStepData = (RangXingStepData) bVar.f();
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.TurnLeftLight);
        float f2 = eVar.d().b;
        if (!rangXingStepData.hasStop || f2 <= 1.0f || (cVarC != null && cVarC.f5252d != 0)) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
