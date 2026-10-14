package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.j.a;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122101_Event extends d<K3LinTingStepConfig> {
    private long stopTime;

    public K3_LinTing_122101_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.stopTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3LinTingStepConfig) this.config).p222105.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (a.a()) {
            return true;
        }
        LinTingStepData.State state = ((LinTingStepData) bVar.f()).state;
        if (state == LinTingStepData.State.Stopped) {
            if (this.stopTime == 0) {
                this.stopTime = examProcessor.i;
            }
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.WarningLight);
            if (cVarC != null && cVarC.f5252d > ((Integer) ((K3LinTingStepConfig) this.config).p222107.value).intValue() * 1000 && cVarC.f5251a - this.stopTime < ((Integer) ((K3LinTingStepConfig) this.config).p222106.value).intValue() * 1000) {
                setDoNotExecute(true);
                return true;
            }
        } else if (state == LinTingStepData.State.Start) {
            return false;
        }
        return true;
    }
}
