package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122109_Event extends d<K3LinTingStepConfig> {
    public K3_LinTing_122109_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3LinTingStepConfig) this.config).p222116.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!((Boolean) ((K3LinTingStepConfig) this.config).p222116.value).booleanValue()) {
            setDoNotExecute(true);
            return true;
        }
        if (((LinTingStepData) bVar.f()).state != LinTingStepData.State.Start) {
            return true;
        }
        if (!eVar.d().f5268f) {
            return false;
        }
        setDoNotExecute(true);
        return true;
    }
}
