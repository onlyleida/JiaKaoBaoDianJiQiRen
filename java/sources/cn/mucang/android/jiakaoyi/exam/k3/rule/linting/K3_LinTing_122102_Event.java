package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122102_Event extends d<K3LinTingStepConfig> {
    private long stoppedTime;

    public K3_LinTing_122102_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.stoppedTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3LinTingStepConfig) this.config).p222108.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        LinTingStepData.State state = ((LinTingStepData) bVar.f()).state;
        if (state == LinTingStepData.State.Stopped) {
            if (this.stoppedTime == 0) {
                this.stoppedTime = eVar.d().L;
            }
            if (eVar.d().L - this.stoppedTime > ((Integer) ((K3LinTingStepConfig) this.config).p222130.value).intValue() * 1000) {
                return false;
            }
            if (!eVar.d().f5268f) {
                setDoNotExecute(true);
                return true;
            }
        } else if (state == LinTingStepData.State.Start) {
            return false;
        }
        return true;
    }
}
