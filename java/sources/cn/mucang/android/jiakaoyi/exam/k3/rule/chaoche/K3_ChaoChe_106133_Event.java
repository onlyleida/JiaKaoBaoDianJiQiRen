package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106133_Event extends d<K3ChaoCheStepConfig> {
    private boolean isDeductPlayAfter;
    private boolean isDeductPlayBefore;

    public K3_ChaoChe_106133_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.isDeductPlayBefore = false;
        this.isDeductPlayAfter = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3ChaoCheStepConfig) this.config).p206107.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (chaoCheStateData.state == ChaoCheStateData.State.chaoCheDao) {
            if (!this.isDeductPlayBefore) {
                long j = chaoCheStateData.chaocheTime;
                if (j > 0 && examProcessor.i - j > ((Integer) ((K3ChaoCheStepConfig) this.config).p206144.value).intValue() * 1000) {
                    this.isDeductPlayBefore = true;
                    return false;
                }
            }
            if (!this.isDeductPlayAfter) {
                long j2 = chaoCheStateData.chaochePlayTime;
                if (j2 > 0 && examProcessor.i - j2 > ((Integer) ((K3ChaoCheStepConfig) this.config).p206155.value).intValue() * 1000) {
                    this.isDeductPlayAfter = true;
                    return false;
                }
            }
        }
        return true;
    }
}
