package cn.mucang.android.jiakaoyi.exam.k3.rule.school;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.SchoolStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_School_114103_Event extends d<K3SchoolStepConfig> {
    private long carStopStartTime;
    private boolean lastCarStop;

    public K3_School_114103_Event(K3SchoolStepConfig k3SchoolStepConfig, Deduct deduct) {
        super(k3SchoolStepConfig, deduct);
        this.carStopStartTime = 0L;
        this.lastCarStop = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        SchoolStateData schoolStateData = (SchoolStateData) bVar.f();
        if (!schoolStateData.isCheckStopCar) {
            setDoNotExecute(true);
            return true;
        }
        boolean z = schoolStateData.carStop;
        if (bVar.j()) {
            setDoNotExecute(true);
            return false;
        }
        if (z) {
            if (this.carStopStartTime == 0) {
                this.carStopStartTime = examProcessor.i;
            }
            if (examProcessor.i >= this.carStopStartTime + ((long) (((Integer) ((K3SchoolStepConfig) this.config).p214125.value).intValue() * 1000))) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            if (this.carStopStartTime > 0) {
                setDoNotExecute(true);
                return false;
            }
            if (examProcessor.i > schoolStateData.startTime + ((long) (((Integer) ((K3SchoolStepConfig) this.config).p214124.value).intValue() * 1000))) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
