package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122104_Event extends d<K3LinTingStepConfig> {
    private long stoppedAtTime;

    public K3_LinTing_122104_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.stoppedAtTime = -999999L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        LinTingStepData linTingStepData = (LinTingStepData) bVar.f();
        long j = examProcessor.i;
        LinTingStepData.State state = linTingStepData.state;
        if (state == LinTingStepData.State.Stopped && this.stoppedAtTime == -999999) {
            this.stoppedAtTime = j;
        }
        if (state != LinTingStepData.State.Start) {
            return true;
        }
        setDoNotExecute(true);
        return j - this.stoppedAtTime >= ((long) (((Integer) ((K3LinTingStepConfig) this.config).p222110.value).intValue() * 1000));
    }
}
